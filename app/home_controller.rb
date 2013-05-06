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
    button.setTitle("Next view", forState: UIControlStateNormal)
    button.addTarget(self,
                     action: "moveToChildView:",
                     forControlEvents: UIControlEventTouchUpInside)

    button2 = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button2.frame = [[15, 300], [280, 50]]
    button2.setTitle("Next view", forState: UIControlStateNormal)
    button2.addTarget(self,
                     action: "moveToChildView:",
                     forControlEvents: UIControlEventTouchUpInside)

    view.addSubview(label)
    view.addSubview(button)
    view.addSubview(button2)
  end

  def moveToChildView(sender)
    self.parentViewController.pushViewController(UIViewController.alloc.init,animated:true)
  end

  def moveToAnotherChildView(sender)
    self.parentViewController.pushViewController(UIViewController.alloc.init,animated:true)
  end

end
