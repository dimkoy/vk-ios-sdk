//
//  PhoneConnectivityManager.swift
//  vkwatch Extension
//
//  Created by Дмитрий Червяков on 31.10.2020.
//  Copyright © 2020 VK. All rights reserved.
//

import Foundation
import WatchConnectivity

final class PhoneConnectivityManager: NSObject, WCSessionDelegate {

    private var session = WCSession.default

    override init() {
        super.init()
        session.delegate = self
        session.activate()
    }

    private func isReachable() -> Bool {
        return session.isReachable
    }

    func sendMessage() {
        if isReachable() {
            session.sendMessage(["request" : "version"], replyHandler: { (response) in
                print(response)
                if let string = response["response"] as? [String: Any] {
                    let parser = NewsFeedParser()
                    parser.parse(string)
                }
            }, errorHandler: { (error) in
                print("Error sending message: %@", error)
            })
        } else {
            print("iPhone is not reachable!!")
        }
    }

    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
            print("activationDidCompleteWith activationState:\(activationState) error:\(String(describing: error))")
    }
}
