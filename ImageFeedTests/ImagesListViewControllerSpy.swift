import Foundation
@testable import ImageFeed
import UIKit

final class ImagesListViewControllerSpy: ImagesListViewControllerProtocol {
    var presenter: ImagesListPresenterProtocol?
    func updateTableViewAnimated(oldCount: Int, newCount: Int) {
    }
    
    func showErrorAlert() {
    }
}
