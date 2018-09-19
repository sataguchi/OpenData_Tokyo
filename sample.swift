import APIKit
import SwiftyJSON

protocol TokyoChallengeAPIRequest: Request {
    var params: [String: Any] { get set }
}

extension TokyoChallengeAPIRequest {
    var baseURL: URL {
        return URL(string: "https://api-tokyochallenge.odpt.org/api/v4/")!
    }
    var parameters: Any? {
        var params = self.params
        // ACL_CONSUMERKEYを取得したアクセストークンで置き換える
        params["acl:consumerKey"] = ACL_CONSUMERKEY
        return params
    }
    var method: HTTPMethod {
        return .get
    }
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> JSON {
        return JSON(object)
    }
}

enum TokyoChallengeAPI {
    // ここにいろいろ
}