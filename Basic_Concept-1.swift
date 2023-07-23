// Basic Print
print("Hello World!")
print()

// 변수와 상수
// 변수 (변하는 수 선언)
var myVariable = 30
// 상수 (변하지 않는 수 선언)
let myConstant = 20

// 변수 선언 시 자료형 구분 방법
let numInt = 70
let numDouble = 70.0
// 혹은 다음과 같이 자료형 선언
let numDoubleWithColon: Double = 70

// 문자열과 변수 같이 출력
let label = "The width is "
let width = 80
let widthLabel = label + String(width)
print(widthLabel)
print()

// 혹은 다음과 같이 표현
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
print(appleSummary)
print(fruitSummary)
print()

// 여러줄 출력하기
let quotation = """
    I said "I have \(apples) apples."
    And then I said "I have \(apples + oranges) pieces of fruit."
    """
print(quotation)
print()

// 배열과 딕셔너리 선언
var fruits = ["strawberries", "limes", "tangerines"]
var occupationsKeyString = [
    "first": "Captain",
    "second": "Mechanic",
]
occupationsKeyString["third"] = "Public Relations"
var occupationsKeyInt = [
    1: "Integer 1",
    2: "Integer 2",
    3: "Integer 3",
]

print("$ fruits[0]")
print(fruits[0])
print("---")
print("$ occupationsKeyString[0]")
print("$ Cannot use Integer index by dictionary index")
print("---")
print("$ occupationsKeyString['second']")
print(occupationsKeyString["second"])
print("---")
print("$ occupationKeyInt[0]")
print(occupationsKeyInt[1])
print()

// 배열 속성 추가
fruits.append("blueberries")
print(fruits)
print()

// 빈 배열의 선언 - 초기화 필요
let emptyArray: [String] = []
let emptyDictionary: [String : String] = [:]

// 기존 배열의 속성값 초기화
fruits = []
occupationsKeyString = [:]
occupationsKeyInt = [:]
print(fruits)
print(occupationsKeyString)
print(occupationsKeyInt)
print()
