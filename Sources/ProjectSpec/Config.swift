//
//  Config.swift
//  XcodeGen
//
//  Created by Yonas Kolb on 20/7/17.
//
//

import Foundation
import xcproj
import JSONUtilities

public struct Config: Equatable {
    public var name: String
    public var type: ConfigType?

    public init(name: String, type: ConfigType? = nil) {
        self.name = name
        self.type = type
    }

    public static func == (lhs: Config, rhs: Config) -> Bool {
        return lhs.name == rhs.name && lhs.type == rhs.type
    }

    public static var defaultConfigs: [Config] = [Config(name: "Debug", type: .debug), Config(name: "Release", type: .release)]
}

public enum ConfigType: String {
    case debug
    case release
}
