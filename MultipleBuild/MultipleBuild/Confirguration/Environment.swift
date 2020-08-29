//
//  Environment.swift
//  MultipleBuild
//
//  Created by Akshuma Trivedi on 29/08/20.
//  Copyright © 2020 Akshuma Trivedi. All rights reserved.
//

import Foundation

public enum Environment {
    enum Keys {
        enum Plist {
            static let serverEndPoint = "SERVER_END_POINT"
            static let subscriptonKeys = "SUBSCRIPTION_KEY"
            static let baseKey = "BASE_KEY"
            static let accessCode = "ACCESS_CODE"
            static let merchantId = "MERCHANT_ID"
            static let endPoint = "END_POINT"
            static let paymentEndPoint = "PAYMENT_ENDPOINT"
        }
    }
    
    private static let infoDicitionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("plist not found")
        }
        return dict
    }()

    static let serverEndpoint: String = {
        guard let serverEndPont = Environment.infoDicitionary[Keys.Plist.serverEndPoint] as? String else {
            fatalError("serverSubscriptionKey not set in plist for this environment")
        }
        return serverEndPont
    }()
    
    static let subscriptonKeys: String = {
        guard let subscriptonKeys = Environment.infoDicitionary[Keys.Plist.subscriptonKeys] as? String else {
            fatalError("subscriptonKeys not set in plist for this environment")
        }
        return subscriptonKeys
    }()
    
    static let baseKey: String = {
        guard let baseKey = Environment.infoDicitionary[Keys.Plist.baseKey] as? String else {
            fatalError("baseKey not set in plist for this environment")
        }
        return baseKey
    }()
    
    static let accessCode: String = {
        guard let accessCode = Environment.infoDicitionary[Keys.Plist.accessCode] as? String else {
            fatalError("accessCode not set in plist for this environment")
        }
        return accessCode
    }()
    
    static let merchantId: String = {
        guard let merchantId = Environment.infoDicitionary[Keys.Plist.merchantId] as? String else {
            fatalError("merchantId not set in plist for this environment")
        }
        return merchantId
    }()
    
    static let endPoint: String = {
        guard let endPoint = Environment.infoDicitionary[Keys.Plist.endPoint] as? String else {
            fatalError("endPoint not set in plist for this environment")
        }
        return endPoint
    }()
    
    static let paymentEndPoint: String = {
        guard let paymentEndPoint = Environment.infoDicitionary[Keys.Plist.paymentEndPoint] as? String else {
            fatalError("paymentEndPoint not set in plist for this environment")
        }
        return paymentEndPoint
    }()
}


