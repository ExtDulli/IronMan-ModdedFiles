.class public Lcom/android/incallui/RejectMsgContentPopup;
.super Lcom/android/incallui/BaseRejectMsgContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;
    }
.end annotation


# instance fields
.field private final AGIF_PICKERS_COLUMN_NUM:I

.field private AGIF_PICKERS_ROW_NUM:I

.field private amRejectStub:Landroid/view/ViewStub;

.field protected mAgifListPage:I

.field private mAgifMessageLayout:Landroid/view/View;

.field protected mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

.field protected mAgifSlidingTabLayout:Lcom/android/incallui/agif/AgifSlidingTabLayout;

.field protected mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

.field protected mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

.field protected mAgifViewPagerWidth:I

.field private mAnsMemoButton:Landroid/widget/LinearLayout;

.field private mAnsMemoImg:Landroid/widget/ImageView;

.field protected mCategoty:Ljava/lang/String;

.field private mCreateMessage:Landroid/widget/LinearLayout;

.field private mCreateMessageLayout:Landroid/view/View;

.field private mNavigationBarArea:Landroid/view/View;

.field protected mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;

.field private mRejectListContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/BaseRejectMsgContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoButton:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->AGIF_PICKERS_COLUMN_NUM:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->AGIF_PICKERS_ROW_NUM:I

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0b001a

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentPopup;->isNeedtoShowAgifContent()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f04009a

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_0
    const-string v0, "support_sticker_center"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "none"

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCategoty:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const v1, 0x7f04009c

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    :cond_1
    const-string v0, "reject"

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCategoty:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/incallui/RejectMsgContentPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/RejectMsgContentPopup;->arrangeAgifPickers()V

    return-void
.end method

.method private arrangeAgifPickers()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPagerWidth:I

    mul-int/lit8 v2, v0, 0x4

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->AGIF_PICKERS_ROW_NUM:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->AGIF_PICKERS_ROW_NUM:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arrangeAgifPickers mAgifViewPagerWidth= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPagerWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", rslt = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/agif/AgifViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private calculateListViewHeight(Landroid/widget/ListView;)I
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0
.end method


