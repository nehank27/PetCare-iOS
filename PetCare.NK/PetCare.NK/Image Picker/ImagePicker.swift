//
//  ImagePicker.swift
//  PetCare.NK
//
//  Created by Nehan K on 3/8/23.
//

import Foundation
import UIKit
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var selectedImage: UIImage?
    @Binding var isPickerShowing: Bool
    
    func makeUIViewController(context: Context) -> some UIViewController {
        
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = context.coordinator//object that can recieve UIImagePickerController events
        
        return imagePicker
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //banana
    }
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
}


class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    var parent: ImagePicker
    
    init(_ picker: ImagePicker) {
        self.parent = picker
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //run code when the user has cancelled the picker UI
        print("cancelled")
        
        parent.isPickerShowing = false
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //run the code when the user has selected an img
        print("image selected")
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            //we were able to get the img
            DispatchQueue.main.async {
                self.parent.selectedImage = image
            }
        }
        //dismiss picker
        parent.isPickerShowing = false
    }
    
    
}


