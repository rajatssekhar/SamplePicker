//
//  PickerSampleAppDelegate.h
//  PickerSample
//
//  Created by Raja on 1/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PickerSampleViewController;

@interface PickerSampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PickerSampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PickerSampleViewController *viewController;

@end

