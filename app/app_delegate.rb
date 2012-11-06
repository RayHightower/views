class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    navController = UINavigationController.alloc.initWithRootViewController(HomeController.new)

    @window.rootViewController = navController 
    @window.makeKeyAndVisible

    @window.backgroundColor = UIColor.grayColor


    true
  end
end
