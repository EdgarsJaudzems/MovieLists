//
//  DetailViewController.swift
//  MovieLists
//
//  Created by Edgars Jaudzems on 03/02/2021.
//

import UIKit

class DetailViewController: UIViewController {

    var movie: Movie!
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieDirector: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if movie != nil {
            movieImageView.image = UIImage(named: movie.poster)
            movieNameLabel.text = movie.title
            movieYearLabel.text = "Year: " + movie.year
            movieRating.text = "Rating: " + movie.rating
            movieDirector.text = "Director: " + movie.director

        }
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
