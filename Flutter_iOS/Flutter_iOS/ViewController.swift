//
//  ViewController.swift
//  Flutter_iOS
//
//  Created by chengz on 2022/1/12.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .red
    }
    
    @objc func showFlutter() {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        present(flutterViewController, animated: true, completion: nil)
    }
    
    @objc func showFlutter1() { // 内嵌引擎，每次启动都很慢。不建议使用，除非业务几百年不用一次的那种。
        let flutterViewController = FlutterViewController(project: nil, nibName: nil, bundle: nil)
        present(flutterViewController, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.showFlutter()
    }

}

