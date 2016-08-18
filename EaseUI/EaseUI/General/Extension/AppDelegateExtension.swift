//
//  AppDelegateExtension.swift
//  EaseUI
//
//  Created by QingMingZhang on 16/8/18.
//  Copyright © 2016年 极客栈. All rights reserved.
//

import UIKit

// MARK: - 环信相关
// 环信应用相关信息查询、配置:https://console.easemob.com/app_list.html

/// 环信注册的AppKey
let kEaseMobAppKey = "laznrbfe#easeui"
/// 环信配置的APNS推送证书名称(管理后台)
#if DEBUG
let kEaseMobApnsCertName = "apns_ease_ui_dev"
#else
let kEaseMobApnsCertName = "apns_ease_ui"
#endif


extension AppDelegate {
    
    /**
     配置环信ios_IM_sdk_V3.1.4
     */
    func configureEaseMob() {
        let options = EMOptions(appkey: kEaseMobAppKey)
        options.apnsCertName = kEaseMobApnsCertName
        EMClient.sharedClient().initializeSDKWithOptions(options)
    }
    
    
}
