.class Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;
.super Ljava/lang/Object;
.source "SecSetupLockScreenIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-virtual {v6}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->isResumed()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const-string/jumbo v7, "keyguard"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->nextAction(I)V

    return-void

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->-get0(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)Landroid/widget/RadioGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.samsung.android.settings.face.FaceLockSettings"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "previousStage"

    const-string/jumbo v7, "setupwizard_face"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v7, 0x2735

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "previousStage"

    const-string/jumbo v7, "lock_screen_iris"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "from_setupwizard"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v7, 0x2735

    invoke-virtual {v6, v4, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "previousStage"

    const-string/jumbo v7, "google_setupwizard_fingerprint"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "from_setupwizard"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v7, 0x2735

    invoke-virtual {v6, v3, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.settings.SETUP_LOCK_SCREEN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "com.android.settings"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "fromSetupwizard"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-virtual {v6}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasEnrolledFaceAndNonSecure(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "faceAuthNotNeed"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v7, 0x2735

    invoke-virtual {v6, v2, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_4
    const v6, 0x7f0b0ac2

    invoke-static {v6}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;->newInstance(I)Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-virtual {v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string/jumbo v8, "dialog"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1107a6
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method