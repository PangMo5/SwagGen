//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class ItemScheduleList: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** The id of the channel the schedules belong to. */
    public var channelId: String

    /** The date and time this list of schedules starts. */
    public var startDate: Date

    /** The date and time this list of schedules ends. */
    public var endDate: Date

    /** The list of item schedules. */
    public var schedules: [ItemSchedule]

    public init(channelId: String, startDate: Date, endDate: Date, schedules: [ItemSchedule]) {
        self.channelId = channelId
        self.startDate = startDate
        self.endDate = endDate
        self.schedules = schedules
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        channelId = try jsonDictionary.json(atKeyPath: "channelId")
        startDate = try jsonDictionary.json(atKeyPath: "startDate")
        endDate = try jsonDictionary.json(atKeyPath: "endDate")
        schedules = try jsonDictionary.json(atKeyPath: "schedules")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["channelId"] = channelId
        dictionary["startDate"] = startDate.encode()
        dictionary["endDate"] = endDate.encode()
        dictionary["schedules"] = schedules.encode()
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}