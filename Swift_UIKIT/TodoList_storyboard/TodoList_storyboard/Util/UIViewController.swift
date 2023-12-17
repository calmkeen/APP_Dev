//
//  UIViewController.swift
//  TodoList_storyboard
//
//  Created by calmkeen on 2023/12/09.
//

import UIKit

extension UIViewController {
    public func showAlertMessag(title: String, message: String){
        
        let alertMessagePopup = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let confirmButoon = UIAlertAction(title: "확인", style: .default)
        
        alertMessagePopup.addAction(confirmButoon)
        self.present(alertMessagePopup, animated: true)
    }
        
}
