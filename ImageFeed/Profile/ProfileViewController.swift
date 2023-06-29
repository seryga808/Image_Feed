import UIKit

final class ProfileViewController: UIViewController {
    
    private var labelFullName: UILabel?
    private var labelUserName: UILabel?
    private var labelGreetings: UILabel?
    private var imageViewUserPic: UIImageView?
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setProfilePhoto()

    }
    
    private func setProfilePhoto() {

        let profileImage = UIImage(named: "avatar")
        let imageViewUserPic = UIImageView(image: profileImage)
        imageViewUserPic.tintColor = .gray
        imageViewUserPic.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageViewUserPic)
        self.imageViewUserPic = imageViewUserPic
        
        let labelFullName = UILabel()
        labelFullName.text = "Екатерина Новикова"
        labelFullName.font = UIFont.boldSystemFont(ofSize: 23.0)
        labelFullName.textColor = UIColor(named: "ypWhite")
        labelFullName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelFullName)
        self.labelFullName = labelFullName
        
        let labelUserName = UILabel()
        labelUserName.text = "@ekaterina_nov"
        labelUserName.font = UIFont.systemFont(ofSize: 13.0)
        labelUserName.textColor = UIColor(named: "ypGray")
        labelUserName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelUserName)
        self.labelUserName = labelUserName
        
        let labelGreetings = UILabel()
        labelGreetings.text = "Hello, world"
        labelGreetings.font = UIFont.systemFont(ofSize: 13.0)
        labelGreetings.textColor = UIColor(named: "ypWhite")
        labelGreetings.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelGreetings)
        self.labelGreetings = labelGreetings
        
        let buttonLogout = UIButton.systemButton(
            with: UIImage(systemName: "ipad.and.arrow.forward")!,
            target: self,
            action: #selector(Self.didTapButton)
        )
        
        buttonLogout.tintColor = UIColor(named: "ypRed")
        buttonLogout.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonLogout)
        
        NSLayoutConstraint.activate([
            imageViewUserPic.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            imageViewUserPic.topAnchor.constraint(equalTo: view.topAnchor, constant: 76),
            imageViewUserPic.widthAnchor.constraint(equalToConstant: 70),
            imageViewUserPic.heightAnchor.constraint(equalToConstant: 70),

            labelFullName.leadingAnchor.constraint(equalTo: imageViewUserPic.leadingAnchor),
            labelFullName.topAnchor.constraint(equalTo: imageViewUserPic.bottomAnchor, constant: 8),
            
            labelUserName.leadingAnchor.constraint(equalTo: imageViewUserPic.leadingAnchor),
            labelUserName.topAnchor.constraint(equalTo: labelFullName.bottomAnchor, constant: 8),

            labelGreetings.leadingAnchor.constraint(equalTo: imageViewUserPic.leadingAnchor),
            labelGreetings.topAnchor.constraint(equalTo: labelUserName.bottomAnchor, constant: 8),

            buttonLogout.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -26),
            buttonLogout.centerYAnchor.constraint(equalTo: imageViewUserPic.centerYAnchor),
            buttonLogout.widthAnchor.constraint(equalToConstant: 20),
            buttonLogout.heightAnchor.constraint(equalToConstant: 22)
        ]);
    }
    
    @objc
    private func didTapButton() {
    }
    
}
