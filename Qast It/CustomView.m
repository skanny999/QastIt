//
//  CustomView.m
//
//  Code generated using QuartzCode 1.38.3 on 14/11/2015.
//  www.quartzcodeapp.com
//

#import "CustomView.h"
#import "QCMethod.h"

@interface CustomView ()

@property (nonatomic, strong) NSMutableDictionary * layers;
@property (nonatomic, strong) NSMapTable * completionBlocks;
@property (nonatomic, assign) BOOL  updateLayerValueForCompletedAnimation;


@end

@implementation CustomView

#pragma mark - Life Cycle

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		[self setupProperties];
		[self setupLayers];
	}
	return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
	self = [super initWithCoder:coder];
	if (self) {
		[self setupProperties];
		[self setupLayers];
	}
	return self;
}

- (void)setFrame:(CGRect)frame{
	[super setFrame:frame];
	[self setupLayerFrames];
}

- (void)setBounds:(CGRect)bounds{
	[super setBounds:bounds];
	[self setupLayerFrames];
}

- (void)setupProperties{
	self.completionBlocks = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsOpaqueMemory valueOptions:NSPointerFunctionsStrongMemory];;
	self.layers = [NSMutableDictionary dictionary];
	self.color = [UIColor colorWithRed:0.922 green: 0.922 blue:0.922 alpha:1];
	self.color1 = [UIColor colorWithRed:0.647 green: 0.0588 blue:0.00784 alpha:1];
}

- (void)setupLayers{
	self.backgroundColor = [UIColor colorWithRed:0.647 green: 0.0588 blue:0.00784 alpha:0];
	
	CAShapeLayer * mov = [CAShapeLayer layer];
	[self.layer addSublayer:mov];
	self.layers[@"mov"] = mov;
	
	CAShapeLayer * mov2 = [CAShapeLayer layer];
	[self.layer addSublayer:mov2];
	self.layers[@"mov2"] = mov2;
	
	CAShapeLayer * mov3 = [CAShapeLayer layer];
	[self.layer addSublayer:mov3];
	self.layers[@"mov3"] = mov3;
	
	CAShapeLayer * mov4 = [CAShapeLayer layer];
	[self.layer addSublayer:mov4];
	self.layers[@"mov4"] = mov4;
	
	CAShapeLayer * mov5 = [CAShapeLayer layer];
	[self.layer addSublayer:mov5];
	self.layers[@"mov5"] = mov5;
	
	CAShapeLayer * mov6 = [CAShapeLayer layer];
	[self.layer addSublayer:mov6];
	self.layers[@"mov6"] = mov6;
	
	CAShapeLayer * mov7 = [CAShapeLayer layer];
	[self.layer addSublayer:mov7];
	self.layers[@"mov7"] = mov7;
	
	CAShapeLayer * mov8 = [CAShapeLayer layer];
	[self.layer addSublayer:mov8];
	self.layers[@"mov8"] = mov8;
	
	[self resetLayerPropertiesForLayerIdentifiers:nil];
	[self setupLayerFrames];
}

- (void)resetLayerPropertiesForLayerIdentifiers:(NSArray *)layerIds{
	[CATransaction begin];
	[CATransaction setDisableActions:YES];
	
	if(!layerIds || [layerIds containsObject:@"mov"]){
		CAShapeLayer * mov = self.layers[@"mov"];
		mov.fillColor = [UIColor colorWithRed:0.922 green: 0.922 blue:0.922 alpha:1].CGColor;
		mov.lineWidth = 0;
	}
	if(!layerIds || [layerIds containsObject:@"mov2"]){
		CAShapeLayer * mov2 = self.layers[@"mov2"];
		mov2.fillColor = [UIColor colorWithRed:0.922 green: 0.922 blue:0.922 alpha:1].CGColor;
		mov2.lineWidth = 0;
	}
	if(!layerIds || [layerIds containsObject:@"mov3"]){
		CAShapeLayer * mov3 = self.layers[@"mov3"];
		mov3.fillColor = [UIColor colorWithRed:0.922 green: 0.922 blue:0.922 alpha:1].CGColor;
		mov3.lineWidth = 0;
	}
	if(!layerIds || [layerIds containsObject:@"mov4"]){
		CAShapeLayer * mov4 = self.layers[@"mov4"];
		mov4.fillColor = [UIColor colorWithRed:0.922 green: 0.922 blue:0.922 alpha:1].CGColor;
		mov4.lineWidth = 0;
	}
	if(!layerIds || [layerIds containsObject:@"mov5"]){
		CAShapeLayer * mov5 = self.layers[@"mov5"];
		mov5.fillColor = [UIColor colorWithRed:0.922 green: 0.922 blue:0.922 alpha:1].CGColor;
		mov5.lineWidth = 0;
	}
	if(!layerIds || [layerIds containsObject:@"mov6"]){
		CAShapeLayer * mov6 = self.layers[@"mov6"];
		mov6.masksToBounds = YES;
		mov6.fillColor     = [UIColor colorWithRed:0.922 green: 0.922 blue:0.922 alpha:1].CGColor;
		mov6.lineWidth     = 0;
	}
	if(!layerIds || [layerIds containsObject:@"mov7"]){
		CAShapeLayer * mov7 = self.layers[@"mov7"];
		mov7.fillColor = [UIColor colorWithRed:0.922 green: 0.922 blue:0.922 alpha:1].CGColor;
		mov7.lineWidth = 0;
	}
	if(!layerIds || [layerIds containsObject:@"mov8"]){
		CAShapeLayer * mov8 = self.layers[@"mov8"];
		mov8.fillColor = [UIColor colorWithRed:0.922 green: 0.922 blue:0.922 alpha:1].CGColor;
		mov8.lineWidth = 0;
	}
	
	[CATransaction commit];
}

