class ViewController: UIViewController {

    @IBOutlet weak var plusButton: PlusButton!

    private var count: Int = 0

    @IBAction func rotate2(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5) {
            if !self.plusButton.isClicked {
                self.plusButton.transform = CGAffineTransform(rotationAngle: .pi * 0.25)
            } else {
                self.plusButton.transform = CGAffineTransform(rotationAngle: 0)
            }
            self.plusButton.isClicked.toggle()
        }
    }
}

