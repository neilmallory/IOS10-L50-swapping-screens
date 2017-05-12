//
//  MusicListVCViewController.swift
//  swappingScreens
//
//  Created by neil mallory on 12/05/2017.
//  Copyright © 2017 neil mallory. All rights reserved.
//

import UIKit

class MusicListVCViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func load3rdScreenPressed(_ sender: Any) {
        performSegue(withIdentifier: "playSongVC", sender: "Humpty Dumpty sat on a wall")
    }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
        if let destination = segue.destination as?
            PlaySongVC{
        
            if let song = sender as? String {
                destination.selectedSong = song
            
            }
        }
    }
    

}
