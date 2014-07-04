//
//  FSHomeViewController.m
//  gsc
//
//  Created by xiang-chen on 14-7-2.
//  Copyright (c) 2014年 Fuleco studio. All rights reserved.
//

#import "FSHomeViewController.h"
#import "OBShapedButton.h"

@interface FSHomeViewController ()

@property(nonatomic, strong) OBShapedButton *baseBtn;
@property(nonatomic, strong) OBShapedButton *skillBtn;
@property(nonatomic, strong) OBShapedButton *bodyBtn;

@end

@implementation FSHomeViewController

+(FSHomeViewController*)singleton{
    
    static FSHomeViewController* _singleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _singleton = [[FSHomeViewController alloc] init];
    });
    
    return _singleton;
    
}


-(void)viewDidAppear:(BOOL)animated{
    
//    [self jumpIn];

}

-(void)viewDidDisappear:(BOOL)animated{
    
//    [self jumpOut];
    
}

-(void)jumpOut{
    [UIView animateWithDuration:.3 animations:^{
        [_baseBtn setFrame:CGRectMake(320, 84-247, self.view.frame.size.width, 247)];
        [_skillBtn setFrame:CGRectMake(-320, 354, self.view.frame.size.width, 247)];
        [_bodyBtn setFrame:CGRectMake(320, 164, self.view.frame.size.width, 247)];
    }];
}

-(void)jumpIn{

    [UIView animateWithDuration:.3 animations:^{
        [_baseBtn setFrame:CGRectMake(0, 84, self.view.frame.size.width, 247)];
        [_skillBtn setFrame:CGRectMake(0, 198, self.view.frame.size.width, 247)];
        [_bodyBtn setFrame:CGRectMake(0, 312, self.view.frame.size.width, 247)];
    }];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"home_bg"]];
    self.baseBtn = [[OBShapedButton alloc] initWithFrame:CGRectMake(0, 84, self.view.frame.size.width, 247)];
    [_baseBtn setImage:[UIImage imageNamed:@"basicBtn"] forState:UIControlStateNormal];
    [_baseBtn handleControlWithBlock:^{
//        [self.mm_drawerController setCenterViewController:[NSClassFromString(@"FSBasicViewController") new] withFullCloseAnimation:YES completion:^(BOOL b) {
//            
//        }];
        [self.navigationController pushViewController:[NSClassFromString(@"FSBasicViewController") new] animated:YES];
    }];
    [self.view addSubview:_baseBtn];
    
    self.skillBtn = [[OBShapedButton alloc] initWithFrame:CGRectMake(0, 198, self.view.frame.size.width, 247)];
    [_skillBtn setImage:[UIImage imageNamed:@"skillBtn"] forState:UIControlStateNormal];
    [_skillBtn handleControlWithBlock:^{
        
    }];
    [self.view addSubview:_skillBtn];
    
    self.bodyBtn = [[OBShapedButton alloc] initWithFrame:CGRectMake(0, 312, self.view.frame.size.width, 247)];
    [_bodyBtn setImage:[UIImage imageNamed:@"bodyBtn"] forState:UIControlStateNormal];
    [_bodyBtn handleControlWithBlock:^{
    }];
    [self.view addSubview:_bodyBtn];
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _baseBtn.frame =CGRectMake(320, 84-247, self.view.frame.size.width, 247);
        _skillBtn.frame =CGRectMake(-320, 354, self.view.frame.size.width, 247);
        _bodyBtn.frame = CGRectMake(320, 164, self.view.frame.size.width, 247);
        [self jumpIn];
    });
    
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    testBtn.frame = CGRectMake(80, 470, 40, 30);
    [testBtn setTitle:@"回位" forState:UIControlStateNormal];
    [testBtn handleControlWithBlock:^{
        [self jumpOut];
    }];
    [self.view addSubview:testBtn];
    
    UIButton *test2Btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    test2Btn2.frame = CGRectMake(130, 470, 40, 30);
    [test2Btn2 setTitle:@"进入" forState:UIControlStateNormal];
    [test2Btn2 handleControlWithBlock:^{
        [self jumpIn];
    }];
    [self.view addSubview:test2Btn2];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
