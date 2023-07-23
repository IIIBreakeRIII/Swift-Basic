// 제어문
let individualScores = [65, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
print()

// optional 체크를 위해 ? 사용
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
    print(greeting)
}
print()

// ?? : nil 병합 연산자 => 중위 연산자
let nickname: String? = nil
let fullName: String = "Paul Ryu"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting)

if let nickname {
    print("Hey, \(nickname)")
} else {
    print("Hey, \(fullName)")
}
print()

// switch - case 문
// default 필수
let vegetable = "red pepper"

switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):                // hasSuffix => 단어에서 들어있는거 확인
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
print()

// for - in 문
let interstingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interstingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
print()

// while 반복문
var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)
print()

// 반복문 순환 시 ..< 로 인덱스 처리 가능 (python의 range와 같은 형태)
// Example) 0..<4 => 0 1 2 3
var total = 0
for i in 0..<4 {
    total += i
    print(total)
}
print()

// 반복문 순환 시 ... 로 나타내면 해당 숫자까지 반복
// Example) 0...4 => 0 1 2 3 4
total = 0
for j in 0...4 {
    total += j
    print(total)
}
print()

