

import UIKit

class ColoursTableViewController: UIViewController {
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
//for code organisation we move the two functions into an extension with viewdidload at the top
extension ColoursTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
      //how many rows to show
    //will also be the number of colours in the array
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
        
        // initalising blank cells
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toColoursDetailVC", sender: nil)
        
        //performSegue - perform the action of navigating to the third storyboard for any cell that is clicked
    }
    
}

//delegate methods - every time a cell appears on the screen the delegate function is triggered
//delegate functions wait to be called and sit on standby
