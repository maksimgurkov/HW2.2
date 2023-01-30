//
//  ViewController.swift
//  HW2.2
//
//  Created by Максим Гурков on 30.01.2023.
//

import UIKit

enum Colors {
    case red
    case yellow
    case green
}

final class ViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    // MARK: - Private properties
    private var color = Colors.red
    private var lightOn: CGFloat = 1
    private var lightOf: CGFloat = 0.3
    
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        startButton.layer.cornerRadius = 8
    }
    
    // MARK: - Private Func
    private func setupView() {
        redView.alpha = lightOf
        yellowView.alpha = lightOf
        greenView.alpha = lightOf
        redView.layer.cornerRadius = redView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
    }
    
    // MARK: - IBAction
    @IBAction func activeStartButton() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        switch color {
        case .red:
            redView.alpha = lightOn
            greenView.alpha = lightOf
            color = .yellow
        case .yellow:
            redView.alpha = lightOf
            yellowView.alpha = lightOn
            color = .green
        case .green:
            yellowView.alpha = lightOf
            greenView.alpha = lightOn
            color = .red
        }
    }
    

}

