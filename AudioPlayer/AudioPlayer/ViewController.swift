//
//  ViewController.swift
//  AudioPlayer
//
//  Created by 이지훈 on 2022/08/09.
//

import UIKit
import AVFoundation //애플 네이티브 sdk제공


class ViewController: UIViewController, AVAudioPlayerDelegate {

    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var sliderSeek: UISlider!
    @IBOutlet weak var labelCurrentTime: UILabel!
    @IBOutlet weak var labelEndTime: UILabel!
    @IBOutlet weak var btnPlay: UIButton!
    @IBOutlet weak var btnpause: UIButton!
    @IBOutlet weak var btnStop: UIButton!
    @IBOutlet weak var sliderVolume: UISlider!
   
    
    var audioPlayer : AVAudioPlayer! //애플기본제공
    var audioFile : URL!
    var timer: Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        selectAudioFile()
        initPlayer()
    }

    func selectAudioFile(){
        audioFile = Bundle.main.url(forResource: "music", withExtension: "mp3"/*확장자*/)
    }
    
    func initPlayer(){
        do{                 //오류날까봐 캐치사용
            audioPlayer = try AVAudioPlayer(contentsOf: audioFile)
        } catch let error as NSError {
            print("error init Player", error)
        }
        
        audioPlayer.delegate = self
        audioPlayer.prepareToPlay() //메모리에 음원을 넣어줌. 버퍼링을 통해 바로 재생할수있게 해줌
        audioPlayer.volume = 10.0
        
        labelCurrentTime.text = "00.00"        //현재 재생시간
        let min = Int(audioPlayer.duration / 60)
        let sec = Int(audioPlayer.duration) % 60
        labelEndTime.text = "\(min):\(sec)" // 총 재생시간
        
        //UI초기화
        sliderVolume.maximumValue = 10.0
        sliderVolume.value = 10
        progressView.progress = 0
        btnPlay.isEnabled = true
        btnpause.isEnabled = false
        btnStop.isEnabled = false
        
        sliderSeek.maximumValue = Float(audioPlayer.duration)
        sliderSeek.value = 0
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(callbackTimer), userInfo: nil, repeats: true)
        
    }
    //  타이머 콜백함수
    @objc func callbackTimer() {
let min = Int(audioPlayer.duration / 60)
        let sec = Int(audioPlayer.duration) % 60
        labelEndTime.text = "\(min):\(sec)" // 현재 재생시간
    
        progressView.progress = Float(audioPlayer.currentTime / audioPlayer.duration)
    }
    

    @IBAction func onBtnPlay(_ sender: UIButton) {
        audioPlayer.play()
        
        btnPlay.isEnabled = false
        btnpause.isEnabled = true
        btnStop.isEnabled = true
    }
    
    @IBAction func onbtnPause(_ sender: Any) {
        audioPlayer.pause()
        btnPlay.isEnabled = true
        btnpause.isEnabled = false
        btnStop.isEnabled = false
    }
    
    @IBAction func onBtnStop(_ sender: Any) {
        audioPlayer.stop()
        
        audioPlayer = nil
        initPlayer()
        btnPlay.isEnabled = true
        btnpause.isEnabled = false
        btnStop.isEnabled = false
    }
    @IBAction func onSliderVolume(_ sender: UISlider) {
        audioPlayer.volume = sliderVolume.value

    }
    @IBAction func onSliderseekup(_ sender: UISlider) {
        audioPlayer.currentTime = Double(sender.value)
        
        audioPlayer.play()
        
        progressView.progress =
        Float(audioPlayer.currentTime/audioPlayer.duration)
    
    }
    
}

