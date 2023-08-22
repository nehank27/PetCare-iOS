//
//  DogView.swift
//  PetCare.NK
//
//  Created by Nehan K on 2/24/23.
//

import SwiftUI

struct DogView: View {
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
                            .frame(width: 250, height: 400)
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
                NavigationLink("Press here for Dog Info", destination: DogINFOview())
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
    
}

struct DogView_Previews: PreviewProvider {
    static var previews: some View {
        DogView()
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
