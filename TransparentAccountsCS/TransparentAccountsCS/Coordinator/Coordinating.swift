//
//  Coordinating.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//

import UIKit


@MainActor
protocol Coordinating {
    func begin() -> UIViewController
}
