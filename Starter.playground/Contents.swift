import Foundation
import UIKit

var str = "Hello, playground"

var c: Int? = nil // ? 는 optional 값이 없을수도 있다. 인트일거 같애 느낌.
c = 3

func alpha() {
    guard let a = c else { print("nil"); return }
    print(a)
}

alpha()



//class Person {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func printName() { // 1번
//        print("안녕")
//    }
//}

//class Teacher: Person { // 위 person을 받아서 쓴다
//    var subject: String
//
//    init(name: String, subject: String) {
//        self.subject = subject
//        super.init(name: name)
//
//    }
//    override func printName() { // 1번을 가지고 와 쓸 수 있다 = 덮어쓰기
//        super.printName()
//        print("하세요")
//    }
//}
//
//let person = Person(name: "사람")
//person.name
//person.printName()
//
//let teacher = Teacher(name: "선생님", subject: "코딩")
//teacher.printName()




var number = 8 {
    willSet {                         // 미래 - newValue
        something(newValue: newValue) // 값이 바뀔때마다 출력된다.
    }
}

var number1 = 8 {
    didSet {            // 과거 - oldValue
        print(oldValue) // 새 값이 아니라 바로 전 값을 부른다.
    }
}

number = 10 // 1
number1 = 100 // 2

func something(newValue: Int) {
    let value = newValue + 1000
    print(value) // 1. 1010, 2. 8, 3. 1300, 4. 100 출력
}

number = 300 // 3
number1 = 500 // 4



var greeting = "Hello" // 3. "안녕하세요"로 변경

var value: String {
    get { return "안녕" } //읽기용
    set { greeting = newValue } //쓰기용 2. 새로운 값 인식
}


print(value) // (읽기용 get에 접근) 안녕 출력
value = "안녕하세요" // (쓰기용 1. set에 접근)
print(value) //(읽기용 get에 접근) 안녕 출력
print(greeting) // 4. 안녕하세요 출력

// get은 혼자나 set과 함께 존재할 수 있지만 set은 혼자 존재 못함


enum Fruit { // 2. self가 아는 최대치의 공간(Fruit)을 찾아준다
    case apple
    case banana
    case cherry
    
    func korean() -> String {
        switch self { // <----------- 1. self 사용시
        case .apple:
            return "사과"
        case .banana: // 3. 그 안에 있는 것들 편하게 사용가능
            return "바나나"
        case .cherry:
            return "체리"
        }
    }
}

let myFruit: Fruit = .apple
print(myFruit.korean())


class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}

extension Person {
    func printName() {
        print(name)
    }
}





let array = [1, 2, 3]
print(array[0])
//여기서 0으로 출력가능 한 것이


class ViewController: UIViewController {
    
    let button = UIButton()
    let view1 = UIView()
    let things: [Any] = [["abcd", "efg"]] //<--Any 타입
    let stringArray = ["abcd", "efg"] //<--String 타입
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Int(number)
 
    }
}


