- (void)setupLayerFrames{
	[CATransaction begin];
	[CATransaction setDisableActions:YES];
	
	CAShapeLayer * mov  = self.layers[@"mov"];
	mov.frame           = CGRectMake(0.40616 * CGRectGetWidth(mov.superlayer.bounds), 0.40556 * CGRectGetHeight(mov.superlayer.bounds), 0.18768 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds));
	mov.path            = [self movPathWithBounds:[self.layers[@"mov"] bounds]].CGPath;
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	mov2.frame          = CGRectMake(0.40616 * CGRectGetWidth(mov2.superlayer.bounds), 0.40556 * CGRectGetHeight(mov2.superlayer.bounds), 0.18768 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds));
	mov2.path           = [self mov2PathWithBounds:[self.layers[@"mov2"] bounds]].CGPath;
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	mov3.frame          = CGRectMake(0.40616 * CGRectGetWidth(mov3.superlayer.bounds), 0.40556 * CGRectGetHeight(mov3.superlayer.bounds), 0.18768 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds));
	mov3.path           = [self mov3PathWithBounds:[self.layers[@"mov3"] bounds]].CGPath;
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	mov4.frame          = CGRectMake(0.40616 * CGRectGetWidth(mov4.superlayer.bounds), 0.40556 * CGRectGetHeight(mov4.superlayer.bounds), 0.18768 * CGRectGetWidth(mov4.superlayer.bounds), 0.18889 * CGRectGetHeight(mov4.superlayer.bounds));
	mov4.path           = [self mov4PathWithBounds:[self.layers[@"mov4"] bounds]].CGPath;
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	mov5.frame          = CGRectMake(0.40616 * CGRectGetWidth(mov5.superlayer.bounds), 0.40556 * CGRectGetHeight(mov5.superlayer.bounds), 0.18768 * CGRectGetWidth(mov5.superlayer.bounds), 0.18889 * CGRectGetHeight(mov5.superlayer.bounds));
	mov5.path           = [self mov5PathWithBounds:[self.layers[@"mov5"] bounds]].CGPath;
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	mov6.frame          = CGRectMake(0.40616 * CGRectGetWidth(mov6.superlayer.bounds), 0.40556 * CGRectGetHeight(mov6.superlayer.bounds), 0.18768 * CGRectGetWidth(mov6.superlayer.bounds), 0.18889 * CGRectGetHeight(mov6.superlayer.bounds));
	mov6.path           = [self mov6PathWithBounds:[self.layers[@"mov6"] bounds]].CGPath;
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	mov7.frame          = CGRectMake(0.40616 * CGRectGetWidth(mov7.superlayer.bounds), 0.40556 * CGRectGetHeight(mov7.superlayer.bounds), 0.18768 * CGRectGetWidth(mov7.superlayer.bounds), 0.18889 * CGRectGetHeight(mov7.superlayer.bounds));
	mov7.path           = [self mov7PathWithBounds:[self.layers[@"mov7"] bounds]].CGPath;
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	mov8.frame          = CGRectMake(0.40616 * CGRectGetWidth(mov8.superlayer.bounds), 0.40556 * CGRectGetHeight(mov8.superlayer.bounds), 0.18768 * CGRectGetWidth(mov8.superlayer.bounds), 0.18889 * CGRectGetHeight(mov8.superlayer.bounds));
	mov8.path           = [self mov8PathWithBounds:[self.layers[@"mov8"] bounds]].CGPath;
	
	[CATransaction commit];
}

#pragma mark - Animation Setup

- (void)addAnim12Animation{
	[self addAnim12AnimationCompletionBlock:nil];
}

- (void)addAnim12AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim12AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim12AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.208;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim12" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim12"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim12"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.208;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov.superlayer.bounds), 0.5 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim12Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim12Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim12Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim12Anim forKey:@"movAnim12Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov2.superlayer.bounds), 0.5 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov2.superlayer.bounds), 0.81111 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim12Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim12Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim12Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim12Anim forKey:@"mov2Anim12Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov3.superlayer.bounds), 0.5 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim12Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim12Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim12Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim12Anim forKey:@"mov3Anim12Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov4.superlayer.bounds), 0.81111 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim12Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim12Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim12Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim12Anim forKey:@"mov4Anim12Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov5.superlayer.bounds), 0.5 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov5.superlayer.bounds), 0.18889 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim12Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim12Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim12Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim12Anim forKey:@"mov5Anim12Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov6.superlayer.bounds), 0.5 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim12Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim12Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim12Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim12Anim forKey:@"mov6Anim12Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov7.superlayer.bounds), 0.5 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov7.superlayer.bounds), 0.18889 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim12Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim12Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim12Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim12Anim forKey:@"mov7Anim12Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov8.superlayer.bounds), 0.5 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim12Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim12Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim12Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim12Anim forKey:@"mov8Anim12Anim"];
}

