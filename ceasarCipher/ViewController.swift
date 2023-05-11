//
//  ViewController.swift
//  ceasarCipher
//
//  Created by Jacob Davis on 2/23/23.
//

import UIKit
class ViewController: UIViewController {
    var letterArray = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var characterArray: [String] = [ ]
    var encodeArray: [String] = [ ]
    var decodeArray: [String] = [ ]
    var characterOffset = 4
    var decodedMessage = "cheese"
    var encodedMessage = ""
    var num = 0
    var encodeStringArray = ""
    var decodeStringArray = ""
    @IBOutlet weak var messageInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func textSample(){
        for i in messageInput.text!{
            characterArray.append(String((i)))
        }
        print(characterArray)
    }
    @IBAction func encodeBtn(_ sender: UIButton) {
        textSample()
        encodeMessage()
    }
    @IBAction func decodeBtn(_ sender: UIButton) {
        decodeMessage()
    }
    @IBAction func reset(_ sender: Any) {
        characterArray.removeAll()
        encodeArray.removeAll()
    }
    func encodeMessage(){
        for i in 0..<characterArray.count{
            for p in 0..<letterArray.count{
                if characterArray[i] == letterArray[p]{
                    characterArray[i] = letterArray[p + characterOffset]
                    encodeArray.append(characterArray[i])
                    break
                }
            }
        }
        encodeStringArray = encodeArray.joined()
        print("Encode Message: \(encodeStringArray)")
    }
    func decodeMessage(){
        for i in 0..<characterArray.count{
            for p in 0..<letterArray.count{
                if characterArray[i] == letterArray[p]{
                    characterArray[i] = letterArray[p - characterOffset]
                    decodeArray.append(characterArray[i])
                    break
                }
            }
        }
        decodeStringArray = decodeArray.joined()
        print("Decode Message:  \(decodeStringArray)")
    }
}

