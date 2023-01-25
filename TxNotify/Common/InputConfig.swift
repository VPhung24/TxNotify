//
//  InputConfig.swift
//  TxNotify
//
//  Created by Vivian Phung on 1/25/23.
//

import Foundation

struct InputConfig {

    static var projectId: String {
        return config(for: "PROJECT_ID")!
    }

    private static func config(for key: String) -> String? {
        return Bundle.main.object(forInfoDictionaryKey: key) as? String
    }
}
