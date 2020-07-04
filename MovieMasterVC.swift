//
//  MovieMasterVC.swift
//  Classwork6
//
//  Created by Mohammad Alanazi on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

var selectedMovie = Movie(movieName: "", movieReleaseDate: 2000, actors: [""], rating: 0.0, pgRating: "" )

class MovieMasterVC: UIViewController {
    
    @IBOutlet weak var MarvelImg0: UIButton!
    @IBOutlet weak var MarvelImg1: UIButton!
    @IBOutlet weak var MarvelImg2: UIButton!
    @IBOutlet weak var MarvelImg3: UIButton!
    @IBOutlet weak var MarvelImg4: UIButton!
    @IBOutlet weak var MarvelImg5: UIButton!
    
    @IBOutlet weak var DcImg0: UIButton!
    @IBOutlet weak var DcImg1: UIButton!
    @IBOutlet weak var DcImg2: UIButton!
    @IBOutlet weak var DcImg3: UIButton!
    @IBOutlet weak var DcImg4: UIButton!
    @IBOutlet weak var DcImg5: UIButton!

    


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMarvelImages()
        setDcImages()
        // Do any additional setup after loading the view.
        
        
        
    }
    func setMarvelImages() {
        
        MarvelImg0.setBackgroundImage(UIImage(named: MarvelMovieData[0].movieName), for: .normal)
        MarvelImg1.setBackgroundImage(UIImage(named: MarvelMovieData[1].movieName), for: .normal)
        MarvelImg2.setBackgroundImage(UIImage(named: MarvelMovieData[2].movieName), for: .normal)
        MarvelImg3.setBackgroundImage(UIImage(named: MarvelMovieData[3].movieName), for: .normal)
        MarvelImg4.setBackgroundImage(UIImage(named: MarvelMovieData[4].movieName), for: .normal)
        MarvelImg5.setBackgroundImage(UIImage(named: MarvelMovieData[5].movieName), for: .normal)
    }
    
    
    func setDcImages() {
        
        DcImg0.setBackgroundImage(UIImage(named: DCMovieData[0].movieName), for: .normal)
        DcImg1.setBackgroundImage(UIImage(named: DCMovieData[1].movieName), for: .normal)
        DcImg2.setBackgroundImage(UIImage(named: DCMovieData[2].movieName), for: .normal)
        DcImg3.setBackgroundImage(UIImage(named: DCMovieData[3].movieName), for: .normal)
        DcImg4.setBackgroundImage(UIImage(named: DCMovieData[4].movieName), for: .normal)
        DcImg5.setBackgroundImage(UIImage(named: DCMovieData[5].movieName), for: .normal)
                                        
           }
    
    @IBAction func MarvelButtons(_ sender: UIButton) {
        print("Marvel", sender.tag)
        selectedMovie = MarvelMovieData[sender.tag]
        performSegue(withIdentifier: "goToMovieDetail", sender: nil)
        
    }
    
    @IBAction func DCButtons(_ sender: UIButton) {
        print("DC", sender.tag)
        selectedMovie = DCMovieData[sender.tag]
        performSegue(withIdentifier: "goToMovieDetail", sender: nil)
    

            
  
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
