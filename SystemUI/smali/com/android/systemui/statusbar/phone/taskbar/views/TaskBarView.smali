.class public Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;
.super Lcom/android/systemui/statusbar/phone/NavigationBarView;
.source "TaskBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnContextClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$2;
    }
.end annotation


# instance fields
.field private final TASKBAR_CAPTURE_FILE_NAME:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field mAllAppsBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

.field private mAppDockContainier:Landroid/widget/RelativeLayout;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBackBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

.field private mCanScrollToLeft:Z

.field private mCanScrollToRight:Z

.field mClockView:Lcom/android/systemui/statusbar/policy/Clock;

.field mCloseAppsAnimationSet:Landroid/animation/AnimatorSet;

.field public mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

.field public mContentScrollView:Landroid/widget/HorizontalScrollView;

.field protected mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

.field private mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field mDateAndClockView:Landroid/widget/LinearLayout;

.field mDateView:Lcom/android/systemui/statusbar/policy/DateView;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDispatchLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

.field private mDraggingView:Landroid/view/View;

.field private mExpandedAudioPathView:Landroid/widget/RemoteViews;

.field mFinderBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

.field private mFontScale:F

.field mHomeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

.field public mInflater:Landroid/view/LayoutInflater;

.field private mIsContextMenuOpen:Z

.field private mIsHorizontalOrder:Z

.field private mIsKeyguardState:Z

.field private mIsLandscape:Z

.field private mIsLayoutRTL:Z

.field private mIsPanelAnimationRunning:Z

.field private mIsRightPanelExpand:Z

.field private mIsScrollBarShown:Z

.field private mIsTaskBarViewTouched:Z

.field mKeyboardBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

.field private mKnoxKeyguardState:Z

.field mLabsModeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

.field private mLeftPanelLayout:Landroid/widget/LinearLayout;

.field private mLeftScrollBtn:Landroid/widget/ImageButton;

.field private mLocale:Ljava/util/Locale;

.field private mPanelTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field mRecentBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

.field private mRightPanelLayout:Landroid/widget/LinearLayout;

.field private mRightScrollBtn:Landroid/widget/ImageButton;

.field mScreenCaptureBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

.field private final mScreenWidthPixel:I

.field private mScrollDxForClick:I

.field private mScrollRunnable:Ljava/lang/Runnable;

.field mSizeControlBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

.field mStartAppsAnimationSet:Landroid/animation/AnimatorSet;

.field mStatusBarDivider:Landroid/view/View;

.field mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

.field private mTaskbarHovered:Z

.field mVolumeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

.field private final mlongPressHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsTaskBarViewTouched:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLeftScrollBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightScrollBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScrollDxForClick:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mlongPressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsPanelAnimationRunning:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->makeCaptureFile()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startShowAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsRightPanelExpand:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsTaskBarViewTouched:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsKeyguardState:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsScrollBarShown:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskbarHovered:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKnoxKeyguardState:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mlongPressHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScrollRunnable:Ljava/lang/Runnable;

    const-string/jumbo v0, "taskbar_capture.png"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->TASKBAR_CAPTURE_FILE_NAME:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mPanelTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScreenWidthPixel:I

    return-void
.end method

.method private commandHideAppTrayToLauncher()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x2

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->commandDesktopLauncherVisibility(II)Z

    return-void
.end method

.method private commandToggleAppTrayToLauncher()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x3

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->commandDesktopLauncherVisibility(II)Z

    return-void
.end method

