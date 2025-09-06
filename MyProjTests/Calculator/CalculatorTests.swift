import Testing
import Foundation

struct CalculatorTests {
    @Test
    func testResponse() throws {
        guard let url = Bundle.test.url(
            forResource: "calcuator-response",
            withExtension: "json"
        ) else {
            Issue.record("Missing calcuator-response.json in test bundle")
            return
        }

        let data = try Data(contentsOf: url)
        let decoded = try JSONDecoder().decode(Sample.self, from: data)

        #expect(decoded == Sample(key: "Calculator"))
    }
}
