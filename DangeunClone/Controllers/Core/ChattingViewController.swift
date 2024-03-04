//
//  ChattingViewController.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/4/24.
//

import UIKit

final class ChattingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "채팅"
        addRightBarButtons()
    }
    
    private func addRightBarButtons() {
        navigationItem.rightBarButtonItems = [addNoticeButton(), addQRCodeButton()]
    }
    
    private func addNoticeButton() -> UIBarButtonItem {
        return UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: self, action: #selector(didTapNotice))
    }
    
    private func addQRCodeButton() -> UIBarButtonItem {
        return UIBarButtonItem(image: UIImage(systemName: "qrcode.viewfinder"), style: .plain, target: self, action: #selector(didTapQRCode))
    }
    
    @objc private func didTapNotice() {
        
    }
    
    @objc private func didTapQRCode() {
        
    }
}
