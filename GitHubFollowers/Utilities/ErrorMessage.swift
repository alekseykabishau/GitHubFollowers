//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0120..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import Foundation

enum ErrorMessage: String {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    
    
}