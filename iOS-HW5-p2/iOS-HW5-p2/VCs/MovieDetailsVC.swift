//
//  MovieDetailsVC.swift
//  iOS-HW5-p2
//
//  Created by Huda on 7/5/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import UIKit
import AVFoundation

class MovieDetailsVC: UIViewController {
    var movieData: Movie!
    @IBOutlet weak var movieName: UINavigationItem!
    @IBOutlet weak var MovieImgView: UIImageView!
    @IBOutlet weak var movieView: UIView!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var ratingView: UIView!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var yearView: UIView!
    @IBOutlet weak var pgRatingLabel: UILabel!
    @IBOutlet weak var pgRatingView: UIView!
    @IBOutlet weak var actor1ImgView: UIImageView!
    @IBOutlet weak var actor2ImgView: UIImageView!
    @IBOutlet weak var actor3ImgView: UIImageView!
    @IBOutlet weak var actor1NameLabel: UILabel!
    @IBOutlet weak var actor2NameLabel: UILabel!
    @IBOutlet weak var actor3NameLabel: UILabel!
    var themeSong: AVAudioPlayer?
    
        override func viewDidLoad() {
        super.viewDidLoad()
            configureLabels()
            setMovieDetails()
            playThemeSong(musicName: movieData.songName())
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func configureLabels()
    {
        movieView.layer.shadowColor = #colorLiteral(red: 0.4513331652, green: 0.5913017392, blue: 0.5793967843, alpha: 1)
        movieView.layer.shadowRadius = 8
        movieView.layer.shadowOpacity = 0.5
        
        ratingView.layer.cornerRadius = 30
        ratingView.layer.shadowColor = #colorLiteral(red: 0.4513331652, green: 0.5913017392, blue: 0.5793967843, alpha: 1)
        ratingView.layer.shadowRadius = 4
        ratingView.layer.shadowOpacity = 0.5
    
        pgRatingView.layer.cornerRadius = 30
        pgRatingView.layer.shadowColor = #colorLiteral(red: 0.4513331652, green: 0.5913017392, blue: 0.5793967843, alpha: 1)
        pgRatingView.layer.shadowRadius = 4
        pgRatingView.layer.shadowOpacity = 0.5
    
        yearView.layer.cornerRadius = 30
        yearView.layer.shadowColor = #colorLiteral(red: 0.4513331652, green: 0.5913017392, blue: 0.5793967843, alpha: 1)
        yearView.layer.shadowRadius = 4
        yearView.layer.shadowOpacity = 0.5
    }
    
    func setMovieDetails()
      {
        movieName.title = movieData.name
        MovieImgView.image = UIImage(named: movieData.name)
        ratingLabel.text = "\(movieData.rating)"
        pgRatingLabel.text = movieData.PGrate
        yearLabel.text = "\(movieData.movieReleaseDate)"
        actor1ImgView.image = UIImage(named: movieData.Actors[0])
        actor1NameLabel.text = movieData.Actors[0]
        actor2ImgView.image = UIImage(named: movieData.Actors[1])
        actor2NameLabel.text = movieData.Actors[1]
        actor3ImgView.image = UIImage(named: movieData.Actors[2])
        actor3NameLabel.text = movieData.Actors[2]
      }
    
    func playThemeSong(musicName: String) {
        let path = Bundle.main.path(forResource: musicName, ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            themeSong = try AVAudioPlayer(contentsOf: url)
            themeSong?.play()
        } catch {
            // couldn't load file :(
        }
    }
}
