// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

/// Helper class to fetch country list
final public class CountryListKit {
    
    /// Function to fetch and load list of countries
    /// - Returns: CountryItem
    ///
    /// call using
    /// ```
    ///     try? CountryListKit.loadList()
    /// ```
    static func loadList()  throws -> [CountryItem] {
        let decoder = JSONDecoder()
        if let fileURL = Bundle.main.url(forResource: "CountryCodes", withExtension: "json") {
            let data = try Data(contentsOf: fileURL)
            let result = try decoder.decode([CountryItem].self, from: data)
            return result
        } else {
            throw NSError(domain: "JSON file nor found", code: 0)
        }
    }
    
}
