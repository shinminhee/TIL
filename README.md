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
