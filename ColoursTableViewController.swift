

import UIKit

class ColoursTableViewController: UIViewController {
   
    var colors: [UIColor] = [] //initialse empty array for colors
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()

       //all fuctions that you want to be seen on the view controller will need to be called here
    }
    
    func addRandomColors(){
        for _ in 0..<50{
            colors.append(createRandomColor())
        }
    }

    func createRandomColor() -> UIColor {
        
        let randomColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
        
        return randomColor
    }
    
    
}
//for code organisation we move the two functions into an extension with viewdidload at the top
extension ColoursTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count //dynamic - will add colors in array which is 50 anyway
    }
      //how many rows to show
    //will also be the number of colours in the array
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell  = tableView.dequeueReusableCell(withIdentifier: "ColorCell")else{
            return UITableViewCell()
        }
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        
        return cell
        
        // initalising blank cells
        //cells that are created are not all shown on the screen - there is a queue of cells that are populated as you scroll and the ones that dont appear are taken out the queue (dequeued)
        // cell? is an optional so we can unwrap it using guard
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toColoursDetailVC", sender: nil)
        
        //performSegue - perform the action of navigating to the third storyboard for any cell that is clicked
    }
    
}

//delegate methods - every time a cell appears on the screen the delegate function is triggered
//delegate functions wait to be called and sit on standby