- (void)addAnim13Animation{
	[self addAnim13AnimationCompletionBlock:nil];
}

- (void)addAnim13AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim13AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim13AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.206;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim13" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim13"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim13"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.206;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov.superlayer.bounds), 0.5 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim13Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim13Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim13Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim13Anim forKey:@"movAnim13Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov2.superlayer.bounds), 0.5 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov2.superlayer.bounds), 0.81111 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim13Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim13Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim13Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim13Anim forKey:@"mov2Anim13Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov3.superlayer.bounds), 0.5 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov3.superlayer.bounds), 0.5 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim13Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim13Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim13Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim13Anim forKey:@"mov3Anim13Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim13Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim13Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim13Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim13Anim forKey:@"mov4Anim13Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov5.superlayer.bounds), 0.5 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov5.superlayer.bounds), 0.5 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim13Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim13Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim13Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim13Anim forKey:@"mov5Anim13Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov6.superlayer.bounds), 0.5 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov6.superlayer.bounds), 0.5 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim13Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim13Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim13Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim13Anim forKey:@"mov6Anim13Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov7.superlayer.bounds), 0.5 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov7.superlayer.bounds), 0.5 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim13Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim13Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim13Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim13Anim forKey:@"mov7Anim13Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov8.superlayer.bounds), 0.5 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov8.superlayer.bounds), 0.5 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim13Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim13Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim13Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim13Anim forKey:@"mov8Anim13Anim"];
}

- (void)addAnim14Animation{
	[self addAnim14AnimationCompletionBlock:nil];
}

- (void)addAnim14AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim14AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim14AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.206;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim14" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim14"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim14"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.206;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov.superlayer.bounds), 0.5 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim14Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim14Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim14Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim14Anim forKey:@"movAnim14Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov2.superlayer.bounds), 0.5 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim14Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim14Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim14Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim14Anim forKey:@"mov2Anim14Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov3.superlayer.bounds), 0.5 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim14Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim14Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim14Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim14Anim forKey:@"mov3Anim14Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov4.superlayer.bounds), 0.18889 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim14Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim14Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim14Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim14Anim forKey:@"mov4Anim14Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov5.superlayer.bounds), 0.5 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov5.superlayer.bounds), 0.81111 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim14Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim14Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim14Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim14Anim forKey:@"mov5Anim14Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov6.superlayer.bounds), 0.5 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim14Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim14Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim14Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim14Anim forKey:@"mov6Anim14Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov7.superlayer.bounds), 0.5 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim14Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim14Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim14Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim14Anim forKey:@"mov7Anim14Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov8.superlayer.bounds), 0.5 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim14Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim14Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim14Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim14Anim forKey:@"mov8Anim14Anim"];
}

- (void)addAnim15Animation{
	[self addAnim15AnimationCompletionBlock:nil];
}

- (void)addAnim15AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim15AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim15AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.2;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim15" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim15"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim15"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.2;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov.superlayer.bounds), 0.5 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim15Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim15Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim15Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim15Anim forKey:@"movAnim15Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov2.superlayer.bounds), 0.5 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov2.superlayer.bounds), 0.81111 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim15Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim15Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim15Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim15Anim forKey:@"mov2Anim15Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov3.superlayer.bounds), 0.5 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim15Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim15Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim15Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim15Anim forKey:@"mov3Anim15Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov4.superlayer.bounds), 0.81111 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim15Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim15Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim15Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim15Anim forKey:@"mov4Anim15Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov5.superlayer.bounds), 0.5 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov5.superlayer.bounds), 0.5 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim15Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim15Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim15Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim15Anim forKey:@"mov5Anim15Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov6.superlayer.bounds), 0.5 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov6.superlayer.bounds), 0.5 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim15Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim15Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim15Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim15Anim forKey:@"mov6Anim15Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov7.superlayer.bounds), 0.5 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov7.superlayer.bounds), 0.5 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim15Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim15Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim15Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim15Anim forKey:@"mov7Anim15Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov8.superlayer.bounds), 0.5 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov8.superlayer.bounds), 0.5 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim15Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim15Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim15Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim15Anim forKey:@"mov8Anim15Anim"];
}

- (void)addAnim16Animation{
	[self addAnim16AnimationCompletionBlock:nil];
}

