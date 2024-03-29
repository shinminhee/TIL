# TIL
today I learned...

---

2020.12.22 - Git

---

2020.12.23 
 #Operator Basics
   연산자 기초 이론

  - Arithmetic Operators
        사칙연산과 나머지 연산에 사용하는 산술 연산자
      
   - Overflow Operators
        값오버플로우가 무엇인지, 그리고 오버플로우 연산자를 사용해서 오버플로우를 허용할 때 값이 어떻게 변경되는지
        
   - Comparison Operators
        값이 동일성과 크기를 비교하는 방법
        
   - Logical Operators
        참과 거짓을 구분하는 논리 연산
        
   - Ternary Conditional Operator
        조건을 판단한 후 실행할 코드를 결정하는 조건 연산자에 대해 
        
   - Short-circuit Evaluation, Side Effect
        논리 연산자가 논리식을 평가하는 방법
        
   - Bitwise Operators
        비트를 직접 다루는 비트 연산자, 논리 시프트와 산술 시프트의 차이
        
   - Assignment Operators
        값을 저장하는데 사용하는 할당 연산자와 복합 할당 연산자
        **var** a = 1

        **for** **_** **in** 1...3 {

        **let** b = 2

        a += b

        }

        print(a)   // 스코프 안에서 다 돌고 마지막 수가 7

        **for** **_** **in** 1...3 {

        **let** b = 2

        a -= b

        }

        print(a) // 스코프 안에서 다 돌고 마지막 수 -5
   - Range Operators
        범위 연산자를 통해서 범위를 표현하는 방법
        
   - Operator Methods
        기존 연산자가 새로운 형식을 지원하도록 확장 하는 방법
        
   - Custom Operators
        Swift가 제공하지 않는 새로운 연산자를 직접 구현하는 방법

#Conditional Statements
조건문을 사용해서 조건에 따라 실행할 코드를 선택하는 방법에 대해 공부

   - if Statement
        조건을 판단한 후 실행할 코드를 결정하는 if 조건문
        **var** a = 2

        **if** a != 1 {

        print("A 는 1이 아님") // 여기서 출력되면 끝

        } **else** **if** a == 1 {

        print(a)

        } **else** **if** a == 1 {

        print("else")

        } **else** {

        print("else")

        }
        
   - switch Statement
        switch 문에서 값을 매칭시키고 실행할 코드를 결정하는 방법
        var a = 2

        **switch** a {

        **case** 0:

        print("case")

        **case** 1:

        print("case1")

        **case** 2:

        print("case2")

        **default**:

        print("case default")

        }
        
  -  guard Statement
        guard 문을 활용해서 Early Exit 패턴을 구현하는 방법에 대해 공부하고, 동일한 코드를 if 문과 guard 문으로 구현하고 차이점을 비교
        **let** b = 1

        **func** add() {

        **guard** a < b **else** {

        **return** }

        print(a + b)

        }

        add()

        //트루일때 실행이 되고 폴스면 리턴이 된다._아무것도 뜨지 않음

        **func** add1() {

        **if** a > b {

        print("return")

        **return**

        }

        print(a + b)

        }

        add()

        #Nil 

        **var** c: Int? = **nil** // ? 는 optional 값이 없을수도 있다. 인트일거 같애 느낌.

        c = 3

        print(c) // optional(3)이 뜬다.

        혹은

        **if** **let** a = c {     // 이때 let a 는 nil의 값을 가져오지 못한다.

        print(a)

        } **else** {

        print("nil")

        } // 3으로 출력된다.

        - 가드문으로 3을 출력하는 경우

            **func** alpha() {

            **guard** **let** a = c **else** { print("nil"); **return** }

            print(a)

            }

            alpha()
        
   - Value Binding Pattern
        switch 문에서 활용할 수 있는 Value Binding Pattern에 대해 
        
   - Expression Pattern
        직접 구현한 형식에 대해 패턴 매칭을 적용하는 방법

#Loop Statements
반복문을 통해 코드를 반복해서 실행하는 방법에 대해 

   - for-in Loop
        for-in 반복문을 통해 지정된 횟수만큼 코드를 반복하고 컬렉션을 열거하는 방법
        **for** **_** **in** 1 ... 5 {

        print("hello")

        }

        // 위에 경고가 뜨는 이유는 인덱스가 인트 즉 숫자여야 하는데 헬로라는 스트링이라서 뜬다 그래서 인덱스 부분을 언더바로 변경해준다, 이걸 와일드카드 패턴이라고 함
        //포인반복문은 지정된 범위만큼 반복하거나 컬렉션을 열거할 수있다
        //포인반복문은 얼마든지 중첩해서 쓸수있다.

   - while Loop
        조건에 따라 코드를 반복하는 방법
        **var** num = 100

        **while** num < 100 {

        num += 1

        }

        num

        num = 100

        **repeat** {

        num += 1

        } **while** num < 100

        num

        //조건을 먼저 판단 해야되면 와일문 사용

        //코드를 먼저 실행 해야되면 리핏문 사용

        //반복문에 무한 루프에 빠지지 않도록 특정시점에서 폴스로 빠지는지 무조건 확인해야 한다

