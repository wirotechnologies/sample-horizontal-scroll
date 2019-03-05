//
//  PaymentsOptions.swift
//  FullHorizontalScroll
//
//  Created by Wilman Rojas on 3/2/19.
//  Copyright © 2019 Wiro Technologies. All rights reserved.
//

import UIKit

struct scrollViewDataStruct {
    let title: String?
    let image: UIImage?
}

class PaymentsOptionsController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    var scrollViewData = [scrollViewDataStruct]()
    //var pa : PaymentMenuViewController!
    
    @objc func  test()
{
    print("jj")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.delegate = self
        
        scrollViewData = [scrollViewDataStruct.init(title: "First", image:  #imageLiteral(resourceName: "amex")),scrollViewDataStruct.init(title: "Second", image:  #imageLiteral(resourceName: "chase-debit-card_front")),scrollViewDataStruct.init(title: "Third", image:  #imageLiteral(resourceName: "amex"))]
        scrollView.contentSize.width = self.scrollView.frame.width * (CGFloat(scrollViewData.count) + 1)
        var i: CGFloat = 0
        var j: CGFloat = 1
        let halfInterSpacing: CGFloat = 10.5
        let viewWidth : CGFloat = 305
        let viewOptions = PaymentMenuViewController(frame: CGRect(x: (halfInterSpacing * j) + viewWidth * i, y: 0, width :  viewWidth, height: self.scrollView.frame.height))
        viewOptions.buttonOne.addTarget(self, action: #selector(test), for: .touchUpInside)
        self.scrollView.addSubview(viewOptions)
        i += 1
        j += 2
        for data in scrollViewData{
            let view = CustomView(frame: CGRect(x: (halfInterSpacing * j) + viewWidth * i, y: 0, width :  viewWidth, height: self.scrollView.frame.height))
            view.imageView.image = data.image
            self.scrollView.addSubview(view)
            
            i += 1
            j += 2
        }
        self.scrollView.clipsToBounds = false
    }
    


class CustomView: UIView {
    
    let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = UIColor.white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(imageView)
        imageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("aaa")
    }
}

    

    
}


class PassThruScrollView: UIScrollView {
    
    var passThruViewRef: UIView?
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        
        return point.y > passThruViewRef?.frame.height ?? 0
        
    }
    
}
    


