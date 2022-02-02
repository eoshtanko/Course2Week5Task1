import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var launchTime: UILabel!
    @IBOutlet weak var appearanceTime: UILabel!
    
    @IBOutlet weak var pushButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("View: \(String(describing: view))")
        launchTime.text = currentTimeString()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "Update",style: .plain, target: self, action: #selector(self.action(sender:)))
    }
    
    @objc func action(sender: UIBarButtonItem) {
        updateAppearanceTime()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateAppearanceTime()
    }
    
    private func updateAppearanceTime() {
        appearanceTime.text = currentTimeString()
    }
    
    private func currentTimeString() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        return dateFormatter.string(from: date)
    }
}