---

2020.12.24
#About Terminal 
    - ls : list
    - mkdir : make directory 폴더 만들기
    - cd : change 폴더 바꾼다/들어간다
    - . 은 폴더 / cd .. 뒤로가기 cd . 현재폴더 / git add . 변경사항 모두 추가해주는 것
    - touch text 파일 만들때
    - check out 주소 상태를 바꿈
    - ^ 하나 이전상태로
    - HEAD 위치를 나타내줌
    - cd 최상위 폴더로 갈때
    - q 빠져나올때
    - .md mark down

---

2020.12.25
#Break, Continue

    **for** index **in** 1...100 {
    
    print("start")
    
    **if** index < 5 {
    
    **continue**
    
    }
    
    **if** index > 10 {
    
    **break**
    
    }
    
    print("end")
    
    }

#CONTINUE

    //다음 회차 반복으로 문장 전달
    
    //반복문에서만 사용 포인이나 와일
    
    **for** index **in** 1...10 {
    
    **if** index % 2 == 0 {
    
    **continue**
    
    }
    
    print(index)
    
    }
    
    //현재 반복을 종료하고 다음 반복을 사용한다
    
    **for** i **in** 1...10 {
    
    print("OUTER LOOP", i)
    
    **for** j **in** 1...10 {
    
    **if** j % 2 == 0 {
    
    **continue**
    
    }
    
    print("inner loop", j)
    
    }
    
    }

#BREAK

    //반복문과 스위치 문에서 사용
    
    **let** num = 2
    
    **switch** num {
    
    **case** 1...10:
    
    print("begin block")
    
    **if** num % 2 != 0 {   //홀수인지 확인
    
    **break**      //스위치 문을 종료한 다음 제어를 이어지는 코드로 전달한다.
    
    }
    
    print("end block")
    
    **default**:
    
    **break**
    
    }
    
    print("done")
    
    **for** index **in** 1...10 {
    
    print(index)
    
    **if** index > 1 {
    
    **break**
    
    }
    
    }
    
    **for** i **in** 1...10 {
    
    print("OUTER LOOP", i)   //인접하지 않음
    
    **for** j **in** 1...10 {
    
    print("inner loop", j) //인접한 반복문
    
    **if** j > 1 {
    
    **break**   //인접한 반복문반 해당
    
    }
    
    }
    
    }
    
    //브레이크는 문자를 중지한다
    
    //문장이 중첩되어 있을떄 가장 인접한 문장을 중지한다

---

2020.12.26
#LABELED STATEMENT

    //문장의 이름 붙이기
    
    //반복문 이프문 스위치문
    
    outer: **for** i **in** 1...3 {
    
    print("OUTER LOOP", i)
    
    **for** j **in** 1...3 {
    
    print("inner loop", j)
    
    **break** outer



    }

---

2020.12.27
#TUPLE

    #**Tuples**
    
    **튜플을 통해 두 개 이상의 값을 하나의 값으로 묶어서 처리하는 방법에 대해 공부합니다.**
    
    - 두 개 이상의 값을 저장하는 Compound Type인 튜플에 대해 공부합니다. 
    
    //괄호하고 나열하면 끝
    
    let date = ("<html>", 200, "OK", 12.34)
    
    - Named Tuples
    튜플 멤버에 이름을 붙여서 가독성을 높이는 방법에 대해 공부합니다.
    
    - Tuple Decomposition
    튜플에 저장된 멤버를 개별 상수나 개별 변수에 저장하는 방법에 대해 공부합니다.
    
    -Tuple Matching
    switch 문을 활용해서 튜플에 저장된 값을 매칭시키는 방법에 대해 공부합니다.

---

2020.12.28
#**Optionals**

    **let** str: String = "Swift"
    
    **let** optionalStr: String? = **nil**
    
    **let** a: Int? = **nil**
    
    **let** b = a
    
    b
    
    //넌 옵셔널 타입은 항상 값을 가져야 한다
    
    //옵셔널 타입은 값을 가지지 않아도 된다 그때 물음표 붙여줘야한다

---
2020.12.29
#Array
    -Accessing Elements

    **let** fruits = ["Apple", "Banana", "Melon"]
    
        //0        1        2
    
    fruits[0]
    
    //fruits[3]
    
    fruits[2]
    
    //범위를 전달할때
    
    fruits[0...1]
    
    //잘못된 인덱스와 잘못된 범위를 전달하면 오류남 주의하기
    
    fruits[fruits.startIndex] // == fruits[0] 같다
    
    //fruits[fruits.endIndex] //엔드 인덱스는 마지막 인덱스 다음 즉 멜론 다음
    
    fruits[fruits.index(before: fruits.endIndex)] //이렇게 마지막 요소에 접근해야 함
    
    fruits.first //이때 배열이 비어 있으면 닐을 리턴한다
    
    fruits.last
    
    emptyArray.first
    
    emptyArray.last //밑에서와 같이 서브 스크립트로 사용할때보다 이렇게 사용하면 안전함과 코드가 단순함
    
    //서브 스크립트르 썼을때와는 어떤차이 첨이 있나? 밑에서 확인
    
    //emptyArray[0] //배열이 비어있는 경우 오류


​    
---

2020.12.30
#func 문제

    -import Foundation
    
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
        for _ in 1…num4 {
            result *= num3
        }
        return result
    }

