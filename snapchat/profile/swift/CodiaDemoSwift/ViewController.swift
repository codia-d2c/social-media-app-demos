import UIKit

class ViewController: UIViewController {
    var scrollView: UIScrollView!
    var mainView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView = UIScrollView(frame: CGRect(x: 0, y: statusBarHeight(), width: view.bounds.width, height: view.bounds.height - statusBarHeight()))
        view.addSubview(scrollView)
        view.backgroundColor = .white
        mainView = ProfileContainer(frame: CGRect(x: 0, y: 0, width: 401, height: 858))
        scrollView.contentSize = fitScreen(mainView)
        scrollView.addSubview(mainView)
    }

    func statusBarHeight() -> CGFloat {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return 0
        }
        return windowScene.statusBarManager?.statusBarFrame.size.height ?? 0
    }

    func fitScreen(_ view: UIView) -> CGSize {
        let width = view.frame.size.width
        let screenWidth = UIScreen.main.bounds.size.width
        if #available(iOS 16.0, *) {
            view.anchorPoint = CGPoint(x: (width / screenWidth) / 2, y: (width / screenWidth) / 2)
        } else {
            view.layer.anchorPoint = CGPoint(x: (width / screenWidth) / 2, y: (width / screenWidth) / 2)
        }
        view.transform = CGAffineTransform(scaleX: screenWidth / width, y: screenWidth / width)
        return CGSize(width: screenWidth, height: view.frame.size.height)
    }
}
