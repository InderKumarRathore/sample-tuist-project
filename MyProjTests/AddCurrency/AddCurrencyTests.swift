import Testing
import Foundation

struct AddCurrencyTests {
    @Test
    func testResponse() throws {
        guard let url = Bundle.test.url(
            forResource: "add-currency-response",
            withExtension: "json"
        ) else {
            Issue.record("Missing add-currency-response.json in test bundle")
            return
        }

        let data = try Data(contentsOf: url)
        let decoded = try JSONDecoder().decode(Sample.self, from: data)

        #expect(decoded == Sample(key: "Add"))
    }
}
