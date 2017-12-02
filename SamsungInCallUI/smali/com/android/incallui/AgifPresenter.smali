.class public Lcom/android/incallui/AgifPresenter;
.super Lcom/android/incallui/Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AgifPresenter$AgifUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/AgifPresenter$AgifUi;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AgifPresenter"


# instance fields
.field private mAgifManager:Lcom/android/incallui/agif/AgifManager;

.field private mIsNeedToOutgoingAnim:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    invoke-static {}, Lcom/android/incallui/agif/AgifManager;->getInstance()Lcom/android/incallui/agif/AgifManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AgifPresenter;->mAgifManager:Lcom/android/incallui/agif/AgifManager;

    return-void
.end method


# virtual methods
.method public getNeedToOutgoingAnim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    return v0
.end method

.method public getUi()Lcom/android/incallui/AgifPresenter$AgifUi;
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AgifPresenter$AgifUi;

    return-object v0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/AgifPresenter;->getUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    return-object v0
.end method

.method public onEFenableStateChanged()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/AgifPresenter;->getUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "AgifPresenter"

    const-string v2, "onEFenableStateChanged()"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/incallui/agif/AgifCallServiceUtils;->needToShowAgifFragment(Landroid/content/Context;Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->setVisible(Z)V

    if-nez v1, :cond_2

    invoke-interface {v0, v3}, Lcom/android/incallui/AgifPresenter$AgifUi;->showAgifList(Z)V

    :cond_2
    iget-boolean v2, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v1, "AgifPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEFenableStateChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->startOutgoingCallAnimation()V

    goto :goto_0
.end method

.method public onInCallStateChanged(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/AgifPresenter;->getUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    if-nez v0, :cond_8

    if-eq p1, p2, :cond_8

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_8

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getLiveCallCounts()I

    move-result v0

    if-ne v0, v1, :cond_8

    iput-boolean v1, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    :cond_3
    :goto_1
    invoke-static {p3, v9, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/incallui/AgifPresenter$AgifUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->needToShowAgifFragment(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v5

    const-string v6, "AgifPresenter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStateChange: oldState-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " newState-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsNeedToOutgoingAnim-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " needToShowAgifFragment-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConference-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    if-nez v5, :cond_9

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->setVisible(Z)V

    if-nez v0, :cond_4

    invoke-interface {v3, v2}, Lcom/android/incallui/AgifPresenter$AgifUi;->showAgifList(Z)V

    :cond_4
    iget-boolean v5, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    invoke-interface {v3}, Lcom/android/incallui/AgifPresenter$AgifUi;->startOutgoingCallAnimation()V

    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    invoke-interface {v3, v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->updateButtonColor(Z)V

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v5, 0xa

    if-ne v0, v5, :cond_6

    invoke-interface {v3, v9}, Lcom/android/incallui/AgifPresenter$AgifUi;->setSentAgifUri(Landroid/net/Uri;)V

    :cond_6
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_a

    move v0, v1

    :goto_3
    invoke-interface {v3}, Lcom/android/incallui/AgifPresenter$AgifUi;->isShowAgifList()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    invoke-interface {v3, v2}, Lcom/android/incallui/AgifPresenter$AgifUi;->showAgifList(Z)V

    :cond_7
    if-nez v0, :cond_b

    :goto_4
    invoke-interface {v3, v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->setEnableSlidingTrayIcon(Z)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_3

    iput-boolean v2, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_4
.end method

.method public onIncomming()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "AgifPresenter"

    const-string v1, "onIncomming: "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AgifPresenter;->getUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, v2}, Lcom/android/incallui/AgifPresenter$AgifUi;->setVisible(Z)V

    invoke-interface {v0, v2}, Lcom/android/incallui/AgifPresenter$AgifUi;->showAgifList(Z)V

    goto :goto_0
.end method

.method public onShowCallStickerSettingChanged()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/AgifPresenter;->getUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "AgifPresenter"

    const-string v2, "onShowCallStickersChanged()"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/incallui/agif/AgifCallServiceUtils;->needToShowAgifFragment(Landroid/content/Context;Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->setVisible(Z)V

    if-nez v1, :cond_1

    invoke-interface {v0, v3}, Lcom/android/incallui/AgifPresenter$AgifUi;->showAgifList(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-interface {v0, v3}, Lcom/android/incallui/AgifPresenter$AgifUi;->setEnableSlidingTrayIcon(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->setEnableSlidingTrayIcon(Z)V

    goto :goto_0
.end method

.method public onSmartInfoQueryComplete()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/AgifPresenter;->getUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "AgifPresenter"

    const-string v2, "SmartCallback onQueryComplete"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "support_spam_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-interface {v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->onSmartInfoChanged()V

    goto :goto_0
.end method

.method public onUiReady(Lcom/android/incallui/AgifPresenter$AgifUi;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    iget-object v0, p0, Lcom/android/incallui/AgifPresenter;->mAgifManager:Lcom/android/incallui/agif/AgifManager;

    invoke-virtual {v0, p0}, Lcom/android/incallui/agif/AgifManager;->setPresenter(Lcom/android/incallui/AgifPresenter;)V

    iget-object v0, p0, Lcom/android/incallui/AgifPresenter;->mAgifManager:Lcom/android/incallui/agif/AgifManager;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifManager;->setupListener()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/AgifPresenter$AgifUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AgifPresenter;->onUiReady(Lcom/android/incallui/AgifPresenter$AgifUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/Presenter;->onUiResume()V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/AgifPresenter$AgifUi;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    iget-object v0, p0, Lcom/android/incallui/AgifPresenter;->mAgifManager:Lcom/android/incallui/agif/AgifManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifManager;->setPresenter(Lcom/android/incallui/AgifPresenter;)V

    iget-object v0, p0, Lcom/android/incallui/AgifPresenter;->mAgifManager:Lcom/android/incallui/agif/AgifManager;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifManager;->tearDownListeners()V

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/AgifPresenter$AgifUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AgifPresenter;->onUiUnready(Lcom/android/incallui/AgifPresenter$AgifUi;)V

    return-void
.end method

.method public setAgifUriAtCurrentCall(Landroid/net/Uri;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/incallui/Call;->setAgifUri(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public setCallButtonUIVisible(Z)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    goto :goto_0
.end method

.method public setNeedToOutgoingAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    return-void
.end method
