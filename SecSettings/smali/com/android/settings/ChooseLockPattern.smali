.class public Lcom/android/settings/ChooseLockPattern;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;,
        Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;
    }
.end annotation


# static fields
.field private static mAppLockBackupKey:Ljava/lang/String;

.field private static mForAppLockBackupKey:Z

.field private static mForFace:Z

.field private static mForFingerprint:Z

.field private static mForIris:Z

.field private static mForPrivateModeBackupKey:Z

.field private static mForSmartScan:Z

.field private static mFromAppLock:Z

.field private static mFromPersonalPage:Z

.field private static mFromScreenLockBio:Z

.field private static mFromScreenLockType:Z

.field private static mFromSettingsBio:Z

.field private static mFromSetupWizard:Z

.field private static mIsEnforcedMultifactorNReset:Z

.field private static mIsFromKnoxTwoStep:Z

.field private static mKnoxUserId:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForAppLockBackupKey:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForFace:Z

    return v0
.end method

.method static synthetic -get10()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mFromSettingsBio:Z

    return v0
.end method

.method static synthetic -get11()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mFromSetupWizard:Z

    return v0
.end method

.method static synthetic -get12()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    return v0
.end method

.method static synthetic -get13()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mIsFromKnoxTwoStep:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForFingerprint:Z

    return v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForIris:Z

    return v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    return v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForSmartScan:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mFromAppLock:Z

    return v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic -get8()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mFromScreenLockBio:Z

    return v0
.end method

.method static synthetic -get9()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mFromScreenLockType:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/ChooseLockPattern;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPattern;->allowHomeAndBack(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForFingerprint:Z

    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForIris:Z

    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForFace:Z

    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForSmartScan:Z

    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mFromPersonalPage:Z

    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mFromAppLock:Z

    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForAppLockBackupKey:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ChooseLockPattern;->mAppLockBackupKey:Ljava/lang/String;

    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mFromSetupWizard:Z

    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mFromScreenLockType:Z

    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mFromScreenLockBio:Z

    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mFromSettingsBio:Z

    sput v1, Lcom/android/settings/ChooseLockPattern;->mKnoxUserId:I

    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mIsFromKnoxTwoStep:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method private allowHomeAndBack(Z)V
    .locals 5

    if-nez p1, :cond_0

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createIntent(Landroid/content/Context;ZJLjava/lang/String;I)Landroid/content/Intent;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p5}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "has_challenge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "challenge"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p3}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_lock_method"

    const-string/jumbo v2, "pattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "confirm_credentials"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "extra_require_password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v6, -0x80000000

    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "from_personal"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromPersonalPage:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "from_applock"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromAppLock:Z

    const-string/jumbo v3, "ChooseLockPattern"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mFromAppLock : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/settings/ChooseLockPattern;->mFromAppLock:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "for_fingerprint"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForFingerprint:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "for_iris"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForIris:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "for_face"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForFace:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "for_smartscan"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForSmartScan:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "fromScreenLock"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromScreenLockType:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "screen_lock_bio"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromScreenLockBio:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "settings_bio"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromSettingsBio:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "fromSetupWizard"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromSetupWizard:Z

    const-string/jumbo v3, "ChooseLockPattern"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[mForFingerprint] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/settings/ChooseLockPattern;->mForFingerprint:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "forPrivateBackupKey"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "forAppLockBackupKey"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/ChooseLockPattern;->mAppLockBackupKey:Ljava/lang/String;

    sget-object v3, Lcom/android/settings/ChooseLockPattern;->mAppLockBackupKey:Ljava/lang/String;

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForAppLockBackupKey:Z

    const-string/jumbo v3, "ChooseLockPattern"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[mForPrivateModeBackupKey] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "fromKnoxKeyguard"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "android.intent.extra.USER_ID"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/ChooseLockPattern;->mKnoxUserId:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "is_knox_two_step"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mIsFromKnoxTwoStep:Z

    const-string/jumbo v3, "ChooseLockPattern"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mKnoxUserId :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/settings/ChooseLockPattern;->mKnoxUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ChooseLockPattern"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsFromKnoxTwoStep :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/settings/ChooseLockPattern;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/android/settings/ChooseLockPattern;->mKnoxUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPattern;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPwdChangeRequested()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    :cond_1
    const-string/jumbo v0, ""

    sget-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromPersonalPage:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    if-eqz v3, :cond_4

    :cond_2
    const v3, 0x7f121432

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    move v3, v5

    goto/16 :goto_0

    :cond_4
    sget v3, Lcom/android/settings/ChooseLockPattern;->mKnoxUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForFingerprint:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    new-array v3, v4, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/ChooseLockPattern;->mKnoxUserId:I

    invoke-static {p0, v4}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f120f07

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/ChooseLockPattern;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const v3, 0x7f12100e

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method
