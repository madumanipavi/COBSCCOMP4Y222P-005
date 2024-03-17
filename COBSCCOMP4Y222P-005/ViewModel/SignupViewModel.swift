//
//  SignupViewModel.swift
//  COBSCCOMP4Y222P-005
//
//  Created by NIBM-LAB04-PC03 on 2024-03-11.
//

import Foundation

import SwiftUI

class SignupViewModel  : ObservableObject {
    
    @Published var name : String = ""
    @Published var password : String = ""
    @Published var confirmPassword : String = ""
    @Published var email : String = ""
    @Published var showError : Bool = false
    @Published var errorMessage : String = ""
    @Published var success : Bool = false
    
    
  //  func checkname(){
  //      if name.isEmpty || password.isEmpty {
   //         withAnimation{
    //            showError = true
    //            errorMessage = "Please enter name to continue"
    //        }
            
          //  else if email.isEmpty {
            //    withAnimation{
              //      showError = true
                //    errorMessage = "Please enter email to continue"
                    
                //}
                
                //else if password.isEmpty {
                    //withAnimation{
                  //      showError = true
                      //  errorMessage = "Please enter password to continue"
                    //}
                //}
                
               // else if confirmPassword.isEmpty {
                //    withAnimation{
               //         showError = true
                  //      errorMessage = "Please enter confirm password to continue"
                 //   }
               // }
                
           //     else if password != confirmPassword {
             //       withAnimation{
            //            showError = true
           //             errorMessage  = "Password and confirm password dores not match"
                        
             //       }
                    
           //
          //  }
            //else if {
            //  showError = true
            //errorMessage = "Signup Completed"
            
            //}
            
            //}else if username.lowercased() == "abc" && password == "1234"{
            //   showError=false
            //   success = true }
           // else{
             //   showError=true
              //  errorMessage="Incorrect user credentials!"
           // }
       // }}
}
