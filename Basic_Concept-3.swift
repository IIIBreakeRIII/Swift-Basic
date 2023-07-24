// 함수
// 함수의 선언
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}

print(greet(person: "Paul", day: "Tuesday"))
print()

// 다음과도 같이 표현
// _ : 함수 인자 생략
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}

print(greet("Paul", on: "Wednesday"))
print()

// 배열을 이용한 컴파운드 값 리턴
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
// (min, max sum) => 0, 1, 2 (index value)
// ex) statistics.2 = statistics.sum
print(statistics.2)
print()

// 중첩 함수? 이중 함수? 함수 내 다른 함수 호출
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

print(returnFifteen())
print()

// 다음과도 같음
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
print(increment(7))
print()

// 함수는 다른 함수를 참조하기도 가능
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))
