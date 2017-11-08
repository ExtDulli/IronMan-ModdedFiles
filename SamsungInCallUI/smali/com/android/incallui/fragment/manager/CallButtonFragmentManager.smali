.class public Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;
.super Lcom/android/incallui/fragment/manager/BaseFragmentManager;

# interfaces
.implements Lcom/android/incallui/InCallPresenter$ConfigurationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/fragment/manager/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/fragment/CallButtonFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;"
    }
.end annotation


# static fields
.field private static final IVR_FORMAT:Ljava/lang/String; = "xml"

.field protected static final LOG_TAG:Ljava/lang/String; = "CallButtonFragmentManager"


# instance fields
.field mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mIsBGCall:Z

.field private mIsBGCallChanged:Z

.field private mIsCallPlus:Z

.field public mIsHasIVR:Z

.field private mIsInit:Z

.field public mIsOutGoingCall:Z


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsInit:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsCallPlus:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCall:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    const-string v0, "CallButtonFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "smart_ivr_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-boolean v0, v0, Lcom/android/incallui/InCallActivity;->mHasOutgoingCall:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-boolean v0, v0, Lcom/android/incallui/InCallActivity;->mHasIVR:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerToFirst(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V

    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_2
    return-void
.end method

.method private getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    const-string v1, "CallButtonFragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultFragment mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$CallButtonFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CallButtonFragmentManager"

    const-string v1, "new VoiceCallButtonFragment() "

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    const-string v2, "CallButtonFragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultFragment isVideoCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v1, :cond_0

    const-string v0, "CallButtonFragmentManager"

    const-string v1, "new VoiceCallButtonCallPlusFragment() "

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    const-string v0, "CallButtonFragmentManager"

    const-string v1, "new VoiceCallButtonVCCFragment() "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-direct {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/incallui/fragment/VideoCallButtonQCIFPSFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFPSFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isGloblaUX()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;-><init>()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;-><init>()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;-><init>()V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mOrientationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    :cond_5
    new-instance v0, Lcom/android/incallui/fragment/EndCallButtonFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Lcom/android/incallui/fragment/CallButtonEmptyFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/CallButtonEmptyFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method private postCheckAndSet(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 2

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChange : isAutoAnswered - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/CallButtonFragment;->setCallButtonContainerVisibility(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    return-object v0
.end method

.method public checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getCallToDisplay()Lcom/android/incallui/Call;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInCallState "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_4

    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "smart_ivr_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v5, 0x6

    if-eq v0, v5, :cond_3

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v5, 0x7

    if-ne v0, v5, :cond_5

    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/incallui/Call;->setIsOutgoingCall(Z)V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v5, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v5, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v5, :cond_6

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_6
    invoke-virtual {v4, v2}, Lcom/android/incallui/Call;->setIsOutgoingCall(Z)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v5

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyPortraitUI(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mOrientationType:I

    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v7, :cond_a

    move p1, v3

    :cond_a
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getIsOutgoingCall()Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "visual_call_center_callerid_info"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "smart_ivr_callerid_info"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_b
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_14

    iput-boolean v3, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCall:Z

    iput-boolean v2, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    const-string v6, "have BackgroundCall() "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    const-string v6, "smart_ivr_callerid_info"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VisualCallCenter;->VCC_createSrinIVRApi(Ljava/lang/String;)V

    :cond_c
    :goto_3
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    const-string v7, "xml"

    invoke-static {v6, v7}, Lcom/android/incallui/util/VisualCallCenter;->VCC_obtainIVR(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    :cond_d
    if-eqz v4, :cond_21

    invoke-virtual {v4}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/incallui/CallList;->isCallDisconnectingOrDisconnected(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-nez v5, :cond_e

    move v2, v3

    :cond_e
    if-eqz v6, :cond_19

    if-eqz v2, :cond_18

    sget-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isVolteGroupCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {v4}, Lcom/android/incallui/util/NameNumberUtils;->isNumberExists(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_10

    :cond_f
    sget-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    :cond_10
    :goto_4
    iget-object v5, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v0, v5, :cond_11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    :cond_11
    :goto_5
    const-string v5, "support_tphone"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_12

    if-eqz v2, :cond_13

    :cond_12
    sget-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    :cond_13
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v5, :cond_22

    sget-object v2, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    if-eq v0, v2, :cond_22

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    move-object v0, v1

    goto/16 :goto_0

    :cond_14
    iget-boolean v6, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCall:Z

    if-ne v6, v3, :cond_15

    iput-boolean v3, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    :goto_6
    iput-boolean v2, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCall:Z

    const-string v6, "no BackgroundCall() "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_15
    iput-boolean v2, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    goto :goto_6

    :cond_16
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v6

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v6, v7, :cond_17

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v6

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v6, v7, :cond_17

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v6

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v6, v7, :cond_17

    iget-boolean v6, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    if-eqz v6, :cond_c

    :cond_17
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VisualCallCenter;->VCC_createYuloreIVRApi(Ljava/lang/String;)V

    const-string v6, "onCreate VCC api:"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_18
    sget-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-static {v4}, Lcom/android/incallui/util/VideoCallUtils;->getVideoDimensionType(Lcom/android/incallui/Call;)I

    move-result v5

    if-ne v5, v3, :cond_10

    sget-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v5

    if-nez v5, :cond_10

    sget-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->QCIFPS_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    goto/16 :goto_4

    :cond_19
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1d

    if-nez v5, :cond_1b

    sget-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-static {v4}, Lcom/android/incallui/util/NameNumberUtils;->isNumberExists(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSetupWizardComplete()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_1a
    sget-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    goto/16 :goto_5

    :cond_1b
    const-string v5, "ims_support_rtt"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->hasRttCall()Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, "RTT disconnect. Make button fragment again"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1c
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    goto/16 :goto_0

    :cond_1d
    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "smart_ivr_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "visual_call_status"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_20

    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getIsOutgoingCall()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1f
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOnehandModeOn()Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VCC_VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const-string v5, "CallButtonFragmentManager"

    const-string v6, "requestedMode = VCC_VOICE "

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_20
    sget-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const-string v5, "ims_crane"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v0, v5, :cond_11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    goto/16 :goto_5

    :cond_21
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    goto/16 :goto_0

    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RcsShareUI.isMT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isMT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v4, :cond_23

    const-string v1, "ims_crane"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v1}, Lcom/android/incallui/secrcs/RcsShareUI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->getComposerAuth(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndSet isCraneAvailable : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-ne v1, v3, :cond_23

    iput-boolean v3, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsCallPlus:Z

    :cond_23
    const-string v1, "ims_crane"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsCallPlus:Z

    if-eqz v1, :cond_24

    sget-object v1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    if-eq v0, v1, :cond_24

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secrcs/RcsShareUI;->isVoiceMail()Z

    move-result v1

    if-nez v1, :cond_24

    sget-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->CALLPLUS_VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const-string v1, "CallButtonFragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestedMode: CALLPLUS_VOICE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    if-nez p1, :cond_25

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v1, v0, :cond_26

    :cond_25
    const-string v1, "CallButtonFragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestedMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mOrientationType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_26
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    goto/16 :goto_0
.end method

.method protected forceUpdateFragment()Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    if-ne v0, v1, :cond_0

    const-string v0, "CallButtonFragmentManager - force update fragment"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallToDisplay()Lcom/android/incallui/Call;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/android/incallui/fragment/CallButtonFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    return-object v0
.end method

.method public isHasIVR(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    const-string v0, "xml"

    invoke-static {p1, v0}, Lcom/android/incallui/util/VisualCallCenter;->VCC_obtainIVR(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    return v0
.end method

.method protected makeTestList()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-static {}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/CallList;->isCallDisconnectingOrDisconnected(Lcom/android/incallui/Call;)Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->forceUpdateFragment()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->onDestroy()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V

    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    return-void
.end method

.method public onSMultiWindowOnChanged()V
    .locals 2

    const-string v0, "CallButtonFragmentManager - onSMultiWindowOnChanged"

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSMultiWindowOnChanged : isAutoAnswered - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/CallButtonFragment;->setCallButtonContainerVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->postCheckAndSet(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)V

    return-void
.end method

.method public setCallPlusValue(Z)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallPlusValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsCallPlus:Z

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->setCurrentFragment(Lcom/android/incallui/fragment/CallButtonFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/fragment/CallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v2, 0x7f10030f

    const/4 v1, 0x0

    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$CallButtonFragmentManager$FragmentMode:[I

    move-object v0, p1

    check-cast v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v0, p2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CallButtonFragmentManager"

    const-string v1, "clear Dailpad when end call "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/VisualCallCenter;->VCC_setDisplayDailpad(Z)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
