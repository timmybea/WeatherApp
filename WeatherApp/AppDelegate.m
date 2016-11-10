//
//  AppDelegate.m
//  WeatherApp
//
//  Created by Tim Beals on 2016-11-09.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "AppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@interface AppDelegate ()

@property (nonatomic) UITabBarController *tabBarController;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //instantiate cities
    City *vancouver = [[City alloc] initWithCityName:@"Vancouver" weatherDescription:@"cloudy" temperature:13 precipitation:19 humidity:97 andWind:2];
    City *auckland = [[City alloc] initWithCityName:@"Auckland" weatherDescription:@"mostly cloudy" temperature:21 precipitation:0 humidity:61 andWind:23];
    City *hongKong = [[City alloc] initWithCityName:@"Hong Kong" weatherDescription:@"Cloudy" temperature:15 precipitation:54 humidity:77 andWind:19];
    City *newYork = [[City alloc] initWithCityName:@"New York" weatherDescription:@"Cloudy" temperature:11 precipitation:12 humidity:76 andWind:14];
    City *rome = [[City alloc] initWithCityName:@"Rome" weatherDescription:@"partly cloudy" temperature:8 precipitation:7 humidity:90 andWind:6];
    
    //set cities in a view controller
    CityViewController *vancouverVC = [[CityViewController alloc] initWithCity:vancouver];
    CityViewController *aucklandVC = [[CityViewController alloc] initWithCity:auckland];
    CityViewController *hongKongVC = [[CityViewController alloc] initWithCity:hongKong];
    CityViewController *newYorkVC = [[CityViewController alloc] initWithCity:newYork];
    CityViewController *romeVC = [[CityViewController alloc] initWithCity:rome];
    
    //put view controllers into nav
    UINavigationController *vancouverNavCon = [[UINavigationController alloc] initWithRootViewController:vancouverVC];
    UINavigationController *aucklandNavCon = [[UINavigationController alloc] initWithRootViewController:aucklandVC];
    UINavigationController *hongKongNavCon = [[UINavigationController alloc] initWithRootViewController:hongKongVC];
    UINavigationController *newYorkNavCon = [[UINavigationController alloc] initWithRootViewController:newYorkVC];
    UINavigationController *romeNavCon = [[UINavigationController alloc] initWithRootViewController:romeVC];
    
    //Add Icons
    UIImage *img = [UIImage imageNamed:@"Maple Leaf-48"];
    vancouverNavCon.tabBarItem.image = img;
    img = [UIImage imageNamed:@"Kiwi Bird-48"];
    aucklandNavCon.tabBarItem.image = img;
    img = [UIImage imageNamed:@"Hongkong Dollar-48"];
    hongKongNavCon.tabBarItem.image = img;
    img = [UIImage imageNamed:@"Statue of Liberty-48"];
    newYorkNavCon.tabBarItem.image = img;
    img = [UIImage imageNamed:@"Colosseum-48"];
    romeNavCon.tabBarItem.image = img;
    
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers =  @[vancouverNavCon, aucklandNavCon, hongKongNavCon, newYorkNavCon, romeNavCon];
    self.window.rootViewController = self.tabBarController;
    
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
