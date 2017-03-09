//
//  RHTask.h
//  ThingsToDo1
//
//  Created by Vishal on 05/05/16.
//  Copyright (c) 2016 ui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RHTask : NSObject

@property(nonatomic,strong) NSString *name;
@property(nonatomic,assign)BOOL done;

-(id)initWithName:(NSString *)name1 done:(BOOL)done1;


@end
