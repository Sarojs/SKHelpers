//
//  NSString+SKNSString.h
//  SKHelper
//
//  Created by Saroj Sharma on 12/10/13.
//  Copyright (c) 2013 Saroj Sharma. All rights reserved.
//

#import <Foundation/Foundation.h>

// Static inline method to validate if its really an NSString object.
static inline BOOL SKIsEmptyOrNull(id obj) {
    return obj == nil
	|| (NSNull *)obj == [NSNull null]
	|| ([obj respondsToSelector:@selector(length)] && [obj length] == 0)
	|| ([obj respondsToSelector:@selector(count)] && [obj count] == 0);
}

@interface NSString (SKNSString)

+ (BOOL)isValidateEmail:(NSString *)email;
- (BOOL)isValidateEmail:(NSString *)email;

@end

@implementation NSString (SKNSString)

+ (BOOL)isValidateEmail:(NSString *)email
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    BOOL isValid = [emailTest evaluateWithObject:email];
    return isValid;
}

- (BOOL)isValidateEmail:(NSString *)email{
    return [[self class] isValidateEmail:email];
}

@end