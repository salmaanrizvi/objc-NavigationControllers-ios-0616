//
//  TeamMember.m
//  NavigationControllers
//
//  Created by Salmaan Rizvi on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamMember.h"

@implementation TeamMember

-(instancetype) init {
    return [self initWithName:@"" PhoneNumber:0 BirthCity:@"" BirthState:@"" FavoriteBand:@"" Photo:[UIImage imageNamed:@""]];
}

-(instancetype)initWithName:(NSString *)name PhoneNumber:(NSString *)phoneNumber BirthCity:(NSString *)birthCity BirthState:(NSString *)birthState FavoriteBand:(NSString *)favoriteBand Photo:(UIImage *)photo {
    
    self = [super init];
    
    if(self) {
        _name = name;
        _phoneNumber = phoneNumber;
        _birthCity = birthCity;
        _birthState = birthState;
        _favoriteBand = favoriteBand;
        _photo = photo;
    }
    
    return self;
}

-(NSString *)description {
    return [NSString stringWithFormat:@"Name: %@, Phone Number: %lu, Birth Place: %@, %@, \nFavorite Band: %@", self.name, self.phoneNumber, self.birthCity, self.birthState, self.favoriteBand];
}


@end