- (void)addAnim16AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim16AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim16AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.204;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim16" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim16"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim16"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.204;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov.superlayer.bounds), 0.5 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim16Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim16Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim16Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim16Anim forKey:@"movAnim16Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov2.superlayer.bounds), 0.5 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov2.superlayer.bounds), 0.81111 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim16Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim16Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim16Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim16Anim forKey:@"mov2Anim16Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov3.superlayer.bounds), 0.5 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov3.superlayer.bounds), 0.5 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim16Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim16Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim16Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim16Anim forKey:@"mov3Anim16Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim16Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim16Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim16Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim16Anim forKey:@"mov4Anim16Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov5.superlayer.bounds), 0.5 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov5.superlayer.bounds), 0.18889 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim16Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim16Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim16Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim16Anim forKey:@"mov5Anim16Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov6.superlayer.bounds), 0.5 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim16Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim16Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim16Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim16Anim forKey:@"mov6Anim16Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov7.superlayer.bounds), 0.5 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov7.superlayer.bounds), 0.18889 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim16Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim16Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim16Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim16Anim forKey:@"mov7Anim16Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov8.superlayer.bounds), 0.5 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim16Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim16Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim16Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim16Anim forKey:@"mov8Anim16Anim"];
}

- (void)addAnim23Animation{
	[self addAnim23AnimationCompletionBlock:nil];
}

- (void)addAnim23AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim23AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim23AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.2;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim23" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim23"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim23"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.2;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim23Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim23Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim23Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim23Anim forKey:@"movAnim23Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov2.superlayer.bounds), 0.5 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim23Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim23Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim23Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim23Anim forKey:@"mov2Anim23Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim23Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim23Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim23Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim23Anim forKey:@"mov3Anim23Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov4.superlayer.bounds), 0.18889 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim23Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim23Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim23Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim23Anim forKey:@"mov4Anim23Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov5.superlayer.bounds), 0.81111 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov5.superlayer.bounds), 0.5 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim23Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim23Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim23Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim23Anim forKey:@"mov5Anim23Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim23Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim23Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim23Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim23Anim forKey:@"mov6Anim23Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov7.superlayer.bounds), 0.5 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim23Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim23Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim23Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim23Anim forKey:@"mov7Anim23Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim23Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim23Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim23Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim23Anim forKey:@"mov8Anim23Anim"];
}

- (void)addAnim24Animation{
	[self addAnim24AnimationCompletionBlock:nil];
}

- (void)addAnim24AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim24AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim24AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.2;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim24" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim24"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim24"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.2;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.19444 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim24Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim24Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim24Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim24Anim forKey:@"movAnim24Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov2.superlayer.bounds), 0.81111 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov2.superlayer.bounds), 0.81111 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim24Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim24Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim24Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim24Anim forKey:@"mov2Anim24Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim24Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim24Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim24Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim24Anim forKey:@"mov3Anim24Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov4.superlayer.bounds), 0.81111 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov4.superlayer.bounds), 0.81111 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim24Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim24Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim24Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim24Anim forKey:@"mov4Anim24Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov5.superlayer.bounds), 0.18889 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov5.superlayer.bounds), 0.81111 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim24Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim24Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim24Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim24Anim forKey:@"mov5Anim24Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov6.superlayer.bounds), 0.18889 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim24Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim24Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim24Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim24Anim forKey:@"mov6Anim24Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov7.superlayer.bounds), 0.18889 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov7.superlayer.bounds), 0.18889 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim24Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim24Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim24Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim24Anim forKey:@"mov7Anim24Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim24Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim24Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim24Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim24Anim forKey:@"mov8Anim24Anim"];
}

- (void)addAnim25Animation{
	[self addAnim25AnimationCompletionBlock:nil];
}

- (void)addAnim25AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim25AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim25AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.2;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim25" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim25"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim25"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.2;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim25Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim25Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim25Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim25Anim forKey:@"movAnim25Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov2.superlayer.bounds), 0.5 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim25Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim25Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim25Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim25Anim forKey:@"mov2Anim25Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim25Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim25Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim25Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim25Anim forKey:@"mov3Anim25Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov4.superlayer.bounds), 0.18889 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov4.superlayer.bounds), 0.81111 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim25Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim25Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim25Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim25Anim forKey:@"mov4Anim25Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov5.superlayer.bounds), 0.81111 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov5.superlayer.bounds), 0.81111 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim25Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim25Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim25Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim25Anim forKey:@"mov5Anim25Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim25Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim25Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim25Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim25Anim forKey:@"mov6Anim25Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.18889 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim25Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim25Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim25Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim25Anim forKey:@"mov7Anim25Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov8.superlayer.bounds), 0.5 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim25Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim25Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim25Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim25Anim forKey:@"mov8Anim25Anim"];
}

- (void)addAnim26Animation{
	[self addAnim26AnimationCompletionBlock:nil];
}

- (void)addAnim26AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim26AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim26AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.2;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim26" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim26"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim26"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.2;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim26Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim26Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim26Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim26Anim forKey:@"movAnim26Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim26Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim26Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim26Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim26Anim forKey:@"mov2Anim26Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov3.superlayer.bounds), 0.5 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim26Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim26Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim26Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim26Anim forKey:@"mov3Anim26Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov4.superlayer.bounds), 0.18889 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov4.superlayer.bounds), 0.18889 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim26Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim26Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim26Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim26Anim forKey:@"mov4Anim26Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov5.superlayer.bounds), 0.81111 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov5.superlayer.bounds), 0.81111 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim26Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim26Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim26Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim26Anim forKey:@"mov5Anim26Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim26Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim26Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim26Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim26Anim forKey:@"mov6Anim26Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.5 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim26Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim26Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim26Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim26Anim forKey:@"mov7Anim26Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim26Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim26Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim26Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim26Anim forKey:@"mov8Anim26Anim"];
}

