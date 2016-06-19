//
//  TeamDetailViewController.m
//  NavigationControllers
//
//  Created by Salmaan Rizvi on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamDetailViewController.h"

@interface TeamDetailViewController ()

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *phoneNumberLabel;
@property (strong, nonatomic) IBOutlet UILabel *birthPlaceLabel;
@property (strong, nonatomic) IBOutlet UILabel *favoriteBandLabel;
@property (strong, nonatomic) IBOutlet UIImageView *photo;

@end

@implementation TeamDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.nameLabel.text = self.teamMember.name;
    self.phoneNumberLabel.text = self.teamMember.phoneNumber;
    self.birthPlaceLabel.text = [NSString stringWithFormat:@"%@, %@", self.teamMember.birthCity, self.teamMember.birthState];
    self.favoriteBandLabel.text = self.teamMember.favoriteBand;
    self.photo.image = self.teamMember.photo;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
