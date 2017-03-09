//
//  RHTask.m
//  ThingsToDo1
//
//  Created by Vishal on 05/05/16.
//  Copyright (c) 2016 ui. All rights reserved.
//

#import "RHTask.h"

@implementation RHTask


-(id)initWithName:(NSString *)name1 done:(BOOL)done1{
    self =[super init];
    
    if(self){
        self.name = name1;
        self.done = done1;
    }
    
    return self;
    
}


@end
