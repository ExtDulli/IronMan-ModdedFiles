.class public Lcom/android/incallui/agif/AgifFragment;
.super Lcom/android/incallui/BaseFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/AgifPresenter$AgifUi;
.implements Lcom/android/incallui/InCallPresenter$ContentViewChangeListener;
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/AgifPresenter;",
        "Lcom/android/incallui/AgifPresenter$AgifUi;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/incallui/AgifPresenter$AgifUi;",
        "Lcom/android/incallui/InCallPresenter$ContentViewChangeListener;",
        "Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;"
    }
.end annotation


# static fields
.field protected static final AGIF_PICKERS_COLUMN_NUM:I = 0x3

.field protected static final AGIF_PICKERS_ROW_NUM:I = 0x2

.field private static final AGIF_SENT_TOAST:I = 0xc8

.field private static final AGIF_SENT_TOAST_DELAY:I = 0x5dc

.field protected static final CALLER_INFO_SCALE:F = 0.45f

.field protected static final CALL_BUTTON_SCALE:F = 0.55f

.field private static final LOG_TAG:Ljava/lang/String; = "AgifFragment"

.field private static final SHOW_BUBBLE_TIP:I = 0xca

.field private static final SHOW_BUBBLE_TIP_DELAY:I = 0x226

.field private static final SMART_INFO_CHANGE:I = 0xc9


# instance fields
.field protected mAgifAddButton:Landroid/widget/ImageView;

.field protected mAgifAddButtonDivider:Landroid/view/View;

.field protected mAgifBottomBg:Landroid/view/View;

.field protected mAgifBottomDivider:Landroid/view/View;

.field protected mAgifContainer:Landroid/view/View;

.field protected mAgifListContainer:Landroid/view/View;

.field protected mAgifListPage:I

.field protected mAgifListSubText:Landroid/widget/TextView;

.field protected mAgifListSubTextTopSticker:Landroid/widget/TextView;

.field protected mAgifListText:Landroid/widget/TextView;

.field protected mAgifListTextContainer:Landroid/view/View;

.field protected mAgifPackageSize:I

.field protected mAgifPageContainer:Landroid/view/View;

.field protected mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

.field private mAgifPagerAdapterPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field protected mAgifRecommendContainer:Landroid/view/View;

.field protected mAgifRecommendView:Lcom/android/incallui/agif/AgifGridView;

.field protected mAgifSlidingTabLayout:Lcom/android/incallui/agif/AgifSlidingTabLayout;

.field protected mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

.field protected mAgifTabContainer:Landroid/view/View;

.field protected mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

.field protected mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

.field protected mAgifViewPagerWidth:I

.field private mBubbleTip:Landroid/widget/PopupWindow;

.field private mBubbleTipTextView:Landroid/widget/TextView;

.field private mBubbleTipView:Landroid/view/View;

.field protected mButtonContainer:Landroid/widget/HorizontalScrollView;

.field protected mCategoty:Ljava/lang/String;

.field protected mCloseButton:Landroid/widget/ImageButton;

.field private mContentViewSize:Landroid/graphics/Point;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mIsShowAgifList:Z

.field protected mMoreButton:Landroid/widget/TextView;

.field private mPopupOffAnimator:Landroid/animation/AnimatorSet;

.field private mPopupOffButtonAnimator:Landroid/animation/AnimatorSet;

.field private mPopupOnAnimator:Landroid/animation/AnimatorSet;

.field private mPopupOnButtonAnimator:Landroid/animation/AnimatorSet;

.field private mPresenter:Lcom/android/incallui/AgifPresenter;

