//
//  AppDelegate.swift
//
// Copyright (c) 2017 Florian PETIT <florianp37@me.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//


import UIKit
import UserNotifications
import RPFramework
import PluggableApplicationDelegate

@UIApplicationMain
class AppDelegate: RPApplicationDelegate {

    override var services: [ApplicationService] {
        return [
            ApplicationLifeCycleService(),
            ApplicationStateRestorationService()
        ]
    }
}


class ApplicationLifeCycleService : RPApplicationLifeCycleService {
    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        print("subclass")
        return true
    }
}

class ApplicationStateRestorationService : RPApplicationStateRestorationService {
    override func application(_ application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool {
        return false && super.application(application, shouldSaveApplicationState: coder)
    }

}
