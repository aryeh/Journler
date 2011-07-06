//
//  IndexSearchField.m
//  Journler
//
//  Created by Phil Dow on 3/20/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "IndexSearchField.h"


@implementation IndexSearchField

- (BOOL)becomeFirstResponder
{
	// let the delegate know that we become first responder
	
	#ifdef __DEBUG__
	NSLog(@"%@ %s",[self className],_cmd);
	#endif
	
	BOOL didBecome = [super becomeFirstResponder];
	if ( didBecome == YES && [[self delegate] respondsToSelector:@selector(searchFieldDidBecomeFirstResponder:)] )
		[[self delegate] searchFieldDidBecomeFirstResponder:self];
	
	return didBecome;
}

@end