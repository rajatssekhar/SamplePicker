//
//  PickerSampleViewController.h
//  PickerSample
//
//  Created by Raja on 1/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerSampleViewController : UIViewController {
	IBOutlet UIPickerView *pickerView;
    IBOutlet UILabel *chosenval;
	NSMutableArray *arrayColors;
}

@end

