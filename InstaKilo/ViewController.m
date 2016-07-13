//
//  ViewController.m
//  InstaKilo
//
//  Created by Anthony Ma on 2016-07-13.
//  Copyright © 2016 Anthony Ma. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "Images.h"

@interface ViewController () <UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property NSMutableArray <Images*> *images;
@property NSMutableArray *imageReal;
@property NSMutableArray *imageAnimated;
@property NSMutableArray *imageAfar;
@property NSMutableArray *imageVirtual;
@property NSMutableArray *imageSections;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.images = [NSMutableArray array];
        
    Images *castle = [[Images alloc] initWithProperties:[UIImage imageNamed:@"Castle.jpg"] forTheme:@"real" forLocation:@"Norway"];
    Images *aceVentura = [[Images alloc] initWithProperties:[UIImage imageNamed:@"AceVenturaAnimated"] forTheme:@"animated" forLocation:@"computer"];
    Images *michelangelo = [[Images alloc] initWithProperties:[UIImage imageNamed:@"MichelangeloTMNT"] forTheme:@"animated" forLocation:@"computer"];
    Images *pikachu = [[Images alloc] initWithProperties:[UIImage imageNamed:@"Pikachu"] forTheme:@"animated" forLocation:@"computer"];
    Images *superhero = [[Images alloc] initWithProperties:[UIImage imageNamed:@"Superhero.jpg"] forTheme:@"animated" forLocation:@"computer"];
    Images *goT = [[Images alloc] initWithProperties:[UIImage imageNamed:@"GameofThronesWallpaper.jpg"] forTheme:@"animated" forLocation:@"computer"];
    Images *alien = [[Images alloc] initWithProperties:[UIImage imageNamed:@"ToyStoryAlien.jpg"] forTheme:@"animated" forLocation:@"computer"];
    
    [self.images addObject:castle];
    [self.images addObject:aceVentura];
    [self.images addObject:michelangelo];
    [self.images addObject:pikachu];
    [self.images addObject:superhero];
    [self.images addObject:goT];
    [self.images addObject:alien];
    
    self.imageReal = [NSMutableArray array];
    self.imageAnimated = [NSMutableArray array];
    self.imageAfar = [NSMutableArray array];
    self.imageVirtual = [NSMutableArray array];
    self.imageSections = [NSMutableArray array];
    
    [self.imageReal addObject:castle];
    [self.imageAnimated addObjectsFromArray:@[aceVentura, michelangelo, pikachu, superhero, goT, alien]];
    [self.imageAfar addObject:castle];
    [self.image addObjectsFromArray:@[pikachu, superhero, goT, alien]];
    [self.imageSections addObjectsFromArray:@[self.imageThemes, self.imageLocations]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.imageSections.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.imageSections[section] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.ImageCell.image = [self.imageSections[indexPath.section][indexPath.row] imageName];
    
    return cell;
}

//- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
//{
//    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
//        UICollectionReusableView *header = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"collectionHeaderView" forIndexPath:indexPath];
//        return header;
//    } else if ([kind isEqualToString:UICollectionElementKindSectionFooter]) {
//        UICollectionReusableView *footer = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"collectionFooterView" forIndexPath:indexPath];
//        return footer;
//    }
//    return nil;
//}

@end
