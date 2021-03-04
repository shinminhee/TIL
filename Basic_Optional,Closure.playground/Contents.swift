import UIKit



//재사용을 하기위해, 기능을 구분짓기 위해, 같은 작업을 여러번 하지 않기 위해


//이름이 있는 클로저를 func이라고 한다
//클로저는 함수다

//펑션

//func add(num1: Int, num2: Int) {
//    print(num1 + num2)
//}
//
//add(num1: 1, num2: 2)

//리턴할때

//() -> Void
//() -> ()



//func weather(temperature: Int) -> Bool {
//    if temperature >= 6 {
//        return true
//    } else { temperature < 3
//        return false
//    }
//}
//
//print(weather(temperature: 4))
//
//func weather(temperature: Int) -> Bool {
//    if temperature >= 6 {
//        return true
//    } else if temperature <= 3 {
//        return false
//    }
//}
//
//print(weather(temperature: 3))
//
////괄호 전에 조건 걸기
//
//--------------------------------------------


func abc(a: Int, b: Int) -> Bool {
    if a == 12 && b == 23 {
        return true
    } else { a == 12 && b == 34
        return false
    }
}

abc(a: 12, b: 34)
print(abc(a: 12, b: 34))

//--------------------------------------------


func say(hi: String) -> Bool {
    return true

}

say(hi: "안녕")

//--------------------------------------------

func korean(num1: String, num2: String) -> Bool {
    return true
}

korean(num1: "가나다", num2: "라마바")








import Foundation

// 6도 이상이면 true, 4도나 5도는 false, 3도 이하일 경우 다시 true
//func weather(temperature: Int) -> Bool {
//    if temperature >= 6 {
//        return true
//    } else if temperature <= 3 {
//        return true
//    } else {
//        return false
//    }
//}
//
//print(weather(temperature: 5))

//--------------------------------------------


//func abc(a: Int, b: Int) -> Bool {
//    if a == 12 && b == 23 {
//        return true
//    } else { a == 12 && b == 34
//        return false
//    }
//}
//
//abc(a: 12, b: 34)
//print(abc(a: 12, b: 34))

// 1: 가나다 2: 가나라 -> False, 1: 마바사 2: 마바사 -> true

func compare(word: String, word2: String) -> Bool {
    if word == word2 { // 워드가 워드2랑 같을 경우
        return true
    }
    return false
}

compare(word: "가나다", word2: "가나라")
compare(word: "마바사", word2: "마바사")

////--------------------------------------------


// 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
func greeting(name: String, age: Int) -> String {
    let nameResult = "안녕하세요. \(name) 입니다."
    let ageResult = " \(age) 살 입니다."
    return nameResult + ageResult
}

print(greeting(name: "신민희", age: 18))

// 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
func calculate(number: Int) -> Bool {
    if number % 2 == 0, number != 0 {
        return true
    } else {
        return false
    }
}


// 정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
func multiply(num1: Int, num2: Int = 10) -> Int {
    let result  = num1 * num2
    return result
}

// 자연수 두 개를 입력받아 첫 번째 수를 두 번째 수만큼 제곱하여 반환하는 함수
func 제곱(num3: Int, num4: Int) -> Int {
    var result = 1
    for _ in 1...num4 {
        result *= num3
    }
    return result
}




                
let dict = ["식육목":
                ["개과":
                        ["개": ["자칼", "늑대", "북미산 이리"],
                         "여우": ["아메리카 여우", "유럽여우"]]
                 , "고양이과":
                        ["고양이": ["고양이", "살쾡이"],
                         "표범": ["사자", "호랑이"]]]]




let any = ["식육목":
                ["개과":
                        ["개": ["자칼", "늑대", "북미산 이리"],
                         "여우": ["아메리카 여우", "유럽여우"]]
                 , "고양이과":
                        ["고양이": ["고양이", "살쾡이"],
                         "표범": ["사자", "호랑이"]]
                ]
]


print(any["식육목"])

















