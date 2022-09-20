import UIKit


protocol Naming {
    func getName() -> String
}

protocol Aging {
    func getAge() -> Int
}

typealias Friendable = Naming & Aging //이런식으로 두개 엮어서 한개의 별칭으로 사용하겟다 라는게 typealias

typealias FullNaming = Naming
//
//struct Friend : Friendable {
//
//}


struct Friend : Naming & Aging {

    var name : String
    var age : Int

    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
    
}
//자료형 클래스,스트럭트, 클로저 등 모두 별명설정이 가능함

typealias FriendName = String //자료형

var friendName : String = "정대리"

typealias Friends = [Friend] //배열형

var myFriendsArray : Friends = [] //원래는 [Friend] 형태로 들어가야 하는데 그냥 들어가도 원래의 모습인 배열형태로 넣을 수 있음 (그냥 이름을 바꾸는 개념)

//클로저에서의 사용
typealias StringBlock = (String) -> Void
    print("안녕하세요?")

func sayHi(completion : StringBlock) { //(String) -> Void 을 사용해도 되지만 별칭으로 선언햇기에
        print("안녕하세여")
        completion("오늘도 팍코딩하고게신가요")
    }

sayHi(completion: {saying in
    print("여기서받아요:",saying)
})

//enum에서의 사용

typealias MyType = MyClass.My_Type

class MyClass {
    enum My_Type{
        case DOG
        case CAT
        case BIRD
    }
    var myType = My_Type.DOG
}
var myClass = MyClass()

myClass.myType = MyType.DOG // MyClass.My_Type.DOG 원래는 이렇게 작성해야 하지만 별칭으로 대체가능!
