//
//  ViewController.swift
//  LiquidFloatingActionButton
//
//  Created by Takuma Yoshida on 08/25/2015.
//  Copyright (c) 2015 Takuma Yoshida. All rights reserved.
//

import UIKit
import LiquidFloatingActionButton

class ViewController: UIViewController, LiquidFloatingActionButtonDataSource, LiquidFloatingActionButtonDelegate {
    
    var cells: [LiquidFloatingCell] = []
    @IBOutlet weak var floatingActionButton: LiquidFloatingActionButton!

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = UIColor(red: 55 / 255.0, green: 55 / 255.0, blue: 55 / 255.0, alpha: 1.0)
        // Do any additional setup after loading the view, typically from a nib.
        
        floatingActionButton.delegate = self
        floatingActionButton.dataSource = self
        floatingActionButton.animateStyle = .Down
        
        let imageView = UIImageView(image: UIImage(named: "drawing-button-image"))
        imageView.frame = CGRectMake(0, 0, 46, 46)
        floatingActionButton.addIconImageView(imageView)
        
        let cellFactory: (UIColor, UIColor, UIImage) -> LiquidFloatingCell = { (color, brushColor, image) in
            let cell = LiquidFloatingCell(color: color, brushColor: brushColor, image: image)
            return cell
        }
        cells.append(cellFactory(UIColor.whiteColor(), UIColor(red:0.816,  green:0.008,  blue:0.106, alpha:1), UIImage(named: "checkmark-button-image")!))
        cells.append(cellFactory(UIColor.whiteColor(), UIColor(red:0.012,  green:0.553,  blue:0.945, alpha:1), UIImage(named: "checkmark-button-image")!))
        cells.append(cellFactory(UIColor.whiteColor(), UIColor(red:0.141,  green:0.788,  blue:0.365, alpha:1), UIImage(named: "checkmark-button-image")!))
        cells.append(cellFactory(UIColor.whiteColor(), UIColor(red:1,  green:0.847,  blue:0, alpha:1), UIImage(named: "checkmark-button-image")!))
        cells.append(cellFactory(UIColor.whiteColor(), UIColor(red:0.569,  green:0.333,  blue:0.965, alpha:1), UIImage(named: "checkmark-button-image")!))
        cells.append(cellFactory(UIColor.whiteColor(), UIColor(red:0,  green:0,  blue:0, alpha:1), UIImage(named: "checkmark-button-image")!))
        cells.append(cellFactory(UIColor.whiteColor(), UIColor(red:1,  green:1,  blue:1, alpha:1), UIImage(named: "checkmark-button-image")!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfCells(liquidFloatingActionButton: LiquidFloatingActionButton) -> Int {
        return cells.count
    }
    
    func cellForIndex(index: Int) -> LiquidFloatingCell {
//        let cell = cells[index]
//        cell.imageView.alpha
        return cells[index]
    }
    
    func liquidFloatingActionButtonDidOpen(liquidFloatingActionButton: LiquidFloatingActionButton) {
        
    }
    
    func liquidFloatingActionButtonDidClose(liquidFloatingActionButton: LiquidFloatingActionButton) {
        
    }
    
    func liquidFloatingActionButton(liquidFloatingActionButton: LiquidFloatingActionButton, didSelectItemAtIndex index: Int) {
        print("did Tapped! \(index)")
//        floatingActionButton.close()
    }
    
    
}