.field protected mSelectedAgifUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifFragment;->mIsShowAgifList:Z

    new-instance v0, Lcom/android/incallui/agif/AgifFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifFragment$1;-><init>(Lcom/android/incallui/agif/AgifFragment;)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/agif/AgifFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifFragment$2;-><init>(Lcom/android/incallui/agif/AgifFragment;)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPagerAdapterPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/agif/AgifFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifFragment;->displayStickerSentToast()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/agif/AgifFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifFragment;->arrangeAgifPickers()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/agif/AgifFragment;)Lcom/android/incallui/AgifPresenter;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPresenter:Lcom/android/incallui/AgifPresenter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/agif/AgifFragment;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPopupOnAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/agif/AgifFragment;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPopupOffButtonAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/agif/AgifFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTipTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/agif/AgifFragment;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTip:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private animateForPopupOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPopupOffAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPopupOffAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPopupOnButtonAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private arrangeAgifPickers()V
    .locals 6

    const-string v0, "AgifFragment"

    const-string v1, "arrangeAgifPickers()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPagerWidth:I

    mul-int/lit8 v2, v0, 0x4

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListTextContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const v3, 0x3f0ccccd    # 0.55f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const-string v3, "AgifFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrangeAgifPickers callButtonHeight= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int v3, v0, v1

    if-lt v3, v2, :cond_2

    sub-int v0, v2, v1

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0273

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_1
    const-string v0, "AgifFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arrangeAgifPickers mAgifViewPagerWidth= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPagerWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rslt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPageContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPageContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPageContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private arrangeAgifSlidingTrayIcons(Landroid/graphics/Point;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const-string v0, "AgifFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arrangeAgifLayout mAgifListPage = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a02ff

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0f0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    mul-int/2addr v1, v4

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-gez v0, :cond_2

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-virtual {v0, v2}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v3, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-virtual {v3, v2}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-virtual {v2}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-virtual {v2}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private createAgifSlidingTrayIcons(I)V
    .locals 4

    const-string v0, "AgifFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAgifIconSlidingLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-virtual {v0, p1}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->createAgifSlidingTrayIcons(I)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->arrangeAgifSlidingTrayIcons(Landroid/graphics/Point;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AgifPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AgifPresenter;->getNeedToOutgoingAnim()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->startOutgoingCallAnimation()V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->isShowAgifContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/incallui/agif/AgifFragment$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/agif/AgifFragment$4;-><init>(Lcom/android/incallui/agif/AgifFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private createAnimatorSet()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifAnimUtil;->buildPopOnAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPopupOnAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifAnimUtil;->buildPopOffAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPopupOffAnimator:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifAnimUtil;->buildPopOnButtonAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPopupOnButtonAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifFragment;->createEndCallBackPopOnButtonAnim()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mPopupOnButtonAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifAnimUtil;->buildPopOffButtonAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPopupOffButtonAnimator:Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method

.method private createEndCallBackPopOnButtonAnim()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    new-instance v0, Lcom/android/incallui/agif/AgifFragment$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifFragment$5;-><init>(Lcom/android/incallui/agif/AgifFragment;)V

    return-object v0
.end method

