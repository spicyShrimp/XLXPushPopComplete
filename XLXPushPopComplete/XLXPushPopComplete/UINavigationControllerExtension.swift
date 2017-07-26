//
//  UINavigationControllerExtension.swift
//  XLXPushPopComplete
//
//  Created by charles on 2017/7/26.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit

extension UINavigationController {
    
    // Uses a horizontal slide transition. Has no effect if the view controller is already in the stack.
    open func pushViewController(_ viewController: UIViewController, animated: Bool, complete:(()->Void)? = nil) {
        CATransaction.setCompletionBlock(complete)
        CATransaction.begin()
        pushViewController(viewController, animated: animated)
        CATransaction.commit()
    }
    
    // Returns the popped controller
    open func popViewController(animated: Bool, complete:(()->Void)? = nil) -> UIViewController? {
        let poppedViewController:UIViewController?
        
        CATransaction.setCompletionBlock(complete)
        CATransaction.begin()
        poppedViewController = popViewController(animated: animated)
        CATransaction.commit()
        return poppedViewController
    }
    
    // Pops view controllers until the one specified is on top. Returns the popped controllers.
    open func popToViewController(_ viewController: UIViewController, animated: Bool, complete:(()->Void)? = nil) -> [UIViewController]? {
        let viewControllers:[UIViewController]?
        
        CATransaction.setCompletionBlock(complete)
        CATransaction.begin()
        viewControllers = popToViewController(viewController, animated: animated)
        CATransaction.commit()
        return viewControllers
        
    }
    
    // Pops until there's only a single view controller left on the stack. Returns the popped controllers.
    open func popToRootViewController(animated: Bool, complete:(()->Void)? = nil) -> [UIViewController]? {
        let viewControllers:[UIViewController]?
        
        CATransaction.setCompletionBlock(complete)
        CATransaction.begin()
        viewControllers = popToRootViewController(animated: animated)
        CATransaction.commit()
        return viewControllers
    }
}
