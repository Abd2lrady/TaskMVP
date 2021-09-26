//
//  EnviromentVaribles.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady

import UIKit

var baseURL: String {   
    #if DEBUG
    return "https://smea-pc.ibtikar.sa"
    #elseif RELEASE
    return "https://smea-pc.ibtikar.sa"
    #elseif ENTERPRISE
    return "https://smea-pc.ibtikar.sa"
    #elseif ENTERPRISE_DEBUG
    return "https://smea-pc.ibtikar.sa"
    #elseif TESTING
    return "https://smea-pc.ibtikar.sa"
    #else
    return "https://smea-pc.ibtikar.sa"
    #endif
    
}
