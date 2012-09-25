class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = HomeController.new
    @window.makeKeyAndVisible

    @window.backgroundColor = UIColor.grayColor

    true
  end
end
