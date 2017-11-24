//
//  LitView.swift
//  IBDesignable
//
//  Created by Michael Rojas on 11/22/17.
//  Copyright © 2017 Michael Rojas. All rights reserved.
//

import UIKit

@IBDesignable
class LitView : UIView {
    var view: UIView!
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupNib()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupNib()
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()

    }
    
    private func setupNib() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true
        addSubview(view)
    }
    
    private func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return nibView
    }

    @IBInspectable override var backgroundColor: UIColor? {
        didSet {
            layer.backgroundColor = backgroundColor?.cgColor
        }
    }
    
    @IBInspectable var title: String? {
        didSet {
            myLabel.text = title
            myLabel.adjustsFontSizeToFitWidth = true
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 10.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var image: UIImage? {
        didSet {
            imageView.image = image
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var showShadow: Bool = false {
        didSet {
            if(showShadow){
                layer.shadowColor = UIColor.black.cgColor
                layer.shadowRadius = 10.0
                layer.shadowOpacity = 1.0
                layer.shadowOffset = CGSize.zero
            }else{
                layer.shadowRadius = 0.0
            }
        }
    }

}
