.class public Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;
.super Landroid/app/Activity;
.source "BoostModeChangeProcessingActivity.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

.field private mBoostMode:I

.field private mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mCircleTextContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDescContainer:Landroid/view/View;

.field private mDoCheckingAnimation:Z

.field private mExtendedTimeTv:Landroid/widget/TextView;

.field private mFirstContainer:Landroid/widget/RelativeLayout;

.field mListView:Landroid/widget/ListView;

.field private mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

.field private mPerformanceIconContainer:Landroid/widget/FrameLayout;

.field private mPrevBoostMode:I

.field private mProcessingDescTv:Landroid/widget/TextView;

.field private mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/check/DoneView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/circle/CircleContainer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/altamirasoft/path_animation/PathLineAnimationView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerformanceIconContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPrevBoostMode:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->startFinishAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPrevBoostMode:I

    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method private buildDataFromIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "key_next_boost_mode"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    const-string/jumbo v0, "key_prev_boost_mode"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPrevBoostMode:I

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->buildAllItems(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPrevBoostMode:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0b0cba

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0b0cbc

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setAndShowLoadingPathAnimation()V
    .locals 9

    const/16 v8, 0x1f4

    const/4 v4, 0x6

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getModeImageFgId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setSVG(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v1, v5}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v6, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01bb

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_0
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-static {v0, v1, v3}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->newInstance(IILandroid/graphics/Paint$Cap;)Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->getListener()Lcom/altamirasoft/path_animation/PathListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathListener(Lcom/altamirasoft/path_animation/PathListener;)V

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-array v3, v6, [I

    aput v8, v3, v5

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    filled-new-array {v6, v7}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDirection([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut33;-><init>()V

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-array v3, v6, [I

    aput v5, v3, v5

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-array v3, v6, [I

    aput v8, v3, v5

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    filled-new-array {v6, v7}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDirection([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-array v3, v6, [I

    aput v5, v3, v5

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut33;-><init>()V

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnReversePathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$4;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$5;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->addReverseAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01bc

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto/16 :goto_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDirection([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-array v3, v4, [I

    fill-array-data v3, :array_2

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut33;-><init>()V

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-array v3, v4, [I

    fill-array-data v3, :array_3

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-array v3, v4, [I

    fill-array-data v3, :array_4

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDirection([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-array v3, v4, [I

    fill-array-data v3, :array_5

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut33;-><init>()V

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnReversePathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    const/16 v3, 0xa7

    const/16 v4, 0xa7

    filled-new-array {v8, v8, v3, v4}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    filled-new-array {v7, v6, v6, v7}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDirection([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    const/16 v3, 0x85

    const/16 v4, 0x85

    filled-new-array {v5, v5, v3, v4}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut33;-><init>()V

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    const/16 v3, 0xb7

    const/16 v4, 0xb7

    filled-new-array {v8, v8, v3, v4}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    filled-new-array {v7, v6, v6, v7}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDirection([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    const/16 v3, 0xc8

    const/16 v4, 0xc8

    filled-new-array {v5, v5, v3, v4}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut33;-><init>()V

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnReversePathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    goto/16 :goto_1

    :array_0
    .array-data 4
        0x1f4
        0x1f4
        0xa7
        0xa7
        0xa7
        0xa7
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1
        -0x1
        0x1
        -0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x85
        0x85
        0x85
        0x85
    .end array-data

    :array_3
    .array-data 4
        0x1f4
        0x1f4
        0xb7
        0xb7
        0xb7
        0xb7
    .end array-data

    :array_4
    .array-data 4
        -0x1
        0x1
        -0x1
        0x1
        -0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0xc8
        0xc8
        0xc8
        0xc8
    .end array-data
.end method

.method private startFinishAnimation()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mFirstContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setElevation(F)V

    const v4, 0x7f0a00ef

    invoke-static {p0, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getFloatFromDimension(Landroid/content/Context;I)F

    move-result v0

    new-instance v1, Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-direct {v1, v4, v6, v0, v6}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;-><init>(Landroid/view/View;FFF)V

    new-instance v4, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Lcom/samsung/android/visualeffect/circle/BounceAnimation;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->setBounceListener(Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->getBounceUpDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v4}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->getBounceUpDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v4}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v4, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$3;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->startAnimation()V

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleTextContainer:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v1, 0x8

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f0401f6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->setContentView(I)V

    const v0, 0x7f11062d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerformanceIconContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerformanceIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v0, 0x7f11062e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const v0, 0x7f11055b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f11055c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f110556

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mFirstContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const v0, 0x7f11003f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleTextContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a05c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircleListener(Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;)V

    const v0, 0x7f11062c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/check/DoneView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

    const v0, 0x7f11062f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    const v0, 0x7f110630

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    const v0, 0x7f110631

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    const v0, 0x7f110632

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->buildDataFromIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->setAndShowLoadingPathAnimation()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->removeCircleListener()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setVisibility(I)V

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerfmodeAnimIconIv:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pause()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRoundEnd()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method