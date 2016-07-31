import UIKit

public class ArrowButton: UIButton {

  public lazy var label: UILabel = self.makeLabel()
  public lazy var arrow: UIImageView = self.makeArrow()

  public init() {
    super.init(frame: CGRect.zero)

    addSubview(label)
    addSubview(arrow)
  }

  public required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  public override func layoutSubviews() {
    super.layoutSubviews()

    label.center = CGPoint(x: bounds.size.width / 2, y: bounds.size.height / 2)

    arrow.frame.size = CGSize(width: 15, height: 15)
    arrow.center = CGPoint(x: label.frame.maxX + 35, y: bounds.size.height / 2)
  }

  // MARK: - Views

  func makeLabel() -> UILabel {
    let label = UILabel()
    label.textColor = UIColor.whiteColor()
    label.font = UIFont.boldSystemFontOfSize(15)
    label.textAlignment = .Center

    return label
  }

  func makeArrow() -> UIImageView {
    let arrow = UIImageView()
    arrow.image = AssetManager.image("dropdown_arrow")?.imageWithRenderingMode(.AlwaysTemplate)
    arrow.tintColor = UIColor.whiteColor()

    return arrow
  }
}
