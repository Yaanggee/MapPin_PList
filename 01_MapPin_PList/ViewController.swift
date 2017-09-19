//
//  ViewController.swift
//  01_MapPin_PList
//
//  Created by D7703_19 on 2017. 9. 19..
//  Copyright © 2017년 D7703_19. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet var myMapkit: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        zoomToRegion()
        //PList파일을 프로그램에 가져오기
        let path = Bundle.main.path(forResource: "ViewPoint3", ofType: "plist")
        print("path=\(String(describing: path))")
        //이 프로그램에서 ViewPoint3.plist를 사용하기 위해 복사하기
        let contents = NSArray(contentsOfFile: path!)
        print("contents = \(String(describing: contents))")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func zoomToRegion(){
        let center = CLLocationCoordinate2DMake(35.166197,129.072594)
        let span = MKCoordinateSpanMake(0.05,0.05)
    
        let region = MKCoordinateRegion(center: center, span: span)
        myMapkit.setRegion(region, animated:true)
        
    }
}

