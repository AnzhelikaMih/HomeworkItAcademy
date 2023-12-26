//
//  ViewController.swift
//  Calculator2
//
//  Created by Анжелика on 24.12.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var parentView: UIView!
    
    @IBOutlet private weak var buttonPoint: UIButton!
    @IBOutlet private weak var buttonZero: UIButton!
    @IBOutlet private weak var buttonEqualSign: UIButton!
    @IBOutlet private weak var buttonPlus: UIButton!
    @IBOutlet private weak var buttonOne: UIButton!
    @IBOutlet private weak var buttonTwo: UIButton!
    @IBOutlet private weak var buttonThree: UIButton!
    @IBOutlet private weak var buttonFour: UIButton!
    @IBOutlet private weak var buttonFive: UIButton!
    @IBOutlet private weak var buttonSix: UIButton!
    @IBOutlet private weak var buttonMinus: UIButton!
    @IBOutlet private weak var buttonSeven: UIButton!
    @IBOutlet private weak var buttonEight: UIButton!
    @IBOutlet private weak var buttonNine: UIButton!
    @IBOutlet private weak var buttonMultiplier: UIButton!
    @IBOutlet private weak var buttonCancel: UIButton!
    @IBOutlet private weak var buttonBack: UIButton!
    @IBOutlet private weak var buttonPercent: UIButton!
    @IBOutlet private weak var buttonDivisionSign: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        setupParentView()
        setupButtonPoint()
        setupButtonZero()
        setupButtonEqualSign()
        setupButtonPlus()
        setupButtonOne()
        setupButtonTwo()
        setupButtonThree()
        setupButtonFour()
        setupButtonFive()
        setupButtonSix()
        setupButtonMinus()
        setupButtonSeven()
        setupButtonEight()
        setupButtonNine()
        setupButtonMultiplier()
        setupButtonCancel()
        setupButtonBack()
        setupButtonPercent()
        setupButtonDivisionSign()
        }
    
    private func setupParentView() {
        parentView.translatesAutoresizingMaskIntoConstraints = false
        let parentViewConstraints = [
            parentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            parentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            parentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            parentView.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 5/4)
        ]
        NSLayoutConstraint.activate(parentViewConstraints)
    }
    
    private func setupButtonPoint() {
        buttonPoint.translatesAutoresizingMaskIntoConstraints = false
        let buttonPointConstraints = [
            buttonPoint.topAnchor.constraint(equalTo: buttonOne.bottomAnchor, constant: 0),
            buttonPoint.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: 0),
            buttonPoint.trailingAnchor.constraint(equalTo: buttonZero.leadingAnchor, constant: 0),
            buttonPoint.bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: 0),
            buttonPoint.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonPoint.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonPointConstraints)
        
        buttonPoint.layer.borderWidth = 0.5
        buttonPoint.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonZero() {
        buttonZero.translatesAutoresizingMaskIntoConstraints = false
        let buttonZeroConstraints = [
            buttonZero.topAnchor.constraint(equalTo: buttonTwo.bottomAnchor, constant: 0),
            buttonZero.leadingAnchor.constraint(equalTo: buttonPoint.trailingAnchor, constant: 0),
            buttonZero.trailingAnchor.constraint(equalTo: buttonEqualSign.leadingAnchor, constant: 0),
            buttonZero.bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: 0),
            buttonZero.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonZero.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonZeroConstraints)
        
        buttonZero.layer.borderWidth = 0.5
        buttonZero.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonEqualSign() {
        buttonEqualSign.translatesAutoresizingMaskIntoConstraints = false
        let buttonEqualSignConstraints = [
            buttonEqualSign.topAnchor.constraint(equalTo: buttonThree.bottomAnchor, constant: 0),
            buttonEqualSign.leadingAnchor.constraint(equalTo: buttonZero.trailingAnchor, constant: 0),
            buttonEqualSign.trailingAnchor.constraint(equalTo: buttonPlus.leadingAnchor, constant: 0),
            buttonEqualSign.bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: 0),
            buttonEqualSign.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonEqualSign.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonEqualSignConstraints)
        
        buttonEqualSign.layer.borderWidth = 0.5
        buttonEqualSign.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonPlus() {
        buttonPlus.translatesAutoresizingMaskIntoConstraints = false
        let buttonPlusConstraints = [
            buttonPlus.topAnchor.constraint(equalTo: buttonMinus.bottomAnchor, constant: 0),
            buttonPlus.leadingAnchor.constraint(equalTo: buttonThree.trailingAnchor, constant: 0),
            buttonPlus.trailingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: 0),
            buttonPlus.bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: 0),
            buttonPlus.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonPlus.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/2)
        ]
        NSLayoutConstraint.activate(buttonPlusConstraints)
        
        buttonPlus.layer.borderWidth = 0.5
        buttonPlus.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonOne() {
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        let buttonOneConstraints = [
            buttonOne.topAnchor.constraint(equalTo: buttonFour.bottomAnchor, constant: 0),
            buttonOne.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: 0),
            buttonOne.trailingAnchor.constraint(equalTo: buttonTwo.leadingAnchor, constant: 0),
            buttonOne.bottomAnchor.constraint(equalTo: buttonPoint.topAnchor, constant: 0),
            buttonOne.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonOne.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonOneConstraints)
        
        buttonOne.layer.borderWidth = 0.5
        buttonOne.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonTwo() {
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        let buttonTwoConstraints = [
            buttonTwo.topAnchor.constraint(equalTo: buttonFive.bottomAnchor, constant: 0),
            buttonTwo.leadingAnchor.constraint(equalTo: buttonOne.trailingAnchor, constant: 0),
            buttonTwo.trailingAnchor.constraint(equalTo: buttonThree.leadingAnchor, constant: 0),
            buttonTwo.bottomAnchor.constraint(equalTo: buttonZero.topAnchor, constant: 0),
            buttonTwo.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonTwo.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonTwoConstraints)
        
        buttonTwo.layer.borderWidth = 0.5
        buttonTwo.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonThree() {
        buttonThree.translatesAutoresizingMaskIntoConstraints = false
        let buttonThreeConstraints = [
            buttonThree.topAnchor.constraint(equalTo: buttonSix.bottomAnchor, constant: 0),
            buttonThree.leadingAnchor.constraint(equalTo: buttonTwo.trailingAnchor, constant: 0),
            buttonThree.trailingAnchor.constraint(equalTo: buttonPlus.leadingAnchor, constant: 0),
            buttonThree.bottomAnchor.constraint(equalTo: buttonEqualSign.topAnchor, constant: 0),
            buttonThree.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonThree.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonThreeConstraints)
        
        buttonThree.layer.borderWidth = 0.5
        buttonThree.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonFour() {
        buttonFour.translatesAutoresizingMaskIntoConstraints = false
        let buttonFourConstraints = [
            buttonFour.topAnchor.constraint(equalTo: buttonSeven.bottomAnchor, constant: 0),
            buttonFour.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: 0),
            buttonFour.trailingAnchor.constraint(equalTo: buttonFive.leadingAnchor, constant: 0),
            buttonFour.bottomAnchor.constraint(equalTo: buttonOne.topAnchor, constant: 0),
            buttonFour.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonFour.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonFourConstraints)
        
        buttonFour.layer.borderWidth = 0.5
        buttonFour.layer.borderColor = UIColor.black.cgColor
    }

    private func setupButtonFive() {
        buttonFive.translatesAutoresizingMaskIntoConstraints = false
        let buttonFiveConstraints = [
            buttonFive.topAnchor.constraint(equalTo: buttonEight.bottomAnchor, constant: 0),
            buttonFive.leadingAnchor.constraint(equalTo: buttonFour.trailingAnchor, constant: 0),
            buttonFive.trailingAnchor.constraint(equalTo: buttonSix.leadingAnchor, constant: 0),
            buttonFive.bottomAnchor.constraint(equalTo: buttonTwo.topAnchor, constant: 0),
            buttonFive.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonFive.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonFiveConstraints)
        
        buttonFive.layer.borderWidth = 0.5
        buttonFive.layer.borderColor = UIColor.black.cgColor
    }

    private func setupButtonSix() {
        buttonSix.translatesAutoresizingMaskIntoConstraints = false
        let buttonSixConstraints = [
            buttonSix.topAnchor.constraint(equalTo: buttonNine.bottomAnchor, constant: 0),
            buttonSix.leadingAnchor.constraint(equalTo: buttonFive.trailingAnchor, constant: 0),
            buttonSix.trailingAnchor.constraint(equalTo: buttonMinus.leadingAnchor, constant: 0),
            buttonSix.bottomAnchor.constraint(equalTo: buttonThree.topAnchor, constant: 0),
            buttonSix.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonSix.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonSixConstraints)
        
        buttonSix.layer.borderWidth = 0.5
        buttonSix.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonMinus() {
        buttonMinus.translatesAutoresizingMaskIntoConstraints = false
        let buttonMinusConstraints = [
            buttonMinus.topAnchor.constraint(equalTo: buttonMultiplier.bottomAnchor, constant: 0),
            buttonMinus.leadingAnchor.constraint(equalTo: buttonSix.trailingAnchor, constant: 0),
            buttonMinus.trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: 0),
            buttonMinus.bottomAnchor.constraint(equalTo: buttonPlus.topAnchor, constant: 0),
            buttonMinus.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonMinus.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonMinusConstraints)
        
        buttonMinus.layer.borderWidth = 0.5
        buttonMinus.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonSeven() {
        buttonSeven.translatesAutoresizingMaskIntoConstraints = false
        let buttonSevenConstraints = [
            buttonSeven.topAnchor.constraint(equalTo: buttonCancel.bottomAnchor, constant: 0),
            buttonSeven.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: 0),
            buttonSeven.trailingAnchor.constraint(equalTo: buttonEight.leadingAnchor, constant: 0),
            buttonSeven.bottomAnchor.constraint(equalTo: buttonFour.topAnchor, constant: 0),
            buttonSeven.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonSeven.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonSevenConstraints)
        
        buttonSeven.layer.borderWidth = 0.5
        buttonSeven.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonEight() {
        buttonEight.translatesAutoresizingMaskIntoConstraints = false
        let buttonEightConstraints = [
            buttonEight.topAnchor.constraint(equalTo: buttonBack.bottomAnchor, constant: 0),
            buttonEight.leadingAnchor.constraint(equalTo: buttonSeven.trailingAnchor, constant: 0),
            buttonEight.trailingAnchor.constraint(equalTo: buttonNine.leadingAnchor, constant: 0),
            buttonEight.bottomAnchor.constraint(equalTo: buttonFive.topAnchor, constant: 0),
            buttonEight.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonEight.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonEightConstraints)
        
        buttonEight.layer.borderWidth = 0.5
        buttonEight.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonNine() {
        buttonNine.translatesAutoresizingMaskIntoConstraints = false
        let buttonNineConstraints = [
            buttonNine.topAnchor.constraint(equalTo: buttonPercent.bottomAnchor, constant: 0),
            buttonNine.leadingAnchor.constraint(equalTo: buttonEight.trailingAnchor, constant: 0),
            buttonNine.trailingAnchor.constraint(equalTo: buttonMultiplier.leadingAnchor, constant: 0),
            buttonNine.bottomAnchor.constraint(equalTo: buttonSix.topAnchor, constant: 0),
            buttonNine.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonNine.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonNineConstraints)
        
        buttonNine.layer.borderWidth = 0.5
        buttonNine.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonMultiplier() {
        buttonMultiplier.translatesAutoresizingMaskIntoConstraints = false
        let buttonMultiplierConstraints = [
            buttonMultiplier.topAnchor.constraint(equalTo: buttonDivisionSign.bottomAnchor, constant: 0),
            buttonMultiplier.leadingAnchor.constraint(equalTo: buttonNine.trailingAnchor, constant: 0),
            buttonMultiplier.trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: 0),
            buttonMultiplier.bottomAnchor.constraint(equalTo: buttonMinus.topAnchor, constant: 0),
            buttonMultiplier.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonMultiplier.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonMultiplierConstraints)
        
        buttonMultiplier.layer.borderWidth = 0.5
        buttonMultiplier.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonCancel() {
        buttonCancel.translatesAutoresizingMaskIntoConstraints = false
        let buttonCancelConstraints = [
            buttonCancel.topAnchor.constraint(equalTo: parentView.topAnchor, constant: 0),
            buttonCancel.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: 0),
            buttonCancel.trailingAnchor.constraint(equalTo: buttonBack.leadingAnchor, constant: 0),
            buttonCancel.bottomAnchor.constraint(equalTo: buttonSeven.topAnchor, constant: 0),
            buttonCancel.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonCancel.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonCancelConstraints)
        
        buttonCancel.layer.borderWidth = 0.5
        buttonCancel.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonBack() {
        buttonBack.translatesAutoresizingMaskIntoConstraints = false
        let buttonBackConstraints = [
            buttonBack.topAnchor.constraint(equalTo: parentView.topAnchor, constant: 0),
            buttonBack.leadingAnchor.constraint(equalTo: buttonCancel.trailingAnchor, constant: 0),
            buttonBack.trailingAnchor.constraint(equalTo: buttonPercent.leadingAnchor, constant: 0),
            buttonBack.bottomAnchor.constraint(equalTo: buttonEight.topAnchor, constant: 0),
            buttonBack.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonBack.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonBackConstraints)
        
        buttonBack.layer.borderWidth = 0.5
        buttonBack.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonPercent() {
        buttonPercent.translatesAutoresizingMaskIntoConstraints = false
        let buttonPercentConstraints = [
            buttonPercent.topAnchor.constraint(equalTo: parentView.topAnchor, constant: 0),
            buttonPercent.leadingAnchor.constraint(equalTo: buttonBack.trailingAnchor, constant: 0),
            buttonPercent.trailingAnchor.constraint(equalTo: buttonDivisionSign.leadingAnchor, constant: 0),
            buttonPercent.bottomAnchor.constraint(equalTo: buttonNine.topAnchor, constant: 0),
            buttonPercent.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonPercent.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonPercentConstraints)
        
        buttonPercent.layer.borderWidth = 0.5
        buttonPercent.layer.borderColor = UIColor.black.cgColor
    }
    
    private func setupButtonDivisionSign() {
        buttonDivisionSign.translatesAutoresizingMaskIntoConstraints = false
        let buttonDivisionSignConstraints = [
            buttonDivisionSign.topAnchor.constraint(equalTo: parentView.topAnchor, constant: 0),
            buttonDivisionSign.leadingAnchor.constraint(equalTo: buttonPercent.trailingAnchor, constant: 0),
            buttonDivisionSign.trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: 0),
            buttonDivisionSign.bottomAnchor.constraint(equalTo: buttonMultiplier.topAnchor, constant: 0),
            buttonDivisionSign.widthAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4),
            buttonDivisionSign.heightAnchor.constraint(equalTo: parentView.widthAnchor, multiplier: 1/4)
        ]
        NSLayoutConstraint.activate(buttonDivisionSignConstraints)
        
        buttonMultiplier.layer.borderWidth = 0.5
        buttonMultiplier.layer.borderColor = UIColor.black.cgColor
    }
    
    func publicMethod() {
    }

    private func privateMethod() {
    }
}

extension ViewController: SomeProtocol {
}

extension ViewController {
}

protocol SomeProtocol {
}