---

2020.12.31
#CLOSURE


    let c = { print("Hello, Swift") }
    c()
    
    let c2 = { (str: String) -> String in
        return "Hello, \(str)"
    }
    
    let result = c2("Closure")
    print(result)
    //클로저를 호출할떄 아규먼트 레이블 사용 안함


    typealias SimpleStringClosure = (String) -> String
    
    func perform(closure: SimpleStringClosure) {
        print(closure("iOS"))
    }
    
    perform(closure: c2)
    
    perform(closure: { (str: String) -> String in
        return "Hi, \(str)"
    })

---
2021.01.01
#Enumerations

    //케이스 이름은 로우 카멜 케이스로
    //여러가지 하고싶으면 콤마로 나열
    
    enum Aligment {
        case left
        case right
        case canter
    }
    
    Aligment.canter
    
    var textAligment = Aligment.canter
    
    //열거형은 독립적인 값이다
    
    textAligment = .left //열거형 이름은 생략해도 되지만 점은 빼면 안된다
    
    //센터가 저장됐는지 확인할떄
    if textAligment == .canter {
        print("center")


​        
​    }
​    switch textAligment {
​    case .left:
​        print("left")
​    case .right:
​        print("right")
​    case .canter:
​        print("center")
​    }

---

2021.01.02
#Strings and Characters

    - let s = "String"


    let c: Character = "C"
    
    let emptyChar: Character = " " //캐릭터에서는 공백 추가해야 오류안 뜸
    
    let emptyString = "" //큰따옴표 사이에 공간이 있으면 빈 문자 아니고 공간이 없어야 빈 문자이다
    emptyString.count
    
    let emptyString2 = String() //문자열로 빈문자 생성가능

---

2021.01.03
#Structure

    //객체-클래스 //값-구조체
    
    struct Person {
        var name: String
        var age: Int
        
        func speak() {
            print("Hello")
        }
    }
    
    let p = Person(name: "Steve", age: 50)
    
    let name = "Paul"
    name
    
    p.name
    p.age
    
    p.speak()
    
    //함수와 메소드를 구분하는 방법을 함수는 이름만 메소드는 인스턴스를 호출해야한다
    
    ---

2021.01.04
  #Class

    class Person {
    var name = "John Doe"
    var age = 0
        
        func speak() {
            print("Hello")
        }
    }
    
    let p = Person()
    
    p.age
    p.name
    p.speak()


    //새로운 형식을 만들때 사용한다

---

2021.01.05
#Instance Method

    //메소드는 특정형식에 속한 함수
    //클래스 열거형 구조체?
    //함소와 차이점은 함소는 함수이름으로 메소드는 인스턴스 이름으로
    
    class Sample {
        var date = 0
        static var shareDate = 123
        
        func dosomething() {
            print(date)
            Sample.shareDate //인스턴스 멤버에서 타입멤버로 접근할때는 이렇게 형식이름을 통해 접근해야한다
        }
        
        func call() {
            dosomething()
        }
    }
    
    let a = Sample()
    a.date
    a.dosomething() //메소드는 반드시 인스턴스 이름으로 호출해야한다

---

2021.01.06
#Inheritance

    class Rectangle: Figure { // 위에 클래스 상속 받음
        var width = 0.0       // final을 붙이면 상속이 금지된다
        var height = 0.0      // 이것이 다른 클래스 상속은 가능, 다른 클래스가 이것 상속 금지
    }
    
    class Square: Rectangle { // 상속 받음
    }

---

2021.01.07
#extention

    struct Size {
        var width = 0.0
        var height = 0.0
    }
    
    extension Size {
        var area: Double {
            return width * height
        }
    }
    
    let s = Size()
    s.area // 익스텐션으로 추가했지만 다른 것과 차이가 없다
    s.height
    s.width
    
    ---

