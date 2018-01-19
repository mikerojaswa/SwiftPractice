import UIKit

class PageViewController: UIPageViewController
{
        typealias SBAApplePayAccountCreateUIPageSegueHandler = (_ previousViewController: UIViewController?, _ nextViewController: UIViewController?) -> Void
    
    fileprivate lazy var pages: [UIViewController] = {
        return [
            self.getViewController(withIdentifier: "AViewController"),
            self.getViewController(withIdentifier: "BViewController"),
            self.getViewController(withIdentifier: "CViewController"),
            self.getViewController(withIdentifier: "DViewController")
        ]
    }()
    
    var currentViewController: UIViewController? {
        return pages[0]
    }
    
    fileprivate func getViewController(withIdentifier identifier: String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: identifier)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        if let firstVC = pages.first
        {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func nextPage(completion: @escaping SBAApplePayAccountCreateUIPageSegueHandler) {
            let nextViewController = pages[1]
            prepareAndSegue(nextViewController, direction: .forward, completion: completion)
    }
    
    private func prepareAndSegue(_ nextViewController: UIViewController, direction: UIPageViewControllerNavigationDirection, completion: @escaping SBAApplePayAccountCreateUIPageSegueHandler) {
        
        let currentViewController = self.currentViewController as! AViewController

        if let nextViewController = nextViewController as? BViewController {
            goToViewController(nextViewController, direction: direction, animated: false, completion: nil)
            completion(currentViewController, nextViewController)
        }

    }
    
    func goToViewController(_ viewController: UIViewController?, direction: UIPageViewControllerNavigationDirection, animated: Bool, completion: ((Bool) -> Void)?) {
        if let vc = viewController, let _ = vc.restorationIdentifier {
            setViewControllers([vc], direction: direction, animated: animated, completion: completion)
        }
    }
    
}






