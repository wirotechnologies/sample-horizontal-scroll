//
//  PaymentMenuViewController.swift
//  FullHorizontalScroll
//
//  Created by Wilman Rojas on 3/3/19.
//  Copyright © 2019 Wiro Technologies. All rights reserved.
//

import UIKit

class PaymentMenuViewController: UIView {

    
    @IBOutlet var Container: UIView!
    @IBOutlet weak var buttonOne: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame:frame)
//        self.addSubview(Container)
//
//        Container.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//        Container.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
//        Container.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        Container.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        commitInit()
    }
    

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
         commitInit()
       // fatalError("init(coder:) has not been implemented")
    }
    
    private func commitInit(){

        Bundle.main.loadNibNamed("PaymentMenuView", owner: self, options: nil)
        addSubview(Container)
        Container.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        Container.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        Container.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        Container.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        //Container.frame = self.bounds
        //Container.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
