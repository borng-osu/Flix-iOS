//
//  MovieDetailViewController.swift
//  Flix
//
//  Created by Born4Film on 10/4/21.
//

import UIKit
import AlamofireImage

class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["overview"] as? String
        
        let base = "https://image.tmdb.org/t/p/"
        let poster = movie["poster_path"] as! String
        let posterUrl = URL(string: base + "w185" + poster)
        
        posterImage.af.setImage(withURL: posterUrl!)
        
        let backdrop = movie["backdrop_path"] as! String
        let backUrl = URL(string: base + "w780" + backdrop)
        
        bgImage.af.setImage(withURL: backUrl!)
        
        
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
