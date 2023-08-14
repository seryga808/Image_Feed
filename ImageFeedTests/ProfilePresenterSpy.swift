import Foundation
import ImageFeed

final class ProfilePresenterSpy: ProfilePresenterProtocol {
    var view: ImageFeed.ProfileViewControllerProtocol?
    var viewDidLoadCalled: Bool = false
    var logOutCalled: Bool = false
    
    func setNotificationObserver() {
    }
    
    func viewDidLoad(){
        viewDidLoadCalled = true
    }
    
    func logOut() {
        logOutCalled = true
    }
}
