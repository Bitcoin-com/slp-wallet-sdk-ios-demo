//
//  ScannerBuilder.swift
//  SLPWalletDemo
//
//  Created by Angel Mortega on 2019/03/20.
//  Contributors Jean-Baptiste Dominguez.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit
import SLPWallet

class ScannerBuilder {
    
    func provide(_ scannerDelegate: ScannerDelegate) -> ScannerViewController {
        let viewController = UIStoryboard(name: "Scanner", bundle: nil).instantiateViewController(withIdentifier: "ScannerViewController") as! ScannerViewController
        
        let presenter = ScannerPresenter()
        let router = ScannerRouter(viewController: viewController)
        
        presenter.viewDelegate = viewController
        presenter.scannerDelegate = scannerDelegate
        presenter.router = router
        
        viewController.presenter = presenter
        
        return viewController
    }
}
