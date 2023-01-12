//
//  NetworkBase.swift
//  NotToDo
//
//  Created by 강윤서 on 2023/01/12.
//

import Foundation

struct NetworkBase {
    
    static func judgeStatus<T: Codable>(by statusCode: Int, _ data: Data, _ t: T.Type) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(GeneralResponse<T>.self, from: data)
        else { return .pathErr }
        print(decodedData)
        switch statusCode {
        case 200:
            return .success(decodedData.data)
        case 201..<300:
            return .success(decodedData.status)
        case 400..<500:
            return .requestErr(decodedData.status)
        case 500:
            return .serverErr
        default:
            return .networkFail
        }
    }
}
