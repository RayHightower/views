class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    navController = UINavigationController.alloc.initWithRootViewController(HomeController.new)

    @window.rootViewController = navController

    @window.backgroundColor = UIColor.grayColor


    true
  end
end
