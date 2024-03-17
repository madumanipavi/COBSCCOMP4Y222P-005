//
//  LoginViewModel.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC03 on 2024-03-17.
//

import Foundation


class LoginViewModel  : ObservableObject {
    
    @Published var username = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
 //   func signIn(completion: @escaping (Bool) -> Void) {
   //     Auth.auth().signIn(withEmail: username, password: password) { (authResult, error) in
     //       if let error = error {
       //         self.errorMessage = error.localizedDescription
         //       completion(false)
           //     return
            //}
            //completion(true)
        //}
    //}
    
    func validate() -> Bool {
        guard !username.isEmpty else {
            errorMessage = "Please enter a username."
            return false
        }
        
        guard !password.isEmpty else {
            errorMessage = "Please enter a password."
            return false
        }
        
        return true
    }
}
