class PlusButton: UIButton {
    @IBInspectable var lineWidth: CGFloat = 15
    @IBInspectable var strokeColor = UIColor.green.cgColor
    
    var isClicked = true
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }

        let width = rect.width
        let height = rect.height
        
        let box = bounds.insetBy(dx: width * 0.25,
                                 dy: height * 0.25)
        
        context.beginPath()
        context.addEllipse(in: box)
        context.setLineWidth(lineWidth)
        context.setStrokeColor(strokeColor)
//        context.drawPath(using: .stroke)
        
        context.setLineCap(.round)
        context.move(to: CGPoint(x: width / 2, y: box.minY + 20))
        context.addLine(to: CGPoint(x: width / 2, y: box.maxY - 20))
//        context.drawPath(using: .stroke)

        context.move(to: CGPoint(x: box.minX + 20, y: box.midY))
        context.addLine(to: CGPoint(x: box.maxX - 20, y: box.midY))
        context.drawPath(using: .stroke)
        context.closePath()
    }
}