- (void)addAnim34Animation{
	[self addAnim34AnimationCompletionBlock:nil];
}

- (void)addAnim34AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim34AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim34AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.2;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim34" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim34"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim34"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.2;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim34Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim34Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim34Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim34Anim forKey:@"movAnim34Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim34Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim34Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim34Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim34Anim forKey:@"mov2Anim34Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim34Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim34Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim34Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim34Anim forKey:@"mov3Anim34Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov4.superlayer.bounds), 0.81111 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim34Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim34Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim34Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim34Anim forKey:@"mov4Anim34Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov5.superlayer.bounds), 0.5 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov5.superlayer.bounds), 0.18889 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim34Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim34Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim34Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim34Anim forKey:@"mov5Anim34Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim34Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim34Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim34Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim34Anim forKey:@"mov6Anim34Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim34Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim34Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim34Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim34Anim forKey:@"mov7Anim34Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim34Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim34Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim34Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim34Anim forKey:@"mov8Anim34Anim"];
}

- (void)addAnim35Animation{
	[self addAnim35AnimationCompletionBlock:nil];
}

- (void)addAnim35AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim35AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim35AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.2;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim35" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim35"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim35"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.2;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim35Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim35Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim35Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim35Anim forKey:@"movAnim35Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim35Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim35Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim35Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim35Anim forKey:@"mov2Anim35Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim35Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim35Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim35Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim35Anim forKey:@"mov3Anim35Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim35Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim35Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim35Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim35Anim forKey:@"mov4Anim35Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov5.superlayer.bounds), 0.5 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov5.superlayer.bounds), 0.81111 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim35Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim35Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim35Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim35Anim forKey:@"mov5Anim35Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov6.superlayer.bounds), 0.5 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov6.superlayer.bounds), 0.18889 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim35Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim35Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim35Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim35Anim forKey:@"mov6Anim35Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim35Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim35Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim35Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim35Anim forKey:@"mov7Anim35Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim35Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim35Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim35Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim35Anim forKey:@"mov8Anim35Anim"];
}

- (void)addAnim36Animation{
	[self addAnim36AnimationCompletionBlock:nil];
}

- (void)addAnim36AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim36AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim36AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.2;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim36" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim36"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim36"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.2;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim36Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim36Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim36Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim36Anim forKey:@"movAnim36Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim36Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim36Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim36Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim36Anim forKey:@"mov2Anim36Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim36Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim36Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim36Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim36Anim forKey:@"mov3Anim36Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim36Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim36Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim36Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim36Anim forKey:@"mov4Anim36Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov5.superlayer.bounds), 0.5 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov5.superlayer.bounds), 0.5 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim36Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim36Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim36Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim36Anim forKey:@"mov5Anim36Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim36Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim36Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim36Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim36Anim forKey:@"mov6Anim36Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim36Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim36Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim36Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim36Anim forKey:@"mov7Anim36Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim36Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim36Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim36Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim36Anim forKey:@"mov8Anim36Anim"];
}

- (void)addAnim45Animation{
	[self addAnim45AnimationCompletionBlock:nil];
}

- (void)addAnim45AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim45AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim45AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.2;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim45" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim45"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim45"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.2;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim45Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim45Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim45Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim45Anim forKey:@"movAnim45Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov2.superlayer.bounds), 0.5 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim45Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim45Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim45Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim45Anim forKey:@"mov2Anim45Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim45Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim45Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim45Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim45Anim forKey:@"mov3Anim45Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov4.superlayer.bounds), 0.18889 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim45Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim45Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim45Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim45Anim forKey:@"mov4Anim45Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov5.superlayer.bounds), 0.81111 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov5.superlayer.bounds), 0.81111 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim45Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim45Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim45Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim45Anim forKey:@"mov5Anim45Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov6.superlayer.bounds), 0.5 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim45Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim45Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim45Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim45Anim forKey:@"mov6Anim45Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim45Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim45Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim45Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim45Anim forKey:@"mov7Anim45Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov8.superlayer.bounds), 0.5 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim45Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim45Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim45Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim45Anim forKey:@"mov8Anim45Anim"];
}

- (void)addAnim46Animation{
	[self addAnim46AnimationCompletionBlock:nil];
}

- (void)addAnim46AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim46AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim46AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.2;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim46" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim46"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim46"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.2;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim46Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim46Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim46Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim46Anim forKey:@"movAnim46Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov2.superlayer.bounds), 0.5 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim46Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim46Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim46Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim46Anim forKey:@"mov2Anim46Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov3.superlayer.bounds), 0.18889 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim46Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim46Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim46Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim46Anim forKey:@"mov3Anim46Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov4.superlayer.bounds), 0.18889 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim46Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim46Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim46Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim46Anim forKey:@"mov4Anim46Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov5.superlayer.bounds), 0.81111 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov5.superlayer.bounds), 0.81111 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim46Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim46Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim46Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim46Anim forKey:@"mov5Anim46Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov6.superlayer.bounds), 0.5 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim46Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim46Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim46Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim46Anim forKey:@"mov6Anim46Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim46Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim46Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim46Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim46Anim forKey:@"mov7Anim46Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.5 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim46Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim46Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim46Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim46Anim forKey:@"mov8Anim46Anim"];
}

- (void)addAnim56Animation{
	[self addAnim56AnimationCompletionBlock:nil];
}

