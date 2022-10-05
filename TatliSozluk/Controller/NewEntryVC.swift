//
//  NewEntryVC.swift
//  TatliSozluk
//
//  Created by Umut Can Ertürk on 6.10.2022.
//

import UIKit

class NewEntryVC: UIViewController {

    @IBOutlet weak var sgmntCategories: UISegmentedControl!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtEntry: UITextView!
    @IBOutlet weak var shareButton: UIButton!
    let placeholderText = "Start a new thread..."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shareButton.layer.cornerRadius = 5
        txtEntry.layer.cornerRadius = 8
        txtEntry.text = placeholderText
        txtEntry.textColor = .lightGray
        txtEntry.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sgmntCategoriesSelected(_ sender: UISegmentedControl) {
    }
    
    @IBAction func shareButtonPressed(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension NewEntryVC: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == placeholderText {
            textView.text = ""
            textView.textColor = .darkGray
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = placeholderText
            textView.textColor = .lightGray
        }
    }
}
