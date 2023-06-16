//
//  AuthManager.swift
//  Spotify
//
//  Created by NJ Development on 15/06/23.
//

import Foundation
import UIKit

final class AuthManager {
    static let shared = AuthManager()
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
    var accessToken: String? {
        return nil
    }
    
    var refreshToken: String? {
        return nil
    }
    
    var tokenExpirationDate: Date? {
        return nil
    }
    
    var shouldRefreshToken: Bool {
        return false
    }
}