- (void)addAnim56AnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	[self addAnim56AnimationReverse:NO completionBlock:completionBlock];
}

- (void)addAnim56AnimationReverse:(BOOL)reverseAnimation completionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 0.2;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Anim56" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Anim56"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Anim56"]];
	}
	
	NSString * fillMode = reverseAnimation ? kCAFillModeBoth : kCAFillModeForwards;
	
	CFTimeInterval totalDuration = 0.2;
	
	CAShapeLayer * mov = self.layers[@"mov"];
	
	////Mov animation
	CAKeyframeAnimation * movPositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	movPositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov.superlayer.bounds), 0.18889 * CGRectGetHeight(mov.superlayer.bounds))]];
	movPositionAnim.keyTimes              = @[@0, @1];
	movPositionAnim.duration              = 0.2;
	movPositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * movAnim56Anim = [QCMethod groupAnimations:@[movPositionAnim] fillMode:fillMode];
	if (reverseAnimation) movAnim56Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:movAnim56Anim totalDuration:totalDuration];
	[mov addAnimation:movAnim56Anim forKey:@"movAnim56Anim"];
	
	CAShapeLayer * mov2 = self.layers[@"mov2"];
	
	////Mov2 animation
	CAKeyframeAnimation * mov2PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov2PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov2.superlayer.bounds), 0.18889 * CGRectGetHeight(mov2.superlayer.bounds))]];
	mov2PositionAnim.keyTimes              = @[@0, @1];
	mov2PositionAnim.duration              = 0.2;
	mov2PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov2Anim56Anim = [QCMethod groupAnimations:@[mov2PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov2Anim56Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov2Anim56Anim totalDuration:totalDuration];
	[mov2 addAnimation:mov2Anim56Anim forKey:@"mov2Anim56Anim"];
	
	CAShapeLayer * mov3 = self.layers[@"mov3"];
	
	////Mov3 animation
	CAKeyframeAnimation * mov3PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov3PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov3.superlayer.bounds), 0.5 * CGRectGetHeight(mov3.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov3.superlayer.bounds), 0.5 * CGRectGetHeight(mov3.superlayer.bounds))]];
	mov3PositionAnim.keyTimes              = @[@0, @1];
	mov3PositionAnim.duration              = 0.2;
	mov3PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov3Anim56Anim = [QCMethod groupAnimations:@[mov3PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov3Anim56Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov3Anim56Anim totalDuration:totalDuration];
	[mov3 addAnimation:mov3Anim56Anim forKey:@"mov3Anim56Anim"];
	
	CAShapeLayer * mov4 = self.layers[@"mov4"];
	
	////Mov4 animation
	CAKeyframeAnimation * mov4PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov4PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.5 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov4.superlayer.bounds), 0.5 * CGRectGetHeight(mov4.superlayer.bounds))]];
	mov4PositionAnim.keyTimes              = @[@0, @1];
	mov4PositionAnim.duration              = 0.2;
	mov4PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov4Anim56Anim = [QCMethod groupAnimations:@[mov4PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov4Anim56Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov4Anim56Anim totalDuration:totalDuration];
	[mov4 addAnimation:mov4Anim56Anim forKey:@"mov4Anim56Anim"];
	
	CAShapeLayer * mov5 = self.layers[@"mov5"];
	
	////Mov5 animation
	CAKeyframeAnimation * mov5PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov5PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov5.superlayer.bounds), 0.81111 * CGRectGetHeight(mov5.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov5.superlayer.bounds), 0.81111 * CGRectGetHeight(mov5.superlayer.bounds))]];
	mov5PositionAnim.keyTimes              = @[@0, @1];
	mov5PositionAnim.duration              = 0.2;
	mov5PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov5Anim56Anim = [QCMethod groupAnimations:@[mov5PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov5Anim56Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov5Anim56Anim totalDuration:totalDuration];
	[mov5 addAnimation:mov5Anim56Anim forKey:@"mov5Anim56Anim"];
	
	CAShapeLayer * mov6 = self.layers[@"mov6"];
	
	////Mov6 animation
	CAKeyframeAnimation * mov6PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov6PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.18889 * CGRectGetWidth(mov6.superlayer.bounds), 0.81111 * CGRectGetHeight(mov6.superlayer.bounds))]];
	mov6PositionAnim.keyTimes              = @[@0, @1];
	mov6PositionAnim.duration              = 0.2;
	mov6PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov6Anim56Anim = [QCMethod groupAnimations:@[mov6PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov6Anim56Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov6Anim56Anim totalDuration:totalDuration];
	[mov6 addAnimation:mov6Anim56Anim forKey:@"mov6Anim56Anim"];
	
	CAShapeLayer * mov7 = self.layers[@"mov7"];
	
	////Mov7 animation
	CAKeyframeAnimation * mov7PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov7PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov7.superlayer.bounds), 0.81111 * CGRectGetHeight(mov7.superlayer.bounds))]];
	mov7PositionAnim.keyTimes              = @[@0, @1];
	mov7PositionAnim.duration              = 0.2;
	mov7PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov7Anim56Anim = [QCMethod groupAnimations:@[mov7PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov7Anim56Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov7Anim56Anim totalDuration:totalDuration];
	[mov7 addAnimation:mov7Anim56Anim forKey:@"mov7Anim56Anim"];
	
	CAShapeLayer * mov8 = self.layers[@"mov8"];
	
	////Mov8 animation
	CAKeyframeAnimation * mov8PositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	mov8PositionAnim.values                = @[[NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.81111 * CGRectGetWidth(mov8.superlayer.bounds), 0.81111 * CGRectGetHeight(mov8.superlayer.bounds))]];
	mov8PositionAnim.keyTimes              = @[@0, @1];
	mov8PositionAnim.duration              = 0.2;
	mov8PositionAnim.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAAnimationGroup * mov8Anim56Anim = [QCMethod groupAnimations:@[mov8PositionAnim] fillMode:fillMode];
	if (reverseAnimation) mov8Anim56Anim = (CAAnimationGroup *)[QCMethod reverseAnimation:mov8Anim56Anim totalDuration:totalDuration];
	[mov8 addAnimation:mov8Anim56Anim forKey:@"mov8Anim56Anim"];
}

