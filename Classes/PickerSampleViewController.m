//
//  PickerSampleViewController.m
//  PickerSample
//
//  Created by Raja on 1/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PickerSampleViewController.h"

@implementation PickerSampleViewController



/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
 if (self) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	arrayColors = [[NSMutableArray alloc] init];
	[arrayColors addObject:@"Red"];
	[arrayColors addObject:@"Orange"];
	[arrayColors addObject:@"Yellow"];
	[arrayColors addObject:@"Green"];
	[arrayColors addObject:@"Blue"];
	[arrayColors addObject:@"Indigo"];
	[arrayColors addObject:@"Violet"];
    [super viewDidLoad];
}



/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
	
	return 1;
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
	
	return [arrayColors count];
}

- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	
	return [arrayColors objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
	chosenval.text = [NSString stringWithFormat:@"Selected Color: %@. Index of selected color: %d", [arrayColors objectAtIndex:row], row];
	NSLog(@"Selected Color: %@. Index of selected color: %d", [arrayColors objectAtIndex:row], row);
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
