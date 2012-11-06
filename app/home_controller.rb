class HomeController < UIViewController
  def loadView
    self.view = UIView.alloc.init
  end

  def viewDidLoad
    self.title = "Home Nav Controller"
    label = UILabel.alloc.initWithFrame([[15,100], [280,140]])
    label.text = "Hello Everybody!"
    label.font = UIFont.boldSystemFontOfSize(25)
    label.textColor = UIColor.blueColor
    label.textAlignment = UITextAlignmentCenter

    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.frame = [[15, 300], [280, 50]]
    button.setTitle("Move to next view", forState: UIControlStateNormal)
    button.addTarget(self,
                     action: "movetoChildView:",
                     forControlEvents: UIControlEventTouchUpInside)

    view.addSubview(label)
    view.addSubview(button)
  end

end