.method private displayStickerSentToast()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "AgifFragment"

    const-string v1, "The context is null."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900cb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    const v5, 0x7f0a02f2

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const v6, 0x7f0a02f4

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const v6, 0x7f0a02f9

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v4, v4

    const v5, 0x3ee66666    # 0.45f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v0, v4, v0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    const-string v1, "AgifFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayStickerSentToast yOffset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x30

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v0}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040027

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f1000b1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private startPopupOffAimatorSet()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPopupOnAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPopupOnAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPopupOffAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPopupOffAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/incallui/agif/AgifFragment$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/agif/AgifFragment$6;-><init>(Lcom/android/incallui/agif/AgifFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private updateNewBadge(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/agif/AgifNewBadgeDrawable;-><init>(Landroid/content/Context;)V

    const-string v1, "AgifFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNewBadge = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", badgeDrawable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected arrangeAgifLayout(Landroid/graphics/Point;)V
    .locals 4

    const/4 v3, 0x4

    const-string v0, "AgifFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arrangeAgifLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_2
    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v1

    float-to-int v1, v0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a02fa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sub-int v2, v1, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/incallui/agif/AgifFragment;->arrangeAgifSlidingTrayIcons(Landroid/graphics/Point;)V

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifFragment;->arrangeAgifPickers()V

    goto :goto_0
.end method

.method public cancelSentStickerToast()V
    .locals 2

    const/16 v1, 0xc8

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/AgifPresenter;
    .locals 1

    new-instance v0, Lcom/android/incallui/AgifPresenter;

    invoke-direct {v0}, Lcom/android/incallui/AgifPresenter;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPresenter:Lcom/android/incallui/AgifPresenter;

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->createPresenter()Lcom/android/incallui/AgifPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/AgifPresenter$AgifUi;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    return-object v0
.end method

.method public hideBubbleTip()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTip:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTip:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTip:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method public isShowAgifContainer()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowAgifList()Z
    .locals 3

    const-string v0, "AgifFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowAgifList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/agif/AgifFragment;->mIsShowAgifList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifFragment;->mIsShowAgifList:Z

    return v0
.end method

.method public isShowGifButton()Z
    .locals 2

    const-string v0, "AgifFragment"

    const-string v1, "isShowGifButton"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowRecommendPage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAgifSetChanged()V
    .locals 2

    const-string v0, "AgifFragment"

    const-string v1, "notifyAgifSetChanged()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "agif_enhanced_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "AgifFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->arrangeAgifLayout(Landroid/graphics/Point;)V

    return-void
.end method

.method public onAgifViewStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "AgifFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_closePopup()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->showAgifList(Z)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_addAgif()V

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNetworkPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->showNetworkConnectionAllowDialog(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->showRecommendPage(Z)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_findMore()V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchGalaxyAppsSotreToCallCategory()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10009e -> :sswitch_0
        0x7f1000a5 -> :sswitch_1
        0x7f1000af -> :sswitch_2
    .end sparse-switch
.end method

.method public onContentViewChanged(Landroid/graphics/Point;)V
    .locals 3

    const-string v0, "AgifFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContentViewChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lcom/android/incallui/agif/AgifFragment;->arrangeAgifLayout(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "AgifFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "support_sticker_center"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "none"

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mCategoty:Ljava/lang/String;

    :goto_0
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addContentViewChangeListener(Lcom/android/incallui/InCallPresenter$ContentViewChangeListener;)V

    return-void

    :cond_1
    const-string v0, "calling"

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mCategoty:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f040022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "AgifFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/agif/AgifFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroy()V

    const-string v0, "AgifFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->hideBubbleTip()V

    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeContentViewChangeListener(Lcom/android/incallui/InCallPresenter$ContentViewChangeListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPagerAdapterPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0, v2}, Lcom/android/incallui/agif/AgifViewPager;->setAdapter(Landroid/support/v4/view/ac;)V

    iput-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g;->a(Landroid/content/Context;)Lcom/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/g;->g()V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g;->a(Landroid/content/Context;)Lcom/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/g;->a()Lcom/a/a/d/b/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/d/b/a/c;->a()V

    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/incallui/agif/AgifFragment;->setVisible(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/agif/AgifFragment;->showAgifList(Z)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->arrangeAgifLayout(Landroid/graphics/Point;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->needToShowAgifFragment(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->setVisible(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/agif/AgifFragment;->setEnableSlidingTrayIcon(Z)V

    goto :goto_0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/incallui/agif/AgifFragment;->setVisible(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/agif/AgifFragment;->showAgifList(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/agif/AgifFragment;->setEnableSlidingTrayIcon(Z)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->arrangeAgifLayout(Landroid/graphics/Point;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->needToShowAgifFragment(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/incallui/agif/AgifFragment;->setVisible(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/incallui/agif/AgifFragment;->setEnableSlidingTrayIcon(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/incallui/agif/AgifFragment;->setEnableSlidingTrayIcon(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onPause()V

    const-string v0, "AgifFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    const-string v0, "AgifFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->isAvailableAgifCallService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->setVisible(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mContentViewSize:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->arrangeAgifLayout(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifViewPager;->setRotationY(F)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->isShowAgifList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->showAgifList(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifViewPager;->setRotationY(F)V

    goto :goto_1
.end method

.method public onSelectAgifContents(Landroid/net/Uri;)V
    .locals 5

    const/16 v4, 0xc8

    const-string v0, "AgifFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectAgifContents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/agif/AgifFragment;->setSentAgifUri(Landroid/net/Uri;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->showAgifList(Z)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/coreapps/CoreAppsManager;->sendUriMessage(Landroid/net/Uri;)V

    const-string v0, "agif_induce_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->insertStickerSentLog(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->cancelSentStickerToast()V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onSmartInfoChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStart()V

    const-string v0, "AgifFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStop()V

    const-string v0, "AgifFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "AgifFragment"

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f100093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifContainer:Landroid/view/View;

    const v0, 0x7f100098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f100099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    const v0, 0x7f100094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    const v0, 0x7f100096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifBottomDivider:Landroid/view/View;

    const v0, 0x7f100097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifBottomBg:Landroid/view/View;

    const v0, 0x7f10009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListTextContainer:Landroid/view/View;

    const v0, 0x7f10009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListText:Landroid/widget/TextView;

    const v0, 0x7f1000a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryCallerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, " "

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->updateAgifListSubText(Ljava/lang/String;)V

    :cond_1
    const v0, 0x7f1000a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubTextTopSticker:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubTextTopSticker:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubTextTopSticker:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    const v0, 0x7f10009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mCloseButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mCloseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mCategoty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifLoader;->getAgifPackageInfoSize(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPackageSize:I

    iget v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPackageSize:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPackageSize:I

    iput v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    const-string v0, "agif_enhanced_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    :cond_4
    const v0, 0x7f1000a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPageContainer:Landroid/view/View;

    const v0, 0x7f1000a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifViewPager;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    new-instance v0, Lcom/android/incallui/agif/AgifPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    iget-object v3, p0, Lcom/android/incallui/agif/AgifFragment;->mCategoty:Ljava/lang/String;

    const-string v4, "agif_enhanced_service"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/incallui/agif/AgifPagerAdapter;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    const v0, 0x7f1000a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifSlidingTabLayout;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTabLayout:Lcom/android/incallui/agif/AgifSlidingTabLayout;

    const v0, 0x7f1000a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifTabContainer:Landroid/view/View;

    const v0, 0x7f1000a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifTabIndicator;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifViewPager;->setAdapter(Landroid/support/v4/view/ac;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifViewPager;->setAgifTabIndicator(Lcom/android/incallui/agif/AgifTabIndicator;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0, v5}, Lcom/android/incallui/agif/AgifViewPager;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPagerAdapterPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const-string v0, "AgifFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewCreated Page = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iget v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/incallui/agif/AgifPagerAdapter;->setPage(Landroid/view/ViewGroup;IZ)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifPagerAdapter;->notifyDataSetChanged()V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0, v6, v5}, Lcom/android/incallui/agif/AgifViewPager;->setCurrentItem(IZ)V

    iget v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPackageSize:I

    invoke-direct {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->createAgifSlidingTrayIcons(I)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTabLayout:Lcom/android/incallui/agif/AgifSlidingTabLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTabLayout:Lcom/android/incallui/agif/AgifSlidingTabLayout;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifSlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    :cond_6
    const-string v0, "agif_enhanced_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f1000a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButton:Landroid/widget/ImageView;

    const v1, 0x7f0900b5

    invoke-virtual {p0, v1}, Lcom/android/incallui/agif/AgifFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    const v0, 0x7f1000a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButtonDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButtonDivider:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButtonDivider:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const v0, 0x7f1000ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifRecommendContainer:Landroid/view/View;

    const v0, 0x7f1000ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifGridView;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifRecommendView:Lcom/android/incallui/agif/AgifGridView;

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "autoconfig_simbased_ssku"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const v0, 0x7f1000af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mMoreButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mMoreButton:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mMoreButton:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mMoreButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mMoreButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->updateRecommendPage()V

    :cond_b
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->setSentAgifUri(Landroid/net/Uri;)V

    :cond_c
    invoke-direct {p0}, Lcom/android/incallui/agif/AgifFragment;->createAnimatorSet()V

    return-void
.end method

.method public refreshAgifPage()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "AgifFragment"

    const-string v1, "refreshAgifPage()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mCategoty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifLoader;->getAgifPackageInfoSize(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPackageSize:I

    iget v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPackageSize:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPackageSize:I

    iput v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    const-string v0, "agif_enhanced_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    :cond_2
    iget v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPackageSize:I

    invoke-direct {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->createAgifSlidingTrayIcons(I)V

    const-string v0, "AgifFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshAgifPage() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iget v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/agif/AgifPagerAdapter;->setPage(Landroid/view/ViewGroup;IZ)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifPagerAdapter;->notifyDataSetChanged()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->isShowRecommendPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/incallui/agif/AgifFragment;->showRecommendPage(Z)V

    goto :goto_0
.end method

.method public selectAgifPage(I)V
    .locals 3

    const-string v0, "AgifFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectAgifPage() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/agif/AgifViewPager;->setCurrentItem(IZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->isShowRecommendPage()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->showRecommendPage(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/agif/AgifFragment;->updatePickerTitle(I)V

    return-void
.end method

.method public setEnableSlidingTrayIcon(Z)V
    .locals 3

    const-string v0, "AgifFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableSlidingTrayIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-virtual {v0, p1}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setSentAgifUri(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "AgifFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSentAgifUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mSelectedAgifUri:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "AgifFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardUi;->setCallCardPriority(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showAgifList(Z)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "AgifFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAgifList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifFragment;->mIsShowAgifList:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifFragment;->animateForPopupOn()V

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/incallui/agif/AgifFragment;->mIsShowAgifList:Z

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    invoke-interface {v2, v1}, Lcom/android/incallui/CallCardUi;->setPrimaryGifImage(Lcom/android/incallui/gif/GifDrawable;)V

    :cond_1
    :goto_1
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/incallui/CallCardUi;->updateSmartCallInfo(Lcom/android/incallui/Call;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardUi;->setCallCardPriority(I)V

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPresenter:Lcom/android/incallui/AgifPresenter;

    invoke-virtual {v0, v4}, Lcom/android/incallui/AgifPresenter;->setCallButtonUIVisible(Z)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifFragment;->mIsShowAgifList:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifFragment;->startPopupOffAimatorSet()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-virtual {v0, v4}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mPresenter:Lcom/android/incallui/AgifPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/AgifPresenter;->setCallButtonUIVisible(Z)V

    goto/16 :goto_0

    :cond_a
    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    iget-object v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-interface {v2, v3, v1}, Lcom/android/incallui/CallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_1
.end method

.method public showBubbleTip()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v0, "agif_induce_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->hideBubbleTip()V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040021

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTipView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTipView:Landroid/view/View;

    const v2, 0x7f100092

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTipTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTipTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity(Landroid/content/Context;)F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v1}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTipTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/agif/AgifFragment$7;

    invoke-direct {v1, p0}, Lcom/android/incallui/agif/AgifFragment$7;-><init>(Lcom/android/incallui/agif/AgifFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-virtual {v1, v6}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getChildImageView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTipView:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTip:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTip:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTip:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mBubbleTip:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTabLayout:Lcom/android/incallui/agif/AgifSlidingTabLayout;

    const v3, 0x800033

    aget v4, v0, v6

    aget v0, v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public showRecommendPage(Z)V
    .locals 6

    const/4 v5, -0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string v0, "agif_enhanced_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_2
    const-string v0, "AgifFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleRecommendPage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const v0, 0x7f0900c3

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListText:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifRecommendContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifRecommendContainer:Landroid/view/View;

    if-eqz p1, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifRecommendView:Lcom/android/incallui/agif/AgifGridView;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifRecommendView:Lcom/android/incallui/agif/AgifGridView;

    if-eqz p1, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/android/incallui/agif/AgifGridView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz p1, :cond_b

    :goto_4
    invoke-virtual {v0, v2}, Lcom/android/incallui/agif/AgifViewPager;->setVisibility(I)V

    :cond_6
    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    const-string v2, "calling"

    invoke-virtual {v0, v2}, Lcom/android/incallui/agif/AgifLoader;->isNewRecommendedContents(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v1}, Lcom/android/incallui/agif/AgifFragment;->updateNewBadge(Z)V

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifLoader;->checkedRecommededApps()V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifTabIndicator;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

    invoke-virtual {v0, v5}, Lcom/android/incallui/agif/AgifTabIndicator;->updateAgifTabIndicator(I)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/agif/AgifFragment;->updatePickerTitle(I)V

    goto/16 :goto_0

    :cond_8
    const v0, 0x7f0900c2

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    move v2, v1

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifTabIndicator;->getSelectPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->updatePickerTitle(I)V

    goto/16 :goto_0
.end method

.method public startOutgoingCallAnimation()V
    .locals 5

    const/16 v4, 0xca

    const-string v0, "AgifFragment"

    const-string v1, "startOutgoingCallAnimation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListPage:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->startOutgoingCallAnimation()V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AgifPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AgifPresenter;->setNeedToOutgoingAnim(Z)V

    const-string v0, "agif_induce_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/agif/AgifCallServiceUtils;->needToShowOutgoingAgifCallBubbleTip()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->isShowAgifContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x226

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public updateAgifButtons()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifFragment;->mIsShowAgifList:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/agif/AgifFragment;->showAgifList(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateAgifListSubText(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900be

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateButtonColor(Z)V
    .locals 5

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v0, "AgifFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateButtonColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifBottomDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifBottomDivider:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifBottomBg:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifBottomBg:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifTabContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v3, v0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifTabContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_5

    move v1, v3

    :goto_2
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz p1, :cond_6

    :goto_3
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifTabContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_3
.end method

.method public updatePickerTitle(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v3, 0x4

    const/4 v1, 0x0

    const-string v2, "AgifFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePickerTitle() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "agif_enhanced_service"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_6

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v2

    const-string v4, "call_state_calling"

    invoke-virtual {v2, v4}, Lcom/android/incallui/agif/AgifLoader;->getAgifStickerRecentInfoSize(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubTextTopSticker:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubTextTopSticker:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    if-gez p1, :cond_9

    :goto_4
    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListText:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubText:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    move v2, v3

    :goto_5
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubTextTopSticker:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifListSubTextTopSticker:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    move v2, v1

    goto :goto_5

    :cond_b
    move v1, v3

    goto :goto_6
.end method

.method public updateRecommendPage()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifRecommendView:Lcom/android/incallui/agif/AgifGridView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/agif/AgifLoader;->getRecommendedContents()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/agif/AgifLoader;->getRecommendedContents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifRecommendView:Lcom/android/incallui/agif/AgifGridView;

    new-instance v2, Lcom/android/incallui/agif/AgifRecommendImageAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/incallui/agif/AgifRecommendImageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/incallui/agif/AgifGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifRecommendView:Lcom/android/incallui/agif/AgifGridView;

    new-instance v1, Lcom/android/incallui/agif/AgifFragment$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/agif/AgifFragment$3;-><init>(Lcom/android/incallui/agif/AgifFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment;->mAgifRecommendView:Lcom/android/incallui/agif/AgifGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifGridView;->setFocusable(Z)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    const-string v1, "calling"

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifLoader;->isNewRecommendedContents(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/agif/AgifFragment;->updateNewBadge(Z)V

    goto :goto_0
.end method
