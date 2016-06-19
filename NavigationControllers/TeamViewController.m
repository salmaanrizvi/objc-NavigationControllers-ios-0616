//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Salmaan Rizvi on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamMember.h"
#import "TeamDetailViewController.h"

@interface TeamViewController ()

@property (strong, nonatomic) IBOutlet UIButton *alButton;
@property (strong, nonatomic) IBOutlet UIButton *joeButton;
@property (strong, nonatomic) IBOutlet UIButton *chrisButton;
@property (strong, nonatomic) IBOutlet UIButton *aviButton;

@end

@implementation TeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (IBAction)alButtonTapped:(UIButton *)sender {

}

- (IBAction)joeButtonTapped:(UIButton *)sender {

}

- (IBAction)chrisButtonTapped:(UIButton *)sender {

}

- (IBAction)aviButtonTapped:(UIButton *)sender {

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation
*/

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.

    TeamDetailViewController *transferVC = segue.destinationViewController;
    
    if ([segue.identifier isEqualToString:@"alSegue"]) {
        transferVC.teamMember = [[TeamMember alloc] initWithName:@"Al" PhoneNumber:@"5551212" BirthCity:@"Detroit" BirthState:@"Michigan" FavoriteBand:@"The Beatles" Photo:[UIImage imageNamed:@"al"]];
    }
    else if ([segue.identifier isEqualToString:@"joeSegue"]) {
        transferVC.teamMember = [[TeamMember alloc] initWithName:@"Joe" PhoneNumber:@"9876543210" BirthCity:@"Wichita" BirthState:@"Kansas" FavoriteBand:@"Nine Inch Nails" Photo:[UIImage imageNamed:@"joe"]];
    }
    else if ([segue.identifier isEqualToString:@"chrisSegue"]) {
        transferVC.teamMember = [[TeamMember alloc] initWithName:@"Chris" PhoneNumber:@"9876543210" BirthCity:@"San Francisco" BirthState:@"California" FavoriteBand:@"Red Hot Chili Peppers" Photo:[UIImage imageNamed:@"chris"]];
    }
    else if ([segue.identifier isEqualToString:@"aviSegue"]) {
        transferVC.teamMember = [[TeamMember alloc] initWithName:@"Avi" PhoneNumber:@"9876543210" BirthCity:@"New York" BirthState:@"New York" FavoriteBand:@"Lady Gaga" Photo:[UIImage imageNamed:@"avi"]];
    }
}


@end
