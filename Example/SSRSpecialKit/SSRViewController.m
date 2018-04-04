//
//  SSRViewController.m
//  SSRSpecialKit
//
//  Created by ordinaryITM on 04/04/2018.
//  Copyright (c) 2018 ordinaryITM. All rights reserved.
//

#import "SSRViewController.h"

@interface SSRViewController ()

@end

@implementation SSRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSInteger scale = [UIScreen mainScreen].scale;
    NSBundle *currentBundle = [NSBundle bundleForClass:[self class]];
    NSString *name = [NSString stringWithFormat:@"%@@%zdx",@"",scale];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (instancetype)ff_imagePathWithName:(NSString *)imageName bundle:(NSString *)bundle targetClass:(Class)targetClass {
    NSInteger scale = [[UIScreen mainScreen] scale];
    NSBundle *currentBundle = [NSBundle bundleForClass:targetClass];
    NSString *name = [NSString stringWithFormat:@"%@@%zdx",imageName,scale];
    NSString *dir = [NSString stringWithFormat:@"%@.bundle",bundle];
    NSString *path = [currentBundle pathForResource:name ofType:@"png" inDirectory:dir];
    return path ? [UIImage imageWithContentsOfFile:path] : nil;
}



@end
