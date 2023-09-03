//
//  SwiftUIView.swift
//  bb
//
//  Created by Alanoud  on 15/02/1445 AH.
//

import SwiftUI
import SceneKit
struct SwiftUIView: View {
    //    ‏var carthi: [Earth] =
    //    ‏"Eorth" inageModel: "Earth.usdz*).
    //    ‏Earth (inages "Moo inagoMode1: "Woon-usdz"
    var body : some View{
        VStack{
            SceneView(scene: SCNScene (named: "Moon.usdz")
                      ,options:[.autoenablesDefaultLighting,.allowsCameraControl])
            .frame(width: 350, height: 350)
        }
        
    }
}

            
            
            
            
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
