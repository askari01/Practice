import Cocoa

extension FloatingPoint {
    func rounded(to value: Self, roundingRule: FloatingPointRoundingRule = .toNearestOrAwayFromZero) -> Self {
        return (self / value).rounded(roundingRule) * value
    }
}

let value = -3050.0

if value < 0 {
    value.rounded(to: 100, roundingRule: .towardZero) // 330 (default rounding mode toNearestOrAwayFromZero)
}

let value1 = 408581.0
value1.rounded(to: 100000, roundingRule: .towardZero) // 320

let value2 = 25.0
value2.rounded(to: 10, roundingRule: .awayFromZero)
