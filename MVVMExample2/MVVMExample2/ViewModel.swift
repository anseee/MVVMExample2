//
//  ViewModel.swift
//  MVVMExample2
//
//  Created by 박성원 on 2017. 6. 26..
//  Copyright © 2017년 sungwon. All rights reserved.
//

import UIKit

class ViewModel: NSObject {

    func numberOfItemsInSection(section :Int) -> Int {
        return 10
    }
    
    func titleForItemAtIndexPath(indexPath: IndexPath) -> String {
        return "hello"
    }
}
