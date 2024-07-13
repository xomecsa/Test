//
//  NextPageVC.swift
//  LogInPage
//
//  Created by Luka Khomeriki on 13.07.24.
//

import SwiftUI
import UIKit


class NextPageVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
}


struct NextPageVCRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        NextPageVC()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
}

struct NextPageVC_Preview: PreviewProvider {
    static var previews: some View {
        NextPageVCRepresentable()
    }
}
