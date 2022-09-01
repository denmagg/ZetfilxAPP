//
//  Extensions.swift
//  NetflixAPP
//
//  Created by Денис Медведев on 01.09.2022.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