2021.01.08
    HelloXcode / HelloWorld / Hello Interface Builder / Outlet And Action / Delegate Pattern
    
    ---

2021.01.09
    View & Window -  Overview / UIView /  UIControl & Target-Action / Button - Text Button / Image Button 

---

2021.01.10

View & Window 
    Activity Indicator View 
    - 프로그램 완료 시점을 모를때 사용 ex) 부팅중
    - 보통 멈춰있지 않고 애니메이션 사용
    Progress View
    - 프로그램 완료 시점을 알때 사용
    
2021.01.11

- Picker View
    - Text Picker
    - image picker
- stack view
    - axis 가로세로
    - disitribution
    - aligmnent
        - 엑시스로 설정된 축과 직각을 이루는 축에서 뷰를 어떤 방식으로 정렬할지 결정한다
        - 엑시스가 호리즌탈로 설정되어 있으면 수직정렬방식을 설정하고
        - 버티클로 설정되어 있으면 수평정렬방식으로 설정한다
    - spacing
    - arrangedsubview
        -어레인지드 서브뷰에 속한 뷰는 스텍뷰가 가진 배치 속성에 영향을 받지만 서브뷰에 속한 속성은 영향을 받지 않는다.
---

2021.01.12

- Alert Control
    - Alert view controller
    - 경고창에 text field 추가
    - action sheet
        - 아래쪽에서 창이 뜨고 캔슬 버튼은 따로 뜬다
        - 아이패드 설정시에는 기준이 되는 뷰나 프레임을 설정해야 한다
---

2021.01.13

# sender 예
    if sender.tag == 1 {
        print(present(secondVC, animated: true, completion: nil))
    } else if sender.tag == 2 {
        print(present(thridVC, animated: true, completion: nil))
    } else if sender.tag == 3 {
        print(present(fourthVC, animated: true, completion: nil))
    }

- 버튼 눌러 페이지 넘기기
- UIButton 사용

---

2021.01.14

#imageview

