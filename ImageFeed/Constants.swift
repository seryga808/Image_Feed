import Foundation

let accessKey = "-R1-Su0jAsiHOpMFpDUhfXBWZIaVzwpEllyWf0YIB0c"
let secretKey = "zJM-mPq9A5k_RP7RnigsryX6F7RAZGCpSoEGOAzJtTA"
let redirectURI = "urn:ietf:wg:oauth:2.0:oob"
let accessScope = "public+read_user+write_likes"

let defaultBaseURL = URL(string: "https://api.unsplash.com")

let unsplashHost = "unsplash.com"
let unsplashAuthorizePath = "/oauth/authorize"

let unsplashAuthorizeOAuth2String = "/oauth/authorize/native"
let unsplashOAuth2TokenURLString = "https://unsplash.com/oauth/token"
let unsplashProfileUrlString = "/me"
let unsplashUsersUrlString = "/users"
