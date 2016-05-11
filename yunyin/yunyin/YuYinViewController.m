//
//  YuYinViewController.m
//  yunyin
//
//  Created by issuser on 16/4/18.
//  Copyright © 2016年 LuoChen. All rights reserved.
//

#import "YuYinViewController.h"
#import "YuYinShiBie.h"


@interface YuYinViewController ()
@property (weak, nonatomic) IBOutlet UITextView *ShowText;
@property (weak, nonatomic) IBOutlet UIButton *PlayButton;
@property (weak, nonatomic) IBOutlet UIButton *TapeButton;
@property (weak, nonatomic) IBOutlet UILabel *ShowLable;
- (IBAction)tape:(id)sender;

- (IBAction)play:(id)sender;
@end

@implementation YuYinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.PlayButton.layer.cornerRadius = 25;//设置那个圆角的有多圆
    self.PlayButton.layer.borderWidth = 0;//设置边框的宽度，当然可以不要
    self.PlayButton.layer.borderColor = [[UIColor grayColor] CGColor];//设置边框的颜色
    self.PlayButton.layer.masksToBounds = YES;
    
    self.TapeButton.layer.cornerRadius = 25;//设置那个圆角的有多圆
    self.TapeButton.layer.borderWidth = 0;//设置边框的宽度，当然可以不要
    self.TapeButton.layer.borderColor = [[UIColor grayColor] CGColor];//设置边框的颜色
    self.TapeButton.layer.masksToBounds = YES;
    
    
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    if (![_ShowText isExclusiveTouch]) {
        [_ShowText resignFirstResponder];
    }
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


bool k = true;

//录音

- (IBAction)tape:(id)sender {
    
    k = false;
    YuYinShiBie *manger = [YuYinShiBie shareManager];
    [manger discernBlock:^(NSString *str) {
        if(!k){
            self.ShowLable.text = str;
            k = true;
        }
    }];
}


//播放
- (IBAction)play:(id)sender {
    
    YuYinShiBie *manger = [YuYinShiBie shareManager];
    [manger playVoice:self.ShowText.text];
    
}



@end




























































