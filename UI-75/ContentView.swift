//
//  ContentView.swift
//  UI-75
//
//  Created by にゃんにゃん丸 on 2020/12/17.
//

import SwiftUI
import SceneKit

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            Home()
                .navigationBarTitle("3D")
            
                
        }
        .ignoresSafeArea(.all, edges: .all)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @State var index = 0
    var w = UIScreen.main.bounds.width
    var h = UIScreen.main.bounds.height / 2
    var body: some View{
        
        VStack{
            
            SceneView(scene: SCNScene(named: models[index].modelname),options: [.autoenablesDefaultLighting,.allowsCameraControl])
            
                .frame(width: w, height: h)
            
            ZStack{
                
                HStack{
                    
                    
                    Button(action: {
                        
                        withAnimation{
                            if index > 0{
                                index -= 1
                                
                            }
                            
                            
                        }
                        
                    }, label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 30, weight: .bold))
                            .opacity(index == 0 ? 0.3 : 1)
                    })
                    .disabled(index == 0 ? true : false)
                    
                    Spacer()
                    
                    Button(action: {
                        
                        withAnimation{
                            if index < models.count{
                                index += 1
                                
                            }
                            
                            
                        }
                        
                    }, label: {
                        Image(systemName: "chevron.right")
                            .font(.system(size: 30, weight: .bold))
                            .opacity(index == models.count ? 0.3 : 1)
                    })
                    .disabled(index == models.count-1 ? true : false)
                    
                    
                    
                }
                Text(models[index].name)
                    .fontWeight(.heavy)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(5)
                   
                
            }
            .foregroundColor(.black)
            .padding()
            .padding(.vertical,30)
            
            
            VStack(alignment: .center, spacing: 20, content: {
                Text("About")
                    .foregroundColor(.black)
                    .fontWeight(.light)
                    .background(Capsule().strokeBorder(Color.orange.opacity(1)))
                
                Text(models[index].details)
                    .font(.system(size: 20, weight: .heavy))
                    
                    
            })
            
        }
        
    }
}
