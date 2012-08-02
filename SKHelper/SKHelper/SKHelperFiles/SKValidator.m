//
//  SKValidator.m
//  SKHelper
//
//  Created by Saroj Sharma on 02/08/12.
//  Copyright (c) 2012 _DayDreamer_. All rights reserved.
//

#import "SKValidator.h"

static inline BOOL SKIsEmptyOrNull(id obj) {
    return obj == nil
	|| (NSNull *)obj == [NSNull null]
	|| ([obj respondsToSelector:@selector(length)] && [obj length] == 0)
	|| ([obj respondsToSelector:@selector(count)] && [obj count] == 0);
}

@implementation SKValidator

+ (BOOL)IsValidateEmail:(NSString *)email 
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    BOOL isValid = [emailTest evaluateWithObject:email];
    return isValid;
}

@end
