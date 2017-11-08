.class public Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;
.super Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollIntroduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;


# instance fields
.field private mFingerprintUnlockDisabledByAdmin:Z

.field private mHasPassword:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private launchFindSensor([B)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getFindSensorIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchFingerprintLockSettings()V
    .locals 4

    const-string/jumbo v2, "FpstFingerprintEnrollIntroduction"

    const-string/jumbo v3, "launchFingerprintLockSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    const-string/jumbo v3, "google_setupwizard_fingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FpstFingerprintEnrollIntroduction"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private updatePasswordQuality()V
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    return-void
.end method


# virtual methods
.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf3

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    const v0, 0x7f1103cc

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected initViews()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->initViews()V

    const v1, 0x7f1103ca

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0b1426

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v1, -0x1

    if-ne p2, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v3, :cond_3

    if-nez v0, :cond_0

    if-ne p2, v3, :cond_5

    :cond_0
    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->finish()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    if-ne p1, v4, :cond_4

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->updatePasswordQuality()V

    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->launchFindSensor([B)V

    return-void

    :cond_4
    const/4 v3, 0x3

    if-ne p1, v3, :cond_6

    const v3, 0x7f05003a

    const v4, 0x7f05003b

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->overridePendingTransition(II)V

    :cond_5
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_6
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    const-string/jumbo v3, "FpstFingerprintEnrollIntroduction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", resultCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v1, :cond_5

    invoke-virtual {p0, v1, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->finish()V

    goto :goto_2
.end method

.method protected onCancelButtonClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1103cb

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onCancelButtonClick()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Lcom/android/setupwizardlib/span/LinkSpan;)V
    .locals 6

    const-string/jumbo v3, "url"

    invoke-virtual {p1}, Lcom/android/setupwizardlib/span/LinkSpan;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0b1bc7

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "FpstFingerprintEnrollIntroduction"

    const-string/jumbo v4, "Null help intent."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FpstFingerprintEnrollIntroduction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity was not found for intent, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v2, 0x20

    invoke-static {p0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    const v1, 0x7f040117

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setContentView(I)V

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0b1424

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    :goto_1
    const v1, 0x7f1103cb

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->updatePasswordQuality()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x7f0b1423

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    goto :goto_1
.end method

.method protected onNextButtonClick()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->launchFingerprintLockSettings()V

    return-void
.end method