.method private isAudioContextMenuShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->isVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private launchDesktopModeSettings()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.android.app.desktoplauncher"

    const-string/jumbo v3, "com.android.launcher3.settings.DesktopSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private makeAppsCloseAnimation()Landroid/animation/AnimatorSet;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0670

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v3, v5

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    const-string/jumbo v6, "y"

    new-array v7, v9, [F

    const/4 v8, 0x0

    aput v8, v7, v10

    aput v3, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v9, [Landroid/animation/Animator;

    aput-object v4, v5, v10

    aput-object v0, v5, v11

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private makeAppsStartAnimation()Landroid/animation/AnimatorSet;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0670

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v1, v5

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    const-string/jumbo v6, "y"

    new-array v7, v9, [F

    aput v1, v7, v10

    const/4 v8, 0x0

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x15e

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v9, [Landroid/animation/Animator;

    aput-object v4, v5, v10

    aput-object v0, v5, v11

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private makeCaptureFile()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->buildDrawingCache()V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "TAG"

    const-string/jumbo v5, "makeCaptureFile() fail"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setDrawingCacheEnabled(Z)V

    return-void

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setDrawingCacheEnabled(Z)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const-string/jumbo v4, "[DS]TaskBarView"

    const-string/jumbo v5, "makeCaptureFile fail. cacheDir is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "taskbar_capture.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->saveBitmapAsync(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v4, "[DS]TaskBarView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "makeCaptureFile fail bitmap= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeLayoutTransition(IILandroid/animation/LayoutTransition$TransitionListener;)Landroid/animation/LayoutTransition;
    .locals 4

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_0
    return-object v0
.end method

.method private setHoverPopup()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAllAppsBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRecentBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mHomeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mBackBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semSetHoverPopupType(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d066f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mSizeControlBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mSizeControlBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLabsModeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLabsModeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKeyboardBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKeyboardBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mVolumeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mVolumeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScreenCaptureBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScreenCaptureBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mFinderBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mFinderBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    return-void
.end method

.method private setHoverPopupGone(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetHoverPopupType(I)V

    :cond_0
    return-void
.end method

.method private setHoverPopupVisible(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetHoverPopupType(I)V

    :cond_0
    return-void
.end method

.method private startCalendarApp()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isKnoxKeyguardState()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "[DS]TaskBarView"

    const-string/jumbo v3, "Cannot launch Calendar Application because of Knox keyguard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "[DS]TaskBarView"

    const-string/jumbo v3, "Cannot launch Calendar Application"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startCloseAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCloseAppsAnimationSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->makeAppsCloseAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCloseAppsAnimationSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCloseAppsAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startFinderApp()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isKnoxKeyguardState()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[DS]TaskBarView"

    const-string/jumbo v2, "Cannot launch Finder Application because of Knox keyguard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.app.galaxyfinder.intent.action.LAUNCH_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.app.galaxyfinder"

    const-string/jumbo v3, "com.samsung.android.app.galaxyfinder.service.GalaxyFinderService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private startShowAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mStartAppsAnimationSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->makeAppsStartAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mStartAppsAnimationSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mStartAppsAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private toggleKeyboard()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$10;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$10;->start()V

    return-void
.end method

.method private toggleVolumePopup()V
    .locals 4

    const-string/jumbo v0, "[DS]TaskBarView"

    const-string/jumbo v1, "toggleVolumePopup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->isVolumeDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semDismissVolumePanel()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method private updateWindowLayoutForRTL()V
    .locals 5

    const v1, 0x7f02080b

    const v2, 0x7f020808

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWindowLayoutForRTL() mIsRightPanelExpand:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsRightPanelExpand:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mSizeControlBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsRightPanelExpand:Z

    if-eqz v0, :cond_1

    const v0, 0x7f02080d

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLeftScrollBtn:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightScrollBtn:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void

    :cond_1
    const v0, 0x7f0207f9

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method


# virtual methods
.method public bindHomeItemsRemoved(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->bindHomeItemsRemoved(Ljava/util/List;)V

    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->bindHomeItemsUpdated(Ljava/util/List;)V

    return-void
.end method

.method public bindTaskbarItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "103"

    const-string/jumbo v1, "1505"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->bindTaskbarItems(Ljava/util/List;)V

    return-void
.end method

.method public blockNotification()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->blockNotification()V

    return-void
.end method

.method public cancelDrag()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->cancelDragAndDrop()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeDraggingView()V

    return-void
.end method

.method public clearAllNotifications()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->clearAllNotifications()V

    return-void
.end method

.method public clearNotification()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->clearNotification()V

    return-void
.end method

.method public closeAllExcept(IZ)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[DS]TaskBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "closeAllExcept() id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", includingSystemDlg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    if-eqz v1, :cond_1

    const v1, 0x7f130521

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    const v1, 0x7f130518

    if-eq p1, v1, :cond_7

    const v1, 0x7f130516

    if-eq p1, v1, :cond_7

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeContextMenu()V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->dismissAeroWindow()V

    const v1, 0x7f130511

    if-eq p1, v1, :cond_3

    const v1, 0x7f1300c7

    if-eq p1, v1, :cond_3

    if-nez v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAppsView(Z)V

    :cond_3
    const v1, 0x7f130416

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->closeRecentApps()V

    :cond_4
    const v1, 0x7f130517

    if-eq p1, v1, :cond_5

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->isVolumeDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semDismissVolumePanel()V

    :cond_5
    const v1, 0x7f13016a

    if-eq p1, v1, :cond_6

    const v1, 0x7f13016e

    if-eq p1, v1, :cond_6

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->isDeskPanelContextMenu()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    :goto_0
    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeSystemDialogs()V

    :cond_7
    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->closeAllDeskPanels()V

    goto :goto_0
.end method

.method public closeAllView(Z)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "closeAllView() includingSystemDlg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeContextMenu()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->dismissAeroWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->closeRecentApps()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->closeAllDeskPanels()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAppsView(Z)V

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->isVolumeDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semDismissVolumePanel()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeSystemDialogs()V

    :cond_2
    return-void
.end method

.method public closeAppsView(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->commandHideAppTrayToLauncher()V

    return-void
.end method

.method public closeAudioContextMenu()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isAudioContextMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeContextMenu()V

    :cond_0
    return-void
.end method

.method public closeContextMenu()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarView"

    const-string/jumbo v1, "closeContextMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCloseAppsAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCloseAppsAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mStartAppsAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mStartAppsAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getTargetView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startCloseAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getTargetView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setHoverPopupVisible(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->dismiss()V

    :cond_4
    return-void
.end method

.method public closeSystemDialogs()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mActivityManager:Landroid/app/ActivityManager;

    const-string/jumbo v1, "closeSystemDialogFromTaskBar"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->semCloseSystemDialogs(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskbarHovered:Z

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskbarHovered:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->notifyTaskBarHoverExited(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsTaskBarViewTouched:Z

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsTaskBarViewTouched:Z

    goto :goto_0
.end method

.method public doScreenCapture(I)V
    .locals 5

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-nez v2, :cond_0

    const-string/jumbo v3, "[DS]TaskBarView"

    const-string/jumbo v4, "doScreenCapture something wrong. type is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string/jumbo v2, "Fullscreen"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "Region"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "com.samsung.permission.CAPTURE"

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.capture.DesktopCapture"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public focusRunningTaskApp(IILandroid/content/ComponentName;ILandroid/app/ActivityManager$TaskDescription;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->focusRunningTaskApp(IILandroid/content/ComponentName;ILandroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public forceReset()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllView(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeAllViewsInLayout()V

    return-void
.end method

.method public getAudioPathView()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mExpandedAudioPathView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getCellLayoutTaskbar()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    return-object v0
.end method

.method public getDispatchEventLayer()Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDispatchLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    return-object v0
.end method

.method public getDraggingView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDraggingView:Landroid/view/View;

    return-object v0
.end method

.method public isContextMenuOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsContextMenuOpen:Z

    return v0
.end method

.method public isDeskAllNotificationViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isDeskAllNotificationViewVisible()Z

    move-result v0

    return v0
.end method

.method public isDeskNotificationViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isDeskNotificationViewVisible()Z

    move-result v0

    return v0
.end method

.method public isTaskBarHovered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskbarHovered:Z

    return v0
.end method

.method public isTaskBarTouched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsTaskBarViewTouched:Z

    return v0
.end method

.method public launchAppInfo()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->launchAppInfo()V

    return-void
.end method

.method public launchAppNotificationSetting()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->launchAppNotificationSetting()V

    return-void
.end method

.method public launchNotificationSetting()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->launchNotificationSetting()V

    return-void
.end method

.method public moveScrollPosition(ZLandroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "[DS]TaskBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveScrollPosition() mIsPanelAnimationRunning="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsPanelAnimationRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", toRightEdge="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", view="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsScrollBarShown:Z

    if-eqz v3, :cond_2

    const/4 v2, -0x1

    if-eqz p2, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v1}, Landroid/widget/HorizontalScrollView;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    :cond_1
    move v0, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;ZI)V

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onAttachedToWindow()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$11;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showAllAppsView()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->launchDesktopModeSettings()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->toggleKeyboard()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->toggleVolumePopup()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->doScreenCapture(I)V

    goto :goto_0

    :pswitch_6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsPanelAnimationRunning:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "[DS]TaskBarView"

    const-string/jumbo v3, "block onClick size_control!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "[DS]TaskBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "size_contol onClick mIsRightPanelExpand:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsRightPanelExpand:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsPanelAnimationRunning:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsRightPanelExpand:Z

    if-eqz v3, :cond_4

    const/16 v1, 0x8

    :goto_1
    if-nez v1, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->expandDeskStatusBar(Z)V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsRightPanelExpand:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mSizeControlBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const v4, 0x7f02080d

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mSizeControlBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0a9c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsScrollBarShown:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAppDockContainier:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mPanelTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-direct {p0, v7, v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->makeLayoutTransition(IILandroid/animation/LayoutTransition$TransitionListener;)Landroid/animation/LayoutTransition;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightPanelLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mPanelTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-direct {p0, v2, v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->makeLayoutTransition(IILandroid/animation/LayoutTransition$TransitionListener;)Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScreenCaptureBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKeyboardBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/DateView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsScrollBarShown:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAppDockContainier:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mPanelTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-direct {p0, v7, v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->makeLayoutTransition(IILandroid/animation/LayoutTransition$TransitionListener;)Landroid/animation/LayoutTransition;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightPanelLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mPanelTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-direct {p0, v2, v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->makeLayoutTransition(IILandroid/animation/LayoutTransition$TransitionListener;)Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->collapseDeskStatusBar(Z)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsRightPanelExpand:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mSizeControlBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const v4, 0x7f0207f9

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mSizeControlBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0a9d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsScrollBarShown:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAppDockContainier:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mPanelTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-direct {p0, v7, v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->makeLayoutTransition(IILandroid/animation/LayoutTransition$TransitionListener;)Landroid/animation/LayoutTransition;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightPanelLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mPanelTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-direct {p0, v6, v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->makeLayoutTransition(IILandroid/animation/LayoutTransition$TransitionListener;)Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_2

    :cond_9
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsScrollBarShown:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAppDockContainier:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mPanelTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    const/16 v5, 0x96

    invoke-direct {p0, v7, v5, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->makeLayoutTransition(IILandroid/animation/LayoutTransition$TransitionListener;)Landroid/animation/LayoutTransition;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightPanelLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mPanelTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-direct {p0, v6, v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->makeLayoutTransition(IILandroid/animation/LayoutTransition$TransitionListener;)Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startCalendarApp()V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startFinderApp()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f130511
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLocale:Ljava/util/Locale;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eq v2, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateWindowLayoutForRTL()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->forceResetAndReload()V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLocale:Ljava/util/Locale;

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mFontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mFontScale:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeContextMenu()V

    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsPanelAnimationRunning:Z

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method public onContextClick(Landroid/view/View;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v6, v0, [I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScreenCaptureBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget v0, v6, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v2, v0

    const/4 v1, 0x6

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showContextMenu(IFFLcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V

    :cond_0
    :goto_0
    const v0, 0x7f130521

    invoke-virtual {p0, v0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllExcept(IZ)V

    return v7

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKeyboardBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget v0, v6, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v2, v0

    const/4 v1, 0x7

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showContextMenu(IFFLcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mVolumeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isInstalledSamsungConnect(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    aget v0, v6, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v2, v0

    const/16 v1, 0x9

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showContextMenu(IFFLcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mExpandedAudioPathView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    aget v0, v6, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v2, v0

    const/16 v1, 0x8

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showContextMenu(IFFLcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 4

    const v3, 0x7f0d0678

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeAllWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/DateView;->setTextSize(IF)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 8

    const v7, 0x7f130416

    const v6, 0x7f1300c7

    const v5, 0x7f130018

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateRotatedViews()V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    goto :goto_1

    :sswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    goto :goto_1

    :sswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x7f13008d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    goto :goto_1

    :sswitch_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x7f13033c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    const v3, 0x7f1300e1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLeftPanelLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f130512

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightPanelLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f13051e

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDispatchLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    const v3, 0x7f13051f

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    const v3, 0x7f130520

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    const v3, 0x7f130513

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mSizeControlBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const v3, 0x7f130511

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAllAppsBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRecentBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mHomeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mBackBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const v3, 0x7f130199

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mStatusBarDivider:Landroid/view/View;

    const v3, 0x7f130515

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLabsModeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const v3, 0x7f130516

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKeyboardBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKeyboardBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const v3, 0x7f130517

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mVolumeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const v3, 0x7f130518

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScreenCaptureBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const v3, 0x7f130519

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mFinderBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const v3, 0x7f13051a

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDateAndClockView:Landroid/widget/LinearLayout;

    const v3, 0x7f130261

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    const v3, 0x7f130413

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/DateView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    const v3, 0x7f13051b

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAppDockContainier:Landroid/widget/RelativeLayout;

    const v3, 0x7f13051c

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLeftScrollBtn:Landroid/widget/ImageButton;

    const v3, 0x7f13051d

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightScrollBtn:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setHoverPopup()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f130018 -> :sswitch_1
        0x7f13008d -> :sswitch_3
        0x7f1300c7 -> :sswitch_0
        0x7f13033c -> :sswitch_4
        0x7f130416 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMeasure() mIsScrollBarShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsScrollBarShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsScrollBarShown:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateScrollStatus(Z)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onMeasure(II)V

    return-void
.end method

.method public onPackageChanged(Landroid/content/Intent;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "com.samsung.android.oneconnect"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateAudioPathView(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v5, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "android.intent.extra.user_handle"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v5

    if-eq v3, v5, :cond_3

    return-void

    :cond_3
    const-string/jumbo v5, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v5, v2

    if-nez v5, :cond_5

    :cond_4
    return-void

    :cond_5
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    const-string/jumbo v6, "com.samsung.android.oneconnect"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateAudioPathView(Landroid/content/Intent;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    const-string/jumbo v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    array-length v5, v2

    if-nez v5, :cond_9

    :cond_8
    return-void

    :cond_9
    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    const-string/jumbo v6, "com.samsung.android.oneconnect"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateAudioPathView(Landroid/content/Intent;)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isContextClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllExcept(IZ)V

    :cond_1
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllView(Z)V

    :cond_0
    return v1
.end method

.method public refreshRunningList()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->refreshAllRunningTaskList()V

    return-void
.end method

.method public removeAllWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeAeroWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeContextMenu()V

    return-void
.end method

.method public removeContextMenu()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarView"

    const-string/jumbo v1, "removeContextMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeContextMenu()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->removeView(Landroid/view/View;)Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mStartAppsAnimationSet:Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCloseAppsAnimationSet:Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method

.method public removeDraggingView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDraggingView:Landroid/view/View;

    return-void
.end method

.method public removeRunningTaskApp(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeRunningTaskApp(I)V

    return-void
.end method

.method public removeRunningTaskAppForPkgRemoved(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeRunningTaskAppForPkgRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public sendKeyEventToKnoxDesktopTaskbar(Landroid/view/KeyEvent;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    const v1, 0x7f130511

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllExcept(IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showAllAppsView()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x75 -> :sswitch_0
        0x76 -> :sswitch_0
        0x3ea -> :sswitch_0
    .end sparse-switch
.end method

.method public setContextMenuOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsContextMenuOpen:Z

    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsKeyguardState:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isKeyguardState()Z

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-nez p2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDisabledFlags:I

    if-ne v1, p1, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "[DS]TaskBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDisabledFlags disabledFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", keyguardChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDisabledFlags:I

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsKeyguardState:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsKeyguardState:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateRightPanelLayout()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateLeftPanelLayout()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "[DS]TaskBarView"

    const-string/jumbo v2, "setDisabledFlags nothing changed. return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setMenuVisibility(ZZ)V
    .locals 0

    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setRingerModeOnVolumeButton(I)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRingerModeOnVolumeButton() mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mVolumeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const v1, 0x7f02080f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mVolumeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const v1, 0x7f0207e8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mVolumeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const v1, 0x7f0207e4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setImageResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTaskBarVisibility(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAppDockContainier:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAppDockContainier:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f13016a

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllExcept(IZ)V

    goto :goto_0
.end method

.method public setup(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Z)V
    .locals 9

    const v5, 0x7f02080b

    const v6, 0x7f020808

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "[DS]TaskBarView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setup isHoriontalOrder="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "desktopmode"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsHorizontalOrder:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mFontScale:F

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLandscape:Z

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDispatchLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->setTaskBar(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsHorizontalOrder:Z

    invoke-virtual {v2, p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setupTaskBar(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAllAppsBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCellWidth()I

    move-result v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getWidthGap()I

    move-result v7

    add-int/2addr v2, v7

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScrollDxForClick:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCanScrollToRight:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCanScrollToLeft:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$4;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, p0}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScrollDxForClick:I

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setTouchSlop(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateLabsModeBtn()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLabsModeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKeyboardBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setRingerModeOnVolumeButton(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mVolumeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScreenCaptureBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mFinderBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mSizeControlBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mSizeControlBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const v4, 0x7f02080d

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setImageResource(I)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsRightPanelExpand:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLeftScrollBtn:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    if-eqz v2, :cond_3

    move v2, v5

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightScrollBtn:Landroid/widget/ImageButton;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    if-eqz v4, :cond_4

    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDateAndClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDateAndClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLeftScrollBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightScrollBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScreenCaptureBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setContextClickable(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScreenCaptureBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mVolumeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setContextClickable(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mVolumeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKeyboardBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setContextClickable(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKeyboardBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mActivityManager:Landroid/app/ActivityManager;

    return-void

    :cond_1
    move v2, v4

    goto/16 :goto_0

    :cond_2
    move v2, v4

    goto/16 :goto_1

    :cond_3
    move v2, v6

    goto :goto_2

    :cond_4
    move v6, v5

    goto :goto_3
.end method

.method public showAllAppsView()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarView"

    const-string/jumbo v1, "showAllAppsView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isKnoxKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->hideKnoxKeyguard(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->commandToggleAppTrayToLauncher()V

    const-string/jumbo v0, "103"

    const-string/jumbo v1, "1500"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showContextMenu(IFFLcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V
    .locals 8

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "[DS]TaskBarView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showContextMenu()  type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", item="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCloseAppsAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCloseAppsAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mStartAppsAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mStartAppsAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    if-nez v4, :cond_7

    new-instance v4, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->setTaskBarView(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v4, p1, p4, p5}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->makeContextView(ILcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    float-to-int v3, p3

    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->measure(II)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0694

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    if-eqz v4, :cond_5

    float-to-int v4, p2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getMeasuredWidth()I

    move-result v5

    sub-int v2, v4, v5

    if-ge v2, v0, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7d9

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x60020

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startShowAnimation()V

    :goto_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setContextMenuOpen(Z)V

    invoke-direct {p0, p5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setHoverPopupGone(Landroid/view/View;)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x53

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0693

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScreenWidthPixel:I

    sub-int/2addr v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getMeasuredWidth()I

    move-result v5

    sub-int v1, v4, v5

    int-to-float v4, v1

    cmpg-float v4, v4, p2

    if-gez v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v5, p2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getTargetView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getTargetView()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setHoverPopupVisible(Landroid/view/View;)V

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->dismiss()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v4, p1, p4, p5}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->makeContextView(ILcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    float-to-int v3, p3

    const/4 v4, -0x1

    if-le v3, v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v5, p3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->measure(II)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0694

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    if-eqz v4, :cond_b

    float-to-int v4, p2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getMeasuredWidth()I

    move-result v5

    sub-int v2, v4, v5

    if-ge v2, v0, :cond_a

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateViewLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V

    const-wide/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x53

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0693

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_4

    :cond_b
    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScreenWidthPixel:I

    sub-int/2addr v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getMeasuredWidth()I

    move-result v5

    sub-int v1, v4, v5

    int-to-float v4, v1

    cmpg-float v4, v4, p2

    if-gez v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_4

    :cond_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayoutParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v5, p2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_4
.end method

.method startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 18

    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v12, 0x0

    const/high16 v14, 0x10000000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "user"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    const-string/jumbo v14, "profile"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string/jumbo v14, "profile"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v7, v14, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const/4 v9, 0x0

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string/jumbo v14, "[DS]TaskBarView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "shortcut extras:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v14, "shortcutIntent"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v14, 0x0

    :try_start_1
    invoke-static {v8, v14}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v9

    :cond_2
    :goto_1
    if-eqz v9, :cond_5

    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2
    const/4 v14, 0x1

    return v14

    :cond_3
    move-object/from16 v0, p3

    instance-of v14, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v14, :cond_0

    move-object/from16 v0, p3

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-object v14, v0

    iget-object v12, v14, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->user:Landroid/os/UserHandle;

    goto :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v14, "[DS]TaskBarView"

    const-string/jumbo v15, "failed to parse shortcut intent URI"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    const v15, 0x7f0f0605

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v14

    if-eqz v14, :cond_4

    const-string/jumbo v14, "[DS]TaskBarView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unable to launch. tag="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " intent="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    const/4 v14, 0x0

    return v14

    :cond_5
    if-nez v12, :cond_6

    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v7, v0, v15}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    const v15, 0x7f0f0605

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v14

    if-eqz v14, :cond_4

    const-string/jumbo v14, "[DS]TaskBarView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Launcher does not have the permission to launch "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "or use the exported attribute for this activity. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "tag="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " intent="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-virtual {v14, v7, v15, v12}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    const v15, 0x7f0f0605

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v14

    if-eqz v14, :cond_4

    const-string/jumbo v14, "[DS]TaskBarView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unable to launch  for disabled profile UserHandle tag="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " intent="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " user:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method public startDrag(Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;Landroid/graphics/Point;)V
    .locals 12
    .param p3    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "[DS]TaskBarView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startDrag origin="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ,view="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v8, "text/plain"

    const/4 v9, 0x0

    aput-object v8, v6, v9

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "DragAndDropBinding"

    const-string/jumbo v9, "DragAndDropBinding"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of v8, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v8, :cond_2

    const-string/jumbo v8, "itemType"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v9, "itemId"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-wide v10, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isKnoxShortcut(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v9, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    iget-object v9, v5, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v8, v9}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    new-instance v4, Landroid/content/ClipData$Item;

    invoke-direct {v4, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/ClipData;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8, v6, v4}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    new-instance v7, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;

    invoke-direct {v7, p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;-><init>(Landroid/view/View;)V

    if-eqz p3, :cond_3

    iget v8, p3, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, p3, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->semSetLastTouchPoint(FF)V

    :cond_3
    const/16 v2, 0x103

    const/4 v8, 0x0

    invoke-virtual {p1, v0, v7, v8, v2}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    sput-object p2, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->dragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDraggingView:Landroid/view/View;

    instance-of v8, p2, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-interface {p2, v8}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;->hide(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    :cond_4
    return-void
.end method

.method public toggleDeskNotificationView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->toggleDeskNotificationView(Z)V

    return-void
.end method

.method public updateAudioPathView(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    const-string/jumbo v1, "EXPANDED"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mExpandedAudioPathView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "DEVICES_COUNT"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[DS]TaskBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAudioPathView :: mExpandedAudioPathView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mExpandedAudioPathView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mExpandedAudioPathView:Landroid/widget/RemoteViews;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mExpandedAudioPathView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isAudioContextMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->updateLayout()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAudioContextMenu()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "[DS]TaskBarView"

    const-string/jumbo v2, "updateAudioPathView :: intent is null. maybe SamsungConnect is removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAudioContextMenu()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mExpandedAudioPathView:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

.method public updateBadgeCount(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->updateBadgeCount(Ljava/util/Map;)V

    return-void
.end method

.method protected updateCurrentView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCurrentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateLayoutTransitionsEnabled()V

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCurrentRotation:I

    return-void
.end method

.method protected updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v1, :cond_0

    const v0, 0x7f0207fd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mHomeDefaultIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020803

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0207f4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0207f2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public updateKnoxKeyguardState(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKnoxKeyguardState:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKnoxKeyguardState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAppDockContainier:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAllAppsBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAppDockContainier:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mAllAppsBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateLabsModeBtn()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "launch_policy_mode"

    const-string/jumbo v3, "-1"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/utils/DesktopModeSettingsUtil;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[DS]TaskBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLabsModeBtn launchPolicyMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLabsModeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public updateLeftPanelLayout()V
    .locals 7

    const/16 v4, 0x8

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsKeyguardState:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLeftPanelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setTaskBarVisibility(Z)V

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDisabledFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v3, v6

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mUseCarModeUi:Z

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDisabledFlags:I

    const/high16 v6, 0x1000000

    and-int/2addr v3, v6

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDisabledFlags:I

    const/high16 v6, 0x400000

    and-int/2addr v3, v6

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mNavigationIconHints:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->inLockTask()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_9

    :cond_1
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v6

    if-eqz v1, :cond_a

    move v3, v4

    :goto_5
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v6

    if-eqz v2, :cond_b

    move v3, v4

    :goto_6
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v6

    if-eqz v0, :cond_c

    move v3, v4

    :goto_7
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKnoxKeyguardState:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_d

    move v3, v5

    :goto_8
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setTaskBarVisibility(Z)V

    :cond_2
    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    if-eqz v2, :cond_e

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLeftPanelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    :cond_a
    move v3, v5

    goto :goto_5

    :cond_b
    move v3, v5

    goto :goto_6

    :cond_c
    move v3, v5

    goto :goto_7

    :cond_d
    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLeftPanelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateRightPanelLayout()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRightPanelLayout mIsKeyguardState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsKeyguardState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mIsRightPanelExpand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsRightPanelExpand:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsKeyguardState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->expandDeskStatusBar(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mSizeControlBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mStatusBarDivider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKeyboardBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mVolumeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScreenCaptureBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mFinderBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDateAndClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLabsModeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mSizeControlBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mStatusBarDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mVolumeBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mFinderBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mDateAndClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateLabsModeBtn()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsRightPanelExpand:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mKeyboardBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mScreenCaptureBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->collapseDeskStatusBar(Z)V

    goto :goto_0
.end method

.method public updateRunningTaskApp(ILandroid/app/ActivityManager$TaskDescription;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->updateRunningTaskApp(ILandroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public updateScrollStatus(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "udpateScrollStatus() mIsPanelAnimationRunning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsPanelAnimationRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsScrollBarShown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsScrollBarShown:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", showScroll="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsPanelAnimationRunning:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsScrollBarShown:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsScrollBarShown:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsScrollBarShown:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLeftScrollBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightScrollBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->moveScrollPosition(ZLandroid/view/View;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsScrollBarShown:Z

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCanScrollToRight:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mIsLayoutRTL:Z

    if-eqz v3, :cond_6

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCanScrollToLeft:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightScrollBtn:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCanScrollToRight:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCanScrollToRight:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightScrollBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLeftScrollBtn:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCanScrollToLeft:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mCanScrollToLeft:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLeftScrollBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLeftScrollBtn:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightScrollBtn:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mRightScrollBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mLeftScrollBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_4
.end method
