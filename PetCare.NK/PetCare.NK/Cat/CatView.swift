//
//  CatView.swift
//  PetCare.NK
//
//  Created by Nehan K on 2/23/23.
//

import SwiftUI
import UserNotifications

struct CatView: View {
    @State var isPickerShowing = false
    @State var selectedImage: UIImage?
    @State var firstName = ""
    @State var lastName = ""
    @State var birthDate = Date()
    var body: some View {
        NavigationView{
            VStack{
                
                ZStack {
                    Button {
                        //show the image picker
                        isPickerShowing = true
                    } label: {
                        //
                        Image("camera")
                            .resizable()
                            .frame(width:150, height:150)
                            .position(x:195, y:150)
                    }
                    
                    
                    if selectedImage != nil {
                        Image(uiImage: selectedImage!)
                            .resizable()
                            .frame(width: 250, height: 350)
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(.gray, lineWidth: 6)
                            }
                            .position(x:195, y:170)
                    }
                }
            }
            .sheet(isPresented: $isPickerShowing, onDismiss: nil) {
                //image picker
                ImagePicker(selectedImage: $selectedImage, isPickerShowing: $isPickerShowing)
            }
            
        }
        Form {
            
            Section(header: Text("Personal Information")){
                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
                DatePicker("Birthdate", selection: $birthDate, displayedComponents: .date)
                NavigationLink("Press here for Cat Info", destination: CatINFOview())
                    .controlSize(.large)
                    .foregroundColor(.black)
                    .font(.custom("American Typewriter", size: 20))
                
            }
        }
        .navigationTitle("Pet Name")
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button {
                    hideKeyboard()
                } label: {
                    Image(systemName: "keyboard.chevron.compact.down")
                }
            }
        }

    }
    
    struct CatView_Previews: PreviewProvider {
        static var previews: some View {
            CatView()
        }
    }
}
