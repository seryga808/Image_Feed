import Foundation

let AccessKey = "-R1-Su0jAsiHOpMFpDUhfXBWZIaVzwpEllyWf0YIB0c"
let SecretKey = "zJM-mPq9A5k_RP7RnigsryX6F7RAZGCpSoEGOAzJtTA"
let RedirectURI = "urn:ietf:wg:oauth:2.0:oob"
let AccessScope = "public+read_user+write_likes"

let DefaultBaseURL = URL(string: "https://api.unsplash.com")
let UnsplashAuthorizeURLString = "https://unsplash.com/oauth/authorize"

let UnsplashHost = "unsplash.com"
let UnsplashAuthorizePath = "/oauth/authorize"

let unsplashAuthorizeOAuth2String = "/oauth/authorize/native"
let unsplashOAuth2TokenURLString = "https://unsplash.com/oauth/token"
let unsplashProfileUrlString = "/me"
let unsplashUsersUrlString = "/users"


struct AuthConfiguration {
    let accessKey: String
    let secretKey: String
    let redirectURI: String
    let accessScope: String
    let defaultBaseURL: URL
    let authURLString: String
    
    init(accessKey: String, secretKey: String, redirectURI: String, accessScope: String, authURLString: String, defaultBaseURL: URL) {
        self.accessKey = accessKey
        self.secretKey = secretKey
        self.redirectURI = redirectURI
        self.accessScope = accessScope
        self.defaultBaseURL = defaultBaseURL
        self.authURLString = authURLString
    }
    
    static var standard: AuthConfiguration {
        return AuthConfiguration(accessKey: AccessKey, secretKey: SecretKey, redirectURI: RedirectURI, accessScope: AccessScope, authURLString: UnsplashAuthorizeURLString, defaultBaseURL: DefaultBaseURL!)
    }
}
