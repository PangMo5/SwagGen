//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class PassengerFlow: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** Time in 24hr format with 15 minute intervals e.g. 0500-0515, 0515-0530 etc. */
    public var timeSlice: String?

    /** Count of passenger flow towards a platform */
    public var value: Int?

    public init(timeSlice: String? = nil, value: Int? = nil) {
        self.timeSlice = timeSlice
        self.value = value
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        timeSlice = jsonDictionary.json(atKeyPath: "timeSlice")
        value = jsonDictionary.json(atKeyPath: "value")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let timeSlice = timeSlice {
            dictionary["timeSlice"] = timeSlice
        }
        if let value = value {
            dictionary["value"] = value
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}