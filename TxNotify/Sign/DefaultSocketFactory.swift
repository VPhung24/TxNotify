//
//  DefaultSocketFactory.swift
//  TxNotify
//
//  Created by Vivian Phung on 1/25/23.
//

import Foundation
import Starscream
import WalletConnectRelay

extension WebSocket: WebSocketConnecting { }

struct DefaultSocketFactory: WebSocketFactory {
    func create(with url: URL) -> WebSocketConnecting {
        return WebSocket(url: url)
    }
}