override func viewDidLoad() {
    super.viewDidLoad()
    
    imageView.animationImages = images 
    
    imageView.animationDuration = 1.0 // 시간 속성
    imageView.animationRepeatCount = 3 // 반복설정

---

2021.01.15

#imageview
    - Image Basice
    - Image Resizable & Vector Images
    - Template Image
    - Custom Drawing and Resizing
    - Color Basics
    - Pattern Color, Color Literal, Color Set
    
---

2021.01.16

#Label 
    - Single-line Label 
    - Multi-line Label
    - Text Field
    - Text View
    - Text Input Traits
    - Software Keyboard

---

2021.01.17

- Text Delegates
- Input View & Input Accessory View
- Password AutoFill
- Date picker mode
- CountDownTimer
- date formatter
- Custom Format
- Relative Date Formatting
- Symbols
- Date String Parsing
- ISO8601DateFormatter
- DateIntervalFormatter

---

2021.01.18

#Table View
    - Table View Overview
    - Multi Section
    - Separator
    - Table View Cell
    - Accessory View
    - Self Sizing Cell
    - Custom Cell
    - Customizing Section
    - Section Index Title
    -Table Header View & Footer View
    
---

2021.01.19

- Managing Selection
- Edit Mode
- Row Action & Swipe Action
- Reordering Cells
- Prefetching API
- Table View Controller & Static Cells

---

2021.01.20

- tableView
- alert
- Cell
- 중국집 과제
    let menu = UILabel()
    let totalprice = UILabel()

    let tableView = UITableView()
    var price = ["6000원", "8000원", "9000원"]
    let food = ["짜장면", "짬뽕", "볶음밥"]
    let button1 = UIButton()
    let button2 = UIButton()

    let alert = UIAlertController(title: "내 지갑", message: "얼마를 갖고 있나요?", preferredStyle: .alert)
    let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
    
    ---
    
    2021.01.21

#Collection View

- Collection View Overview
- Flow Layout
- Collection View Cell
- Supplementary View
- Managing the Selection
- Edit Rows and Sections

---

2021.01.22

#Collection View

Edit Rows and Sections
Reordering Items (Interactive Movement)
Cell Prefetching & Data Prefetching

---

2021.01.23

#Animation

- UIView Animation
- Spring Animation & Keyframe Animation
- Property Animator
- Motion Effect
- View Transition

---

2021.01.24

#Animation

- View Controller Presentation 
- Custom Presentation
- Custom Transition
- Interactive Transition 

---

2021.01.25

#Auto Layout

- Auto Layout Overview  
- Frame-based Layout & Autoresizing Mask 
- Auto Layout Interface Builder Technique  
- Constraint #1  
- Layout Margins & Layout Guides 
- Constraints with Code

---

2021.01.26

#Auto Layout

- Debugging Auto Layout

#Auto Layout

- Custom Presentation 
- Custom Transition


---

2021.01.27

#도미노앱 과제
- TableView
- tableviewCell
- delegate
- tabBar
- navigationController

---
2021.01.28

#도미노앱 과제2
 - tableViewCell
 - NSLayoutConstraint
 - tableView.delegate = self 중요 중요

---

2021.01.29

- View Controller Overview
- View Management
- View Controller Life Cycle
- Orientation and Rotation
- Container View Controller

---

2021.01.30

- Navigation Controller Overview 
- Navigation Item and Navigation Bar 
- Customizing Navigation Controller 
- Navigation Controller with Toolbar 
- Tab Bar Controller 

---

2021.01.31

- Split View Controller
- Customizing Split View Controller
- Storyboard and Storyboard Reference
- Adaptive Segue


---

2021.02.01

- 도미노 앱 수정
- Custom Segue
- Status Bar and Home Indicator

---

2021.02.02

- 도미노 앱
    - delegate
    - alert
    - tabBatButton

---

2021.02.03

- 중국집 앱
    - alert
    - table view
    - stepper
    - button

---

2021.02.04

- 중국집 앱
 - switch문
 - delegate

---
 2021.02.05

 #Notification
 -  Notification Overview 
 - Notification Center and Notification 
 - Local Notification 

---
 2021.02.06

- Local Notification  
- Custom Notification Sound and Attachments 
- Actionable Notification

---
2021.02.08

#로그인앱
    - 애니메이션
    - 노티피케이션
    - 텍스트필드
    
---
2021.02.09
 #로그인앱
    - 델리게이트
    - 프레임
    - 오토레이아웃
    
---
2021.02.10

#로그인앱3
 - 글자수 제한 델리게이트
 - 아이디 델리게이트

---
 2021.02.11

 #애니메이션 로그인앱
 - 애니메이션
 - 텍스트필드

---
 2021.02.12

 #애니메이션 로그인앱2
 - 버튼
 - 델리게이션(글자 수 제한)

---
 2021.02.13

 #애니메이션 로그인앱3
 - 네비게이션
 - 레이블

---
 2021.02.14

 #애니메이션 로그인앱4
    - 레이블 위치 애니메이션
    - placeholder
    
---
2021.02.15

#로그인앱4
- 회원가입 제한

#애니메이션 로그인앱5

---
2021.02.16

#드림플러스 스터디
- 애니메이션 로그인앱

---
2021.02.17
#Gesture Recognizers

- Gesture Recognizers Overview
- Tap Gesture 
- Pinch Gesture

---
2021.02.18
#애니메이션 로그인앱5
- 인디케이터
- 레이블이동

---
2021.02.19
#중국집앱 1

-오토레이아웃
-alert

---
2021.02.20
#중국집앱
- if문
- switch

---
2021.02.21
#중국집앱3
- button
- alert
- 초기화

---
2021.02.22
#Color Button
- init (Custom Button)

---
2021.02.23

#드림플러스 스터디
- git

---

2021.02.24
#드림플러스 스터디

- 기념일 앱 회의

---

2021.02.25

#기념일 앱

- 앨범 접근

- DatePicker

  ---

  2021.02.26

  #기념일 앱

  - 뱃지
  - alert

---

2021.02.27

#기념일 앱4

- [x]  버튼 이미지 추가
- [ ]  설정창 테이블뷰
- [x]  Navigation / TabBar 경계선
- [x]  Navigation / TabBar 타이틀, 이미지 추가
- [x]  배경화면 그라데이션
- [x]  Alert
- [x]  날짜 선택하면 Label에 날짜 입력
- [x]  Button에 기본 이미지 추가

---

2021.02.28

#기념일 앱5

- [x]  레이블 누르면 뷰 뜨는것
- [x]  테이블뷰 셀 누르면 뷰 뜨는것
- [x]  앨범사진 추가
- [x]  디데이 계산 - 준하
- [ ]  레이블 깔끔하게 정리
- [x]  코드 정리

---

2021.03.01

#기념일 앱6

- [x]  Button에 앨범 이미지 추가
- [x]  테이블뷰 셀 누르면 뷰 뜨는 것
- [x]  앨범사진 추가
- [x]  디데이 계산

---

2021.03.02

#드림플러스 스터디

- 기념일앱 질문하기

---

2021.03.03

#기념일앱 깃헙

---

2021.03.04

#드림플러스 스터디

- Json

---

2021.03.05

#기념일앱 

- 앨범 이미지 따로 저장
- 테이블뷰 데이터 메인뷰로 부르기

---

2021.03.06

#Kxcoding

- Network Overview
- Displaying Web Contents
- App Transport Security
- JSON
- URL Loading System

---

2021.03.07

#송스터디 network 강의 참고

- Url / json
- App Transport Security

---

2021.03.08

#kxcoding

- Cellular Connection
- Adaptable Connectivity
- Sending POST Requests 

---

2021.03.09

#드림플러스 스터디

- 2차 프로젝트 회의
- Network 

---

2021.03.10

#노션 정리

- 중국집, 도미노, 로그인, 컬러버튼 앱 코드 및 영상 저장

---

2021.03.11

#드림플러스 스터디

- 제네릭
- 모나드 ( 옵셔널이다, flatMap을 사용할수 있다)

---

2021.03.12

#두번째 프로젝트 

- 날씨 불러오기 
- 일정 저장하기

---

2021.03.13

#스케줄 앱

- 날짜 추가 (년월일)
- 일정버튼

---

2021.03.14

#스케줄 앱

- 뷰 세개추가(옷추천, 시간, 날씨)
- 옷 이미지 추가
- 테이블뷰 날씨 지역별 불러오기 함

---

2021.03.15

#깃헙

- 레포 만들어서 올림
- 스케줄페이지 

2021.03.16

#드림플러스

- 뉴스, 주식 옮기기
- 위치 설정 
- 디자인 설정

---

2021.03.17

#swift 문법

- 교재

# userdefault

---

2021.03.18

#드림플러스 스터디

#스케줄앱

- 변경사항 수정
- 로딩 페이지 추가

2021.03.19

#스케줄앱

- 쇼핑창 추가
- 테이블뷰 데이터 변경
- 드레스뷰 버튼 변경

#kxcoding 강의 보기

---

2021.03.20

#스코페2021

- 코딩테스트

#Kxcoding

- 타이머

---

2021.03.21

#Concurrency

- Timer & Runloop
- Concurrency Programming in iOS
- Operation & Operation Queue

---

2021.03.22

#Concurrency

- GCD #1 - Grand Central Dispatch
- GCD #2 - DispatchWorkItem, DispatchSourceTimer
- GCD #3 - DispatchGroup, DispatchSemaphore
- GCD #4 - GCD in Action

---

2021.03.23

#Concurrency

- Interoperation Dependencies

#swift 문법

- 교재

---

2021.03.24

#드림플러스 스터디

- 세번째 프로젝트 회의
  - 주제 선정
  - 원하는 기능 추가

---

2021.03.25

#개인앱(붕세권 따라만들기)

- MapView
- SearchBar(위치)
- tabBar/Navigation

---

2021.03.26

#개인앱2

- collectionView
- tableView
- MapKit

---

2021.03.27

#개인앱3

- 컬렉션뷰
- 레이블

---

2021.03.28

#개인앱4

#@escaping

---

2021.03.29

#드림플러스 스터디

#closure

---

2021.03.30

#개인앱5

- collectionView
- tableView
- navigationBar

---

2021.03.31

#드림플러스 스터디

- 데이터베이스

---

2021.04.01

#개인앱6

- MapKit
- 구글 로그인 

---

2021.04.02

#개인앱7

- 네이버맵
- 위치

---

2021.04.03

#개인앱8

- settingView 수정
- personalvView 수정

---

2021.04.04

#개인앱9

- 가게 등록 테이블뷰
- 가게 등록 컬렉션뷰

---

2021.04.05

#드림플러스 스터디

- Q&A
- 카카오 주소 맵 연결

---

2021.04.06

#개인앱10

- NSAttributedString
- 테이블뷰에 컬렉션뷰

---

2021.04.07

#드림플러스 스터디

- 스크롤뷰

#개인앱11

- 로그인 후 닉네임 설정
- 닉네임 중복 불가

---

2021.04.08

#개인앱12

- 화면 동시에 dismiss
- 맵 위치 설정
- 테이블뷰 겹치지 않게

---

2021.04.09

#개인앱13

- 테이블뷰 펼치기
- PersonalVC 레이블 바꿔보기

---

2021.04.10

#kxcoding

- data

#개인앱14

- mapView 아이폰 연결

---

2021.04.11

#노션

- 테이블뷰 / 컬렉션뷰
- 코코아팟

---

2021.04.12

#드림플러스 스터디

- 스크롤뷰

#개인앱

- 지도 현위치

---

2021.04.13

#개인앱16

- Delegate
- 맵뷰 레이블

---

2021.04.14

#개인앱17

- 테이블뷰 데이터 전송
  - 지도 위치, 이름, 버튼, 내용
  - 컬렉션뷰

---

2021.04.15

#개인앱18

- 타입캐스팅
- 설정 위치 저장

---

2021.04.16

#드림플러스 스터디

- 데이터 저장

---

2021.04.17

#LocationApp

- 맵 레이블 테이블뷰로 올림
- 테이블뷰 레이블 다른 뷰로 전달

---

2021.04.18

#LocationApp

- 데이터 전달
- 맵 위치 저장

---

2021.04.19

#드림프러스 스터디

- delegate

#LocationApp

- 현재 위치 

---

2021.04.20

#LocationApp

- 텍스트필드 전달
- 지도 위치 레이블
- 컬렉션뷰

---

2021.04.21

#드림플러스 스터디

- Trouble Shooting

---

2021.04.22

#LocationAPP

- 맵 위치 설정
- personnalVC 레이블 다시 설정
- init

---

2021.04.23

#LocationApp

- view에 animation 뜨게하기
  - personalView
  - VC
  - storeView

---

2021.04.24

#LocationApp

- 위치
- 전송
- init

---

2021.04.25

#LocationApp

- 로그인 데이타

---

2021.04.26

#드림플러스

- 출시 앱 회의
- 커스텀텝바

---

2021.04.27

#custom Tapbar

- 컬렉션뷰
- 뷰

---

2021.04.28

#드림플러스 스터디

- 게임앱 회의
- 게임 정하기

---

2021.04.29

#게임앱

- Label
- View

---

2021.04.30

#게임앱

- 싱글톤 
- 컬렉션뷰

---

2021.05.01

#게임앱

- 초성퀴즈
- 회전애니메이션

---

2021.05.02

#게임앱

- 넘기기
- 주제별 단어

---

2021.05.03

#게임앱

- 라이어게임

#드림플러스 스터디

- 정규표현식

---

2021.05.04

#게임앱

- 퀴즈초성뷰

---

2021.05.05

#미니게임

- 이미지도안
- 뷰 설정

---

2021.05.06

#미니게임

- 단어추가
- 이미지설정

---

2021.05.07

#미니게임

- 이미지변경
- 버튼 추가
- 버튼 변경 
- 이미지변경

---

2021.05.08

#미니게임

- 초성퀴즈 수정
- 뷰 수정
- 타이머 

---

2021.05.09

#미니게임

- 레이블 뷰 레이아웃 수정

---

2021.05.10

#드림플러스 스터디

- font수정
- Gif 파일
- tableView

---

2021.05.11

#미니게임

- 디자인수정
- gif파일추가
- font변경
- View 수정

---

2021.05.12

#미니게임

- 레이블 위치 수정
- 애니메이션

---

2021.05.13

#미니게임

- 라이어뷰 종이 애니메이션 
- 타이머 이미지 구현
- 아이콘 디자인
- 미니게임뷰 디자인 수정

---

2021.05.14

#미니게임

- 키보드 내리기
- 레이아웃 수정

---

2021.05.15

#미니게임

- 색 비교
- 버튼 수정

---

2021.05.16

#미니게임

- 키보드 없애기
- 텍스트 수정

---

2021.05.17

#미니게임

- 타이머종료
- 스파이게임

---

2021.05.18

#미니게임

- 코드정리
- 키보드버튼

---

2021.05.19

#미니게임

- 앱제출

---

2021.05.20

#스타벅스

- 메인뷰

---

2021.05.21

#스타벅스

- 테이블뷰

---

2021.05.22

#스타벅스

- 탭바
- 네비게이션

---

2021.05.23

#스타벅스

- 그라데이션
- 테이블뷰셀 에러

---

2021.05.24

#드림플러스 스터디

- 스타벅스앱 계획짜기
- 파이어베이스

---

2021.05.25

#스타벅스

- 테이블뷰
- 컬렉션뷰

---

2021.05.27

#드림플러스 스터디

- 스타벅스 Q&A
- tableView Header

---

2021.05.28

#Bosegwon

- 도면
- 네이버뷰
- 카카오맵

---

2021.05.29

#Bosegwon

- 구글 로그인 

---

2021.05.30

#스위프트 프로그래밍

- 데이터타입기본

---

2021.05.31

#드림플러스 스터디

- 오늘의집 
- 스크롤바
- 헤더

---

2021.06.01

#오늘의집

- 상단바 
- 네비게이션 이동

---

2021.06.02

#미니게임

- 게임추가

#드림플러스 스터디

- 오늘의집 바 

---

2021.06.03

#오늘의집

- 테이블뷰
- 텝바 버튼

---

2021.06.04

#오늘의집

- 테이블뷰 헤더에 버튼 or 셀에 뷰
- 지도뷰

---

2021.06.05

#오늘의집

- 같은 뷰에서 뷰 넘어가게

---

2021.06.06

#미니게임

- 이미지 추가
- 키워드 추가

---

2021.06.07

#오늘의집

- 커스텀텝바
- 구역 나누기

#드림플러스 스터디

- 테이블뷰헤더

---

2021.06.08

#오늘의집

- 커스텀텝바 + 테이블뷰 + 컬렉션뷰

---

2021.06.09

#드림플러스 스터디

- 문법
- 컬렉션뷰

---

2021.06.10

#오늘의집

- interiorView
  - collectionView
  - customButton

---

2021.06.11

#오늘의집

- interiorView
  - tableView
  - collectionview

- 주소 위치 선택

---

2021.06.12

#오늘의집

- 버튼뷰
  - 카카오주소

---

2021.06.13

#오늘의집

- 주소 -> 레이블 업데이트

---

2021.06.14

#드림플러스 스터디

- 포트폴리오

#오늘의집

- tableview

---

2021.06.15

#드림플러스 스터디

- 포트폴리오

#마켓컬리

- 회의

---

2021.06.16

#드림플러스 스터디

- git 수정
- 마켓컬리 뷰 

---

2021.06.17

#포트폴리오 배너

- 1 (x)
- 2 (x)

---

2021.06.18

#gitHub

- README.md
- marketKurly

---

2021.06.19

#스위프트 프로그래밍

#README.md 정리

---

2021.06.20

#마켓컬리

- tableView
- tabBar

---

2021.06.21

#마켓컬리

- 홈화면
- 커스템텝바 바 

---

2021.06.22

#Notion

- Mastering swift

---

2021.06.23

#드림플러스 스터디

- 문법

---

2021.06.24

#Notion

- 문법
- 프로젝트

---

2021.06.25

#marketKulry

- tabBar 컬러

---

2021.06.26

#marketKulry

- collectionView + tableView + collectionView

---

2021.06.27

#marketKulry

- 특가/혜택 tableView

---

2021.06.28

#드림플러스 스터디

- collectionView 위치 Q&A

#marketKulry

- collectionView + tableView + tableView

---

2021.06.29

#marketKulry

- collectionView 위치
- tapBar extension

---

2021.06.30

#드림플러스 스터디

#marketKulry

- tableview reloaddata animation

---

2021.07.01

#marketKulry

- collectionView 2
- label

---

2021.07.02

#marketKulry

- collectionView 3

---

2021.07.03

#marketKulry

- collectionView header

---

2021.07.04

#marketKulry

- collectionView header
- bestView

---

2021.07.05

#marketKulry

- kakao주소

---

2021.07.06

#면접대비 

- 스위프트 프로그래밍

---

2021.07.07

#Thread

#GCD

#ARC

---

2021.07.08

#FoodLocation

#love_ing

#미니게임한판

- 코드정리

---

2021.07.09

#야곰의 스위프트 프로그래밍

- closure

---

2021.07.10

#야곰의 스위프트 프로그래밍

- Enum

---

2021.07.11

#야곰의 스위프트 프로그래밍

- 고차함수
- Delegate

---

2021.07.12

#드림플러스 스터디

- property
- map, filter, reduce

---

2021.07.13

#marketKulry

- collectionView header

---

2021.07.14

#야곰의 스위프트 프로그래밍

- 구조체와 클래스

---

2021.07.15

#면접준비

- GCD
- ARC

---

2021.07.16

#면접준비

- static
- struct
- class

---

2021.07.17

#코드정리

---

2021.07.18

#marketKulry

- tableView header

---

2021.07.19

#드림플러스 스터디

- Enum
- 동기 / 비동기

---

2021.07.20

#드림플러스 스터디

- 1급객체 - 야곰의 swift programming

---

2021.07.21

#드림플러스 스터디

- delegate
- DataSource

---

2021.07.22

#Bosegown

- 구글, 카카오우편주소

---

2021.07.23

#야곰의 swift programming

- 패턴

---

2021.07.24

#야곰의 swift programming

- 조건문

---

2021.07.25

#야곰의 swift programming

- 고차함수

---

2021.07.26

#야곰의 swift programming

- 모나드

---

2021.07.27

#야곰의 swift programming

- 타입캐스팅

---

2021.07.28

- GCD

---

2021.07.30

-  Protocol

---

2021.07.31

- Extension

---

2021.08.03

- WKWebView

---

2021.08.04

- json

---

2021.08.05

- 버전정보

----

2021.08.06

- 전화번호 인증

---

2021.08.07

- postman

---

2021.08.08

- notification

---

2021.08.09

- 함수

---

2021.08.10

- 연산자

---

2021.08.11

- FSpager 라이브러리

---

2021.08.12

- 회원가입 이메일 인증

---

2021.08.14

- Gitlap / sourcetree
- git test

---

2021.08.15

- Storyboard

---

2021.08.18

- AVFoundation
- AVKit

---

2021.08.18

- Moya

---

2021.08.27

- alamofire
- moya