# virtual methods
.method public addAgifPage()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCategoty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifLoader;->getAgifPackageInfoSize(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iput v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    :cond_0
    const-string v0, "agif_enhanced_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iget v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/incallui/agif/AgifPagerAdapter;->setPage(Landroid/view/ViewGroup;IZ)V

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifPagerAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentPopup;->hasAgifRecentContents()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0, v3, v3}, Lcom/android/incallui/agif/AgifViewPager;->setCurrentItem(IZ)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0, v4, v3}, Lcom/android/incallui/agif/AgifViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public configureRejectMsgList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureRejectMsgList: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCreateMessageLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_c

    move v0, v1

    :goto_0
    const-string v3, "support_spam_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentPopup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    const-string v3, "show_reminder_button"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "com.samsung.android.app.reminder"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/RejectMsgContentPopup;->showAddReminderCheckBox(Ljava/lang/Boolean;)V

    :goto_1
    if-nez p1, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mTextResponses:Ljava/util/List;

    :goto_2
    new-instance v2, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;

    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentPopup;->mContext:Landroid/content/Context;

    const v4, 0x7f04009d

    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentPopup;->mTextResponses:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentPopup;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;

    invoke-direct {v3, p0}, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/BaseRejectMsgContent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCreateMessageLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/RejectMsgContentPopup$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/RejectMsgContentPopup$4;-><init>(Lcom/android/incallui/RejectMsgContentPopup;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mTextResponses:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mTextResponses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a047d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_3
    iget-object v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_5
    :goto_4
    return-void

    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/RejectMsgContentPopup;->showAddReminderCheckBox(Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_7
    iput-object p1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mTextResponses:Ljava/util/List;

    goto :goto_2

    :cond_8
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3

    :cond_9
    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v1

    :cond_a
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v1, :cond_5

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_4

    :cond_c
    move v0, v2

    goto/16 :goto_0
.end method

.method public getReminderCheckBox()Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mReminderCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public isNeedtoShowAgifContent()Z
    .locals 1

    const-string v0, "agif_reject_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAgifSetChanged()V
    .locals 1

    const-string v0, "agif_enhanced_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "notifyAgifSetChanged()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onCheckedReminderCheckBox(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseRejectMsgContent;->onCheckedReminderCheckBox(Z)V

    invoke-static {p1}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_AddReminder(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/BaseRejectMsgContent;->onDetachedFromWindow()V

    const-string v0, "agif_reject_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifViewPager;->setAdapter(Landroid/support/v4/view/ac;)V

    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g;->a(Landroid/content/Context;)Lcom/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/g;->g()V

    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/g;->a(Landroid/content/Context;)Lcom/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/g;->a()Lcom/a/a/d/b/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/d/b/a/c;->a()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/incallui/BaseRejectMsgContent;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04011b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCreateMessageLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCreateMessageLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    const v0, 0x7f1003e7

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCreateMessage:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCreateMessage:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/incallui/RejectMsgContentPopup$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/RejectMsgContentPopup$1;-><init>(Lcom/android/incallui/RejectMsgContentPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f100225

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f10025b

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoButton:Landroid/widget/LinearLayout;

    const v0, 0x7f10025c

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoImg:Landroid/widget/ImageView;

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/incallui/RejectMsgContentPopup$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/RejectMsgContentPopup$2;-><init>(Lcom/android/incallui/RejectMsgContentPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const-string v0, "agif_reject_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f100226

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectListContainer:Landroid/view/View;

    const v0, 0x7f100229

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCategoryDividerText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCategoryDividerText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCategoryDividerText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    const v0, 0x7f1003e5

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifMessageLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifMessageLayout:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifMessageLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCategoty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifLoader;->getAgifPackageInfoSize(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    iput v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    :cond_5
    const-string v0, "agif_enhanced_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    :cond_6
    const v0, 0x7f1000a3

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifViewPager;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    new-instance v0, Lcom/android/incallui/agif/AgifPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCategoty:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/incallui/agif/AgifPagerAdapter;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    const v0, 0x7f1000a7

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifSlidingTabLayout;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifSlidingTabLayout:Lcom/android/incallui/agif/AgifSlidingTabLayout;

    const v0, 0x7f1000a8

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifTabIndicator;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifViewPager;->setAdapter(Landroid/support/v4/view/ac;)V

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifViewPager;->setAgifTabIndicator(Lcom/android/incallui/agif/AgifTabIndicator;)V

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0, v5}, Lcom/android/incallui/agif/AgifViewPager;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifViewPager;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPagerWidth:I

    invoke-direct {p0}, Lcom/android/incallui/RejectMsgContentPopup;->arrangeAgifPickers()V

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/RejectMsgContentPopup$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/RejectMsgContentPopup$3;-><init>(Lcom/android/incallui/RejectMsgContentPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iget v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/incallui/agif/AgifPagerAdapter;->setPage(Landroid/view/ViewGroup;IZ)V

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifPagerAdapter;->notifyDataSetChanged()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentPopup;->hasAgifRecentContents()Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0, v5, v5}, Lcom/android/incallui/agif/AgifViewPager;->setCurrentItem(IZ)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifSlidingTabLayout:Lcom/android/incallui/agif/AgifSlidingTabLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifSlidingTabLayout:Lcom/android/incallui/agif/AgifSlidingTabLayout;

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifSlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifViewPager;->setRotationY(F)V

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->isAvailableAgifCallService(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentPopup;->showAgifList(Z)V

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0, v4, v5}, Lcom/android/incallui/agif/AgifViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifViewPager;->setRotationY(F)V

    goto :goto_1
.end method

.method public refreshAgifPage()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCategoty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifLoader;->getAgifPackageInfoSize(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iput v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    :cond_0
    const-string v0, "agif_enhanced_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iget v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/incallui/agif/AgifPagerAdapter;->setPage(Landroid/view/ViewGroup;IZ)V

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifPagerAdapter:Lcom/android/incallui/agif/AgifPagerAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifPagerAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentPopup;->hasAgifRecentContents()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifListPage:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0, v3, v3}, Lcom/android/incallui/agif/AgifViewPager;->setCurrentItem(IZ)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0, v4, v3}, Lcom/android/incallui/agif/AgifViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public selectAgifPage(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/agif/AgifViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;

    return-void
.end method

.method public showAgifList(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v0, 0x0

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v3

    if-eq v1, v3, :cond_0

    const-string v1, "Incoming call\'s slot ID is not the DDS, hide reject with sticker menu."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move p1, v0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifMessageLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAgifMessageLayout:Landroid/view/View;

    if-eqz p1, :cond_5

    move v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCategoryDividerText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCategoryDividerText:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    move v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mReminderDivider:Landroid/view/View;

    if-eqz v1, :cond_3

    if-nez p1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mReminderCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mReminderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mReminderDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lcom/android/incallui/RejectMsgContentPopup;->calculateListViewHeight(Landroid/widget/ListView;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mReminderDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