#pragma mark - Animation Cleanup

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
	void (^completionBlock)(BOOL) = [self.completionBlocks objectForKey:anim];;
	if (completionBlock){
		[self.completionBlocks removeObjectForKey:anim];
		if ((flag && self.updateLayerValueForCompletedAnimation) || [[anim valueForKey:@"needEndAnim"] boolValue]){
			[self updateLayerValuesForAnimationId:[anim valueForKey:@"animId"]];
			[self removeAnimationsForAnimationId:[anim valueForKey:@"animId"]];
		}
		completionBlock(flag);
	}
}

- (void)updateLayerValuesForAnimationId:(NSString *)identifier{
	if([identifier isEqualToString:@"Anim12"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim12Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim12Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim12Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim12Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim12Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim12Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim12Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim12Anim"] theLayer:self.layers[@"mov8"]];
	}
	else if([identifier isEqualToString:@"Anim13"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim13Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim13Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim13Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim13Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim13Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim13Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim13Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim13Anim"] theLayer:self.layers[@"mov8"]];
	}
	else if([identifier isEqualToString:@"Anim14"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim14Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim14Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim14Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim14Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim14Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim14Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim14Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim14Anim"] theLayer:self.layers[@"mov8"]];
	}
	else if([identifier isEqualToString:@"Anim15"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim15Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim15Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim15Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim15Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim15Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim15Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim15Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim15Anim"] theLayer:self.layers[@"mov8"]];
	}
	else if([identifier isEqualToString:@"Anim16"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim16Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim16Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim16Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim16Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim16Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim16Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim16Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim16Anim"] theLayer:self.layers[@"mov8"]];
	}
	else if([identifier isEqualToString:@"Anim23"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim23Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim23Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim23Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim23Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim23Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim23Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim23Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim23Anim"] theLayer:self.layers[@"mov8"]];
	}
	else if([identifier isEqualToString:@"Anim24"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim24Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim24Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim24Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim24Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim24Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim24Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim24Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim24Anim"] theLayer:self.layers[@"mov8"]];
	}
	else if([identifier isEqualToString:@"Anim25"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim25Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim25Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim25Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim25Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim25Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim25Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim25Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim25Anim"] theLayer:self.layers[@"mov8"]];
	}
	else if([identifier isEqualToString:@"Anim26"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim26Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim26Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim26Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim26Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim26Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim26Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim26Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim26Anim"] theLayer:self.layers[@"mov8"]];
	}
	else if([identifier isEqualToString:@"Anim34"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim34Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim34Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim34Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim34Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim34Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim34Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim34Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim34Anim"] theLayer:self.layers[@"mov8"]];
	}
	else if([identifier isEqualToString:@"Anim35"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim35Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim35Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim35Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim35Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim35Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim35Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim35Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim35Anim"] theLayer:self.layers[@"mov8"]];
	}
	else if([identifier isEqualToString:@"Anim36"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim36Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim36Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim36Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim36Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim36Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim36Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim36Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim36Anim"] theLayer:self.layers[@"mov8"]];
	}
	else if([identifier isEqualToString:@"Anim45"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim45Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim45Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim45Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim45Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim45Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim45Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim45Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim45Anim"] theLayer:self.layers[@"mov8"]];
	}
	else if([identifier isEqualToString:@"Anim46"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim46Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim46Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim46Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim46Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim46Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim46Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim46Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim46Anim"] theLayer:self.layers[@"mov8"]];
	}
	else if([identifier isEqualToString:@"Anim56"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov"] animationForKey:@"movAnim56Anim"] theLayer:self.layers[@"mov"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov2"] animationForKey:@"mov2Anim56Anim"] theLayer:self.layers[@"mov2"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov3"] animationForKey:@"mov3Anim56Anim"] theLayer:self.layers[@"mov3"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov4"] animationForKey:@"mov4Anim56Anim"] theLayer:self.layers[@"mov4"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov5"] animationForKey:@"mov5Anim56Anim"] theLayer:self.layers[@"mov5"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov6"] animationForKey:@"mov6Anim56Anim"] theLayer:self.layers[@"mov6"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov7"] animationForKey:@"mov7Anim56Anim"] theLayer:self.layers[@"mov7"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"mov8"] animationForKey:@"mov8Anim56Anim"] theLayer:self.layers[@"mov8"]];
	}
}

- (void)removeAnimationsForAnimationId:(NSString *)identifier{
	if([identifier isEqualToString:@"Anim12"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim12Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim12Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim12Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim12Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim12Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim12Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim12Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim12Anim"];
	}
	else if([identifier isEqualToString:@"Anim13"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim13Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim13Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim13Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim13Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim13Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim13Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim13Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim13Anim"];
	}
	else if([identifier isEqualToString:@"Anim14"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim14Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim14Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim14Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim14Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim14Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim14Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim14Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim14Anim"];
	}
	else if([identifier isEqualToString:@"Anim15"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim15Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim15Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim15Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim15Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim15Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim15Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim15Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim15Anim"];
	}
	else if([identifier isEqualToString:@"Anim16"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim16Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim16Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim16Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim16Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim16Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim16Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim16Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim16Anim"];
	}
	else if([identifier isEqualToString:@"Anim23"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim23Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim23Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim23Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim23Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim23Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim23Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim23Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim23Anim"];
	}
	else if([identifier isEqualToString:@"Anim24"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim24Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim24Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim24Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim24Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim24Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim24Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim24Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim24Anim"];
	}
	else if([identifier isEqualToString:@"Anim25"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim25Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim25Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim25Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim25Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim25Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim25Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim25Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim25Anim"];
	}
	else if([identifier isEqualToString:@"Anim26"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim26Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim26Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim26Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim26Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim26Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim26Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim26Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim26Anim"];
	}
	else if([identifier isEqualToString:@"Anim34"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim34Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim34Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim34Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim34Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim34Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim34Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim34Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim34Anim"];
	}
	else if([identifier isEqualToString:@"Anim35"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim35Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim35Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim35Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim35Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim35Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim35Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim35Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim35Anim"];
	}
	else if([identifier isEqualToString:@"Anim36"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim36Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim36Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim36Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim36Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim36Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim36Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim36Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim36Anim"];
	}
	else if([identifier isEqualToString:@"Anim45"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim45Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim45Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim45Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim45Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim45Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim45Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim45Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim45Anim"];
	}
	else if([identifier isEqualToString:@"Anim46"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim46Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim46Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim46Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim46Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim46Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim46Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim46Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim46Anim"];
	}
	else if([identifier isEqualToString:@"Anim56"]){
		[self.layers[@"mov"] removeAnimationForKey:@"movAnim56Anim"];
		[self.layers[@"mov2"] removeAnimationForKey:@"mov2Anim56Anim"];
		[self.layers[@"mov3"] removeAnimationForKey:@"mov3Anim56Anim"];
		[self.layers[@"mov4"] removeAnimationForKey:@"mov4Anim56Anim"];
		[self.layers[@"mov5"] removeAnimationForKey:@"mov5Anim56Anim"];
		[self.layers[@"mov6"] removeAnimationForKey:@"mov6Anim56Anim"];
		[self.layers[@"mov7"] removeAnimationForKey:@"mov7Anim56Anim"];
		[self.layers[@"mov8"] removeAnimationForKey:@"mov8Anim56Anim"];
	}
}

- (void)removeAllAnimations{
	[self.layers enumerateKeysAndObjectsUsingBlock:^(id key, CALayer *layer, BOOL *stop) {
		[layer removeAllAnimations];
	}];
}

#pragma mark - Bezier Path

- (UIBezierPath*)movPathWithBounds:(CGRect)bound{
	UIBezierPath * movPath = [UIBezierPath bezierPathWithOvalInRect:bound];
	return movPath;
}

- (UIBezierPath*)mov2PathWithBounds:(CGRect)bound{
	UIBezierPath * mov2Path = [UIBezierPath bezierPathWithOvalInRect:bound];
	return mov2Path;
}

- (UIBezierPath*)mov3PathWithBounds:(CGRect)bound{
	UIBezierPath * mov3Path = [UIBezierPath bezierPathWithOvalInRect:bound];
	return mov3Path;
}

- (UIBezierPath*)mov4PathWithBounds:(CGRect)bound{
	UIBezierPath * mov4Path = [UIBezierPath bezierPathWithOvalInRect:bound];
	return mov4Path;
}

- (UIBezierPath*)mov5PathWithBounds:(CGRect)bound{
	UIBezierPath * mov5Path = [UIBezierPath bezierPathWithOvalInRect:bound];
	return mov5Path;
}

- (UIBezierPath*)mov6PathWithBounds:(CGRect)bound{
	UIBezierPath * mov6Path = [UIBezierPath bezierPathWithOvalInRect:bound];
	return mov6Path;
}

- (UIBezierPath*)mov7PathWithBounds:(CGRect)bound{
	UIBezierPath * mov7Path = [UIBezierPath bezierPathWithOvalInRect:bound];
	return mov7Path;
}

- (UIBezierPath*)mov8PathWithBounds:(CGRect)bound{
	UIBezierPath * mov8Path = [UIBezierPath bezierPathWithOvalInRect:bound];
	return mov8Path;
}


@end