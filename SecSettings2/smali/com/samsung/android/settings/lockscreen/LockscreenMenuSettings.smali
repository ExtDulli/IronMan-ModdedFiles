.class public Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$2;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$3;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;
    }
.end annotation


# static fields
.field private static ALWAYS_ON_DISPLAY:I

.field private static ALWAYS_ON_DISPLAY_SWITCH:I

.field private static IRIS_SETTINGS:I

.field private static LOCKSCREEN_AND_SECURITY:I

.field private static final MY_USER_ID:I

.field private static NOTIFICATIONS_MASTER:I

.field private static SAMSUNG_PASS:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SECURE_FOLDER:I

.field private static SETTINGS_SECURITY_UNKNOWNSOURCE:I

.field private static SMART_LOCK:I

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static WORK_PROFILE_FINGERPRINTS:I

.field private static WORK_PROFILE_NOTIFICATIONS:I

.field public static mContext:Landroid/content/Context;

.field private static mSmartLockSummary:Ljava/lang/String;

.field private static sPowerManager:Landroid/os/PowerManager;


# instance fields
.field private aodDialog:Landroid/app/AlertDialog;

.field private isKioskContainer:Z

.field private mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mAppOpsSettings:Landroid/preference/Preference;

.field private mAppPermissionMonitor:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private final mBiometricsBackupObserver:Landroid/database/ContentObserver;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mCurrentDevicePassword:Ljava/lang/String;

.field private mCurrentProfilePassword:Ljava/lang/String;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFindMyMobile:Landroid/preference/Preference;

.field private mFingerSanner:Landroid/preference/Preference;

.field private mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFromCoverSetting:Z

.field private mFromPackageInstaller:Z

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIrisSettings:Landroid/preference/Preference;

.field private mIsAdmin:Z

.field private mLockAppShortcut:Landroid/preference/PreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockType:Landroid/preference/Preference;

.field private mLockscreenNotification:Landroid/preference/PreferenceScreen;

.field private mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

.field private mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

.field private mLockscreenSelectedValueProfile:I

.field private mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

.field private mPrivateMode:Landroid/preference/PreferenceScreen;

.field private mPrivateModeObserver:Landroid/database/ContentObserver;

.field private mProfileChallengeUserId:I

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSamsungPass:Landroid/preference/Preference;

.field private mSdcardEncryption:Landroid/preference/PreferenceScreen;

.field private mSecure:Z

.field private mSecureFolder:Landroid/preference/PreferenceScreen;

.field private mSecureProfile:Z

.field private mSecuredLockSettings:Landroid/preference/PreferenceScreen;

.field private mShowInfomation:Landroid/preference/PreferenceScreen;

.field private mSilentLock:Landroid/preference/Preference;

.field private mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mUm:Landroid/os/UserManager;

.field private mUnifyProfile:Landroid/preference/SwitchPreference;

.field private mVisiblePatternProfile:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;

.field private mWasHighted:Z

.field private otherSecurityPreferece:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_FINGERPRINTS:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSdcardEncryption:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_NOTIFICATIONS:I

    return v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settingslib/RestrictedPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get24()Landroid/os/PowerManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->sPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_FINGERPRINTS:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_NOTIFICATIONS:I

    return p0
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isUCMODEEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateBiometricsState()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateUnificationPreference()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->removeFindMyMobile(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->apppermissionmonitorSwitchChanged(ZZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->launchConfirmDeviceLockForUnification()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->privateModeSummaryUpdate()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->resetAccessabilityFeature()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->unifyUncompliantLocks()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateAlwaysOnScreenSummary()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWasHighted:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromPackageInstaller:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromCoverSetting:Z

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$2;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$3;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mBiometricsBackupObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private InitValue(I)V
    .locals 29

    const-string/jumbo v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v17

    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnforced()Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    if-eqz v17, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->getUCMKeyguardVendorName()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v6

    const-string/jumbo v25, "sec_device_security_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_5

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    new-instance v25, Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    const-string/jumbo v26, "trust_agent"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    iget-object v0, v5, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    iget-object v0, v5, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    iget-object v0, v5, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v25, "android.intent.action.MAIN"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/samsung/android/settingslib/RestrictedPreference;->setIntent(Landroid/content/Intent;)V

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getLockTypeSummary(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v25, "secured_lock_settigns"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v25

    if-nez v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const v23, 0x7f0b0a7a

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v25

    if-eqz v25, :cond_6

    const v23, 0x7f0b0a7b

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(I)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/settingslib/RestrictedPreference;->getOrder()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    :cond_a
    const-string/jumbo v25, "show_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    const-string/jumbo v25, "lock_screen_menu_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    const-string/jumbo v25, "lock_screen_menu_sec_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->getLockScreenShowNotificationSummary(Landroid/content/Context;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "lock_screen_show_notifications"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_27

    const/4 v10, 0x1

    :goto_2
    const v20, 0x7f0b0ab1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    const-string/jumbo v26, "com.samsung.android.app.aodservice"

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_c

    const v20, 0x7f0b0ab2

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v25, v0

    if-eqz v10, :cond_d

    const v20, 0x7f0b1d09

    :cond_d
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_e
    const-string/jumbo v25, "lock_app_shortcut"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    const-string/jumbo v25, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    const-string/jumbo v26, "com.samsung.android.app.aodservice"

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v25

    if-eqz v25, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->getAODBadgeCount(Landroid/content/Context;)I

    move-result v25

    if-lez v25, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string/jumbo v26, "layout_inflater"

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    const v25, 0x7f040243

    const/16 v26, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    const/16 v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v25

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    const/16 v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->buildDrawingCache(Z)V

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v8, v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "aod_mode"

    invoke-static/range {v26 .. v26}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v28

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v25

    const-string/jumbo v26, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const v26, 0x7f0b0ab6

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string/jumbo v26, "com.samsung.android.app.aodservice"

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const v26, 0x7f0b0a41

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_11
    const-string/jumbo v25, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isNonMarketAppsAllowed()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v25

    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0b0a24

    invoke-virtual/range {v25 .. v26}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string/jumbo v26, "no_install_unknown_sources"

    sget v27, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-static/range {v25 .. v27}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v25

    if-nez v25, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string/jumbo v26, "no_install_apps"

    sget v27, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-static/range {v25 .. v27}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isEnabled()Z

    move-result v25

    if-eqz v25, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v25, v0

    const-string/jumbo v26, "no_install_unknown_sources"

    invoke-virtual/range {v25 .. v26}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v25

    if-nez v25, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v25, v0

    const-string/jumbo v26, "no_install_apps"

    invoke-virtual/range {v25 .. v26}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_15
    const-string/jumbo v25, "find_my_mobile"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_16

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-nez v25, :cond_16

    const/16 v16, 0x1

    :cond_16
    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v11

    if-eqz v16, :cond_17

    if-eqz v11, :cond_2b

    :cond_17
    :goto_5
    const-string/jumbo v25, "finger_scanner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    const-string/jumbo v25, "iris_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    const-string/jumbo v25, "silent_lock"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/preference/Preference;

    const-string/jumbo v25, "samsung_pass"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSamsungPass:Landroid/preference/Preference;

    const-string/jumbo v25, "app_ops_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    const-string/jumbo v25, "app_permission_monitor"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_18

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v25

    const-string/jumbo v26, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v25, "0"

    const-string/jumbo v26, "persist.app.permission.monitor"

    const-string/jumbo v27, "-1"

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2c

    const/16 v25, 0x0

    :goto_6
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->apppermissionmonitorSwitchChanged(ZZ)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v15, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1a

    if-eqz v15, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1a
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v26

    const/16 v27, 0xc

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    if-eqz v15, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v15, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateBiometricsState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_20

    const/high16 v25, 0x20000

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_1d

    const/high16 v25, 0x30000

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_2f

    :cond_1d
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1f
    const-string/jumbo v25, "LockscreenMenuSettings"

    const-string/jumbo v26, "Disabling Irises and Fingerprints menu for SD in case of Pin/Pattern as locktype"

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    if-eqz v17, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_25

    if-eqz v15, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_25
    const-string/jumbo v25, "key_private_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_26
    const-string/jumbo v25, "secure_folder"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureFolder:Landroid/preference/PreferenceScreen;

    return-void

    :cond_27
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_3

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setIcon(I)V

    goto/16 :goto_4

    :cond_2a
    const-string/jumbo v25, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const-string/jumbo v26, ""

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const v26, 0x7f0b0909

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_5

    :cond_2c
    const/16 v25, 0x1

    goto/16 :goto_6

    :cond_2d
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v25

    if-eqz v25, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_2e

    const/16 v25, 0x0

    :goto_9
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_2e
    const/16 v25, 0x1

    goto :goto_9

    :cond_2f
    const/high16 v25, 0x10000

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_20

    goto/16 :goto_8
.end method

.method private RemoveMenu()V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v8

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v16, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v16, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v15

    const-string/jumbo v16, "com.samsung.android.app.aodservice"

    invoke-static/range {v15 .. v16}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v15

    if-eqz v15, :cond_1c

    const-string/jumbo v15, "sec_device_security_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    const-string/jumbo v15, "sec_lock_and_always_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_0

    if-nez v10, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    if-eqz v15, :cond_3

    if-nez v8, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    invoke-virtual {v3, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    if-eqz v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v15

    if-nez v15, :cond_5

    if-nez v8, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    invoke-virtual {v3, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    if-eqz v15, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v15

    if-eqz v15, :cond_17

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v15

    if-nez v15, :cond_17

    if-nez v8, :cond_17

    if-nez v4, :cond_17

    sget-object v15, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/settings/Utils;->isSharedDeviceSupportIris(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_17

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/preference/Preference;

    if-eqz v15, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSilentLock()Z

    move-result v15

    if-eqz v15, :cond_9

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v15

    if-nez v15, :cond_9

    if-nez v8, :cond_9

    if-nez v4, :cond_9

    sget-object v15, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/preference/Preference;

    invoke-virtual {v3, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_b

    if-eqz v7, :cond_18

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v15

    if-eqz v15, :cond_19

    :cond_c
    :goto_1
    if-nez v9, :cond_d

    const v15, 0x7f0b0690

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_e

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v15

    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    :goto_2
    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromCoverSetting:Z

    if-eqz v15, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->hasCoverSettingAppShortcut(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_13

    :cond_12
    invoke-static {}, Lcom/android/settings/Utils;->isSupportLockAppShortcut()Z

    move-result v15

    if-eqz v15, :cond_13

    if-eqz v5, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_14
    sget-object v15, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/settings/Utils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_15

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    :cond_15
    if-eqz v5, :cond_16

    if-eqz v10, :cond_16

    if-nez v9, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_16
    :goto_3
    const-string/jumbo v15, "sec_security_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    if-nez v13, :cond_2a

    return-void

    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_1b
    const v15, 0x7f0b04d0

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_3

    :cond_1c
    const-string/jumbo v15, "sec_lockscreen_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    if-nez v11, :cond_1d

    return-void

    :cond_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    if-eqz v15, :cond_1f

    if-nez v8, :cond_1e

    if-eqz v4, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_20

    if-eqz v7, :cond_26

    :cond_20
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_21

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v15

    if-eqz v15, :cond_27

    :cond_21
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_22

    if-eqz v5, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_22
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v15

    if-eqz v15, :cond_28

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_23

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_23
    :goto_5
    if-eqz v5, :cond_25

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_24

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_24
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v15, :cond_25

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_25
    sget-object v15, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/settings/Utils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_29

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v15

    if-eqz v15, :cond_16

    if-eqz v11, :cond_16

    const v15, 0x7f040052

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    goto/16 :goto_3

    :cond_26
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_27
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_28
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v15, :cond_23

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_29
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_6

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string/jumbo v16, "user"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-eqz v15, :cond_2c

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v15

    if-eqz v15, :cond_45

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const v16, 0x7f0b0a24

    invoke-virtual/range {v15 .. v16}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummaryOff(I)V

    :goto_7
    if-eqz v14, :cond_2c

    const-string/jumbo v15, "no_install_unknown_sources"

    invoke-virtual {v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2b

    const-string/jumbo v15, "no_install_apps"

    invoke-virtual {v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_46

    :cond_2b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    const-string/jumbo v15, "LockscreenMenuSettings"

    const-string/jumbo v16, "mToggleAppInstallation disable at UserManager"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    if-eqz v15, :cond_2d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    if-eqz v15, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_2f

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v15

    if-nez v15, :cond_2f

    if-nez v8, :cond_2f

    if-nez v4, :cond_2f

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v15

    if-eqz v15, :cond_30

    :cond_2f
    const-string/jumbo v15, "finger_scanner"

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_30
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    if-eqz v15, :cond_31

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v15

    if-eqz v15, :cond_4b

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v15

    if-nez v15, :cond_4b

    if-nez v8, :cond_4b

    if-nez v4, :cond_4b

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v15

    if-nez v15, :cond_4b

    sget-object v15, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/settings/Utils;->isSharedDeviceSupportIris(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_4b

    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/preference/Preference;

    if-eqz v15, :cond_32

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSilentLock()Z

    move-result v15

    if-eqz v15, :cond_33

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v15

    if-nez v15, :cond_33

    if-nez v8, :cond_33

    if-nez v4, :cond_33

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v15

    if-nez v15, :cond_33

    sget-object v15, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_34

    :cond_33
    const-string/jumbo v15, "silent_lock"

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_34
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSamsungPass:Landroid/preference/Preference;

    if-eqz v15, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->hasSamsungPassApplication(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->hasSamsungPassFrameworkPackage(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_35

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    if-eqz v15, :cond_36

    :cond_35
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSamsungPass:Landroid/preference/Preference;

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_36
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v15, :cond_37

    sget-object v15, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->removeFindMyMobile(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_37

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_37
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v15

    if-nez v15, :cond_38

    if-eqz v13, :cond_38

    const-string/jumbo v15, ""

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    :cond_38
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v15, :cond_3a

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v15

    const-string/jumbo v16, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_39

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    if-eqz v15, :cond_4c

    :cond_39
    :goto_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    if-eqz v15, :cond_40

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    if-eqz v15, :cond_3b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_3c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_3d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_3e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v15, :cond_3f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    :cond_3f
    if-eqz v13, :cond_40

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-eqz v15, :cond_40

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_40
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v15

    if-eqz v15, :cond_41

    if-eqz v13, :cond_41

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-eqz v15, :cond_41

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_41
    sget-object v15, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_42

    if-nez v8, :cond_42

    if-nez v4, :cond_42

    :cond_42
    if-eqz v13, :cond_43

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_43

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    :cond_43
    sget-object v15, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "persona"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v15

    if-nez v15, :cond_4d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureFolder:Landroid/preference/PreferenceScreen;

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_44
    :goto_b
    return-void

    :cond_45
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const v16, 0x7f0b0446

    invoke-virtual/range {v15 .. v16}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummaryOff(I)V

    goto/16 :goto_7

    :cond_46
    const-string/jumbo v15, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/admin/DevicePolicyManager;->semGetAllowUnsignedInstallationPackage(Landroid/content/ComponentName;)Z

    move-result v15

    if-eqz v15, :cond_48

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/admin/DevicePolicyManager;->semGetAllowUnsignedApp(Landroid/content/ComponentName;)Z

    move-result v15

    if-eqz v15, :cond_48

    const/4 v2, 0x0

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string/jumbo v16, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v17, "isNonMarketAppAllowed"

    invoke-static/range {v15 .. v17}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v2, :cond_47

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/admin/DevicePolicyManager;->semGetAllowThirdPartyAppList(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string/jumbo v15, ""

    invoke-virtual {v1, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_47
    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v15}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_49

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const v16, 0x10406ea

    invoke-virtual/range {v15 .. v16}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummaryOff(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    const-string/jumbo v15, "LockscreenMenuSettings"

    const-string/jumbo v16, "mToggleAppInstallation disable at DevicePolicyManager"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_8

    :cond_48
    const/4 v2, 0x1

    goto :goto_c

    :cond_49
    if-nez v2, :cond_2c

    const/4 v15, -0x1

    if-eq v6, v15, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v16, v0

    const/4 v15, 0x1

    if-ne v6, v15, :cond_4a

    const/4 v15, 0x1

    :goto_d
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isNonMarketAppsAllowed()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    const/4 v15, 0x1

    if-eq v6, v15, :cond_2c

    const-string/jumbo v15, "LockscreenMenuSettings"

    const-string/jumbo v16, "mToggleAppInstallation disable at getEnterprisePolicyEnabled"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_4a
    const/4 v15, 0x0

    goto :goto_d

    :cond_4b
    const-string/jumbo v15, "iris_settings"

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    :cond_4c
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_9_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v15

    if-gez v15, :cond_3a

    goto/16 :goto_a

    :cond_4d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureFolder:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->getSecureFolderBadgeCount(Landroid/content/Context;)I

    move-result v15

    if-lez v15, :cond_4e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureFolder:Landroid/preference/PreferenceScreen;

    const v16, 0x7f040243

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    goto/16 :goto_b

    :cond_4e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureFolder:Landroid/preference/PreferenceScreen;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    goto/16 :goto_b
.end method

.method private apppermissionmonitorSwitchChanged(ZZ)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.APP_PERMISSION_MONITOR_SWITCH_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "switch_status"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v3, 0x7f0b1d09

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "app_permission_monitor"

    const v4, 0x100047

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/high16 v2, 0x4000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    const-string/jumbo v2, "persist.app.permission.monitor"

    add-int/lit8 v3, v0, -0x1

    shl-int/lit8 v3, v3, 0x1a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "app_permission_monitor"

    add-int/lit8 v4, v0, -0x1

    shl-int/lit8 v4, v4, 0x1a

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startApppermissionmonitor()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "persist.app.permission.monitor"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "persist.app.permission.monitor"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v3, 0x7f0b1215

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecure:Z

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    const/16 v15, -0x2710

    if-eq v14, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v14

    if-nez v14, :cond_a

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecure:Z

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureProfile:Z

    const v14, 0x7f080101

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    move-object/from16 v16, v0

    sget v17, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-static/range {v14 .. v17}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v8

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v14

    if-eqz v14, :cond_1

    const v8, 0x7f0800e9

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v14, "unlock_set_or_change"

    sget v15, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    sget v15, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    const/16 v15, -0x2710

    if-eq v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v14

    if-eqz v14, :cond_3

    const v14, 0x7f080119

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    const v14, 0x7f08011f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v17, v0

    invoke-static/range {v14 .. v17}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;I)V

    :cond_2
    const v14, 0x7f0800e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->initLockscreenNotificationsForProfile()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v14

    if-nez v14, :cond_d

    const-string/jumbo v14, "unlock_set_or_change_profile"

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0b181e

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v14, "unlock_set_or_change"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    :cond_3
    :goto_2
    const-string/jumbo v14, "unlock_set_or_change"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    instance-of v14, v13, Lcom/samsung/android/settings/SecGearPreference;

    if-eqz v14, :cond_4

    check-cast v13, Lcom/samsung/android/settings/SecGearPreference;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/SecGearPreference;->setVisibleWigetLayout(I)V

    :cond_4
    const/4 v6, 0x0

    const-string/jumbo v14, "DeviceLockTime"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v15

    const-string/jumbo v16, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "is_secured_lock"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v17, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v14

    if-eqz v14, :cond_e

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v15, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v14

    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v15, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v14

    if-eqz v14, :cond_f

    const v6, 0x7f0b1486

    :goto_4
    const v14, 0x7f08009a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->InitValue(I)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->RemoveMenu()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v14}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIsAdmin:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIsAdmin:Z

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_11

    :cond_6
    :goto_5
    const-string/jumbo v14, "visiblepattern_profile"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/preference/SwitchPreference;

    const-string/jumbo v14, "unification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateUnificationPreference()V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v14

    if-nez v14, :cond_8

    new-instance v14, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    const-string/jumbo v15, "other_security_settings"

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    const v15, 0x7f0b0a43

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    const v15, 0x7f0b0a44

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    const-string/jumbo v15, "com.samsung.android.settings.OtherSecuritySettings"

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setPersistent(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_8
    return-object v9

    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v14, "unlock_set_or_change_profile"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_f
    const v6, 0x7f0b12fc

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v15, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const v6, 0x7f0b0a34

    goto/16 :goto_4

    :sswitch_1
    const v6, 0x7f0b0319

    goto/16 :goto_4

    :sswitch_2
    const v6, 0x7f0b1478

    goto/16 :goto_4

    :sswitch_3
    const v6, 0x7f0b147a

    goto/16 :goto_4

    :sswitch_4
    const v6, 0x7f0b147c

    goto/16 :goto_4

    :sswitch_5
    const v6, 0x7f0b0a25

    goto/16 :goto_4

    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v14

    if-nez v14, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v14

    if-nez v14, :cond_6

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v14

    if-nez v14, :cond_12

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isUCMODEEnabled()Z

    move-result v14

    if-eqz v14, :cond_13

    :cond_12
    :goto_6
    new-instance v1, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v5, v14}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v5}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v11

    invoke-virtual {v5}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_15

    const v14, 0x7f08010e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    :goto_7
    const-string/jumbo v14, "sdEncpref"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSdcardEncryption:Landroid/preference/PreferenceScreen;

    goto/16 :goto_5

    :cond_13
    const v14, 0x7f080108

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_6

    :cond_14
    const v14, 0x7f08011e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v14

    if-eqz v14, :cond_19

    if-nez v11, :cond_16

    invoke-virtual {v5}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionAppliedSDCard()Z

    move-result v14

    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v14

    if-eqz v14, :cond_18

    const v14, 0x7f08011c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v14

    if-eqz v14, :cond_17

    const v14, 0x7f08011b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_7

    :cond_17
    const v14, 0x7f08011a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_7

    :cond_18
    const v14, 0x7f08011a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_7

    :cond_19
    const v14, 0x7f08011b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_7

    nop

    :sswitch_data_0
    .sparse-switch
        0x9100 -> :sswitch_0
        0x10000 -> :sswitch_2
        0x10001 -> :sswitch_1
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_0
    .end sparse-switch
.end method

.method private disableIfPasswordQualityManaged(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v1

    const/high16 v2, 0x80000

    if-ne v1, v2, :cond_0

    :cond_0
    return-void
.end method

.method private getAODclocksummary()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x21c

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode_start_time"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode_end_time"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const v3, 0x7f0b0a53

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eq v2, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v5, v2, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v5, v1, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v12, 0x80

    invoke-virtual {v5, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    sget v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {p1, v11}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x10

    invoke-static {p0, v12, v11}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v6, v5}, Lcom/android/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v5, v6}, Lcom/android/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v11, :cond_2

    invoke-static {v6}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    if-eqz v0, :cond_4

    invoke-static {v6}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p2, v12, v11}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_4

    iput-object v0, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    :cond_4
    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    if-nez v11, :cond_5

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v4, v11, Landroid/content/pm/ServiceInfo;->labelRes:I

    const/4 v8, 0x0

    :try_start_0
    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_2
    invoke-static {v8, v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v8, :cond_5

    sget-object v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartLockSummary:Ljava/lang/String;

    if-eqz v11, :cond_5

    sget-object v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartLockSummary:Ljava/lang/String;

    iput-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    :cond_5
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v11, "LockscreenMenuSettings"

    const-string/jumbo v12, "getResourcesForApplication NameNotFoundException!"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method private getBiometricsSummary(ZZZ)Ljava/lang/String;
    .locals 10

    const-string/jumbo v3, ", "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ar"

    const-string/jumbo v2, "ja"

    const-string/jumbo v0, "zh"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v3, "\u060c "

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "4digits_pin_enabled"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    const/4 v5, 0x1

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v8, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_2
    if-eqz p3, :cond_1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f0b0a3c

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f0b07c5

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f0b092e

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v3, "\u3001"

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v3, "\uff0c"

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    :sswitch_0
    const v7, 0x7f0b0319

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_1
    const v7, 0x7f0b0a34

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_2
    const v7, 0x7f0b1478

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_3
    if-eqz v5, :cond_7

    const v7, 0x7f0b0aab

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const v7, 0x7f0b147a

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_4
    const v7, 0x7f0b147c

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :sswitch_5
    const v7, 0x7f0b0a25

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x10001 -> :sswitch_0
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method private getLockTypeSummary(I)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0b1486

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const v4, 0x7f0b12fc

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x100

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getBiometricsSummary(ZZZ)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getLockscreenAllowPrivateNotifications(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I
    .locals 3

    sget v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    if-ne p3, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_1

    const v1, 0x7f08010c

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x7f0800ee

    goto :goto_1

    :cond_2
    const v1, 0x7f0800ec

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    if-eqz v0, :cond_4

    const v1, 0x7f0800f1

    goto :goto_1

    :sswitch_1
    const v1, 0x7f0800ee

    goto :goto_1

    :cond_4
    const v1, 0x7f080113

    goto :goto_1

    :sswitch_2
    if-eqz v0, :cond_5

    const v1, 0x7f0800f3

    goto :goto_1

    :cond_5
    const v1, 0x7f080117

    goto :goto_1

    :sswitch_3
    if-eqz v0, :cond_6

    const v1, 0x7f0800f0

    goto :goto_1

    :cond_6
    const v1, 0x7f080110

    goto :goto_1

    :sswitch_4
    if-eqz v0, :cond_7

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p2, v2}, Lcom/android/settings/ManagedLockPasswordProvider;->getResIdForLockUnlockScreen(Z)I

    move-result v1

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x9100 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x10001 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_3
        0x60000 -> :sswitch_3
        0x70000 -> :sswitch_3
        0x80000 -> :sswitch_4
        0x90000 -> :sswitch_0
    .end sparse-switch
.end method

.method private initLockscreenNotificationsForProfile()V
    .locals 11

    const v10, 0x7f0b1c96

    const v9, 0x7f0b1c95

    const v8, 0x7f0b1c94

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_notifications_profile"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    if-nez v6, :cond_0

    const-string/jumbo v6, "LockscreenMenuSettings"

    const-string/jumbo v7, "Preference not found: lock_screen_notifications_profile"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->clearRestrictedItems()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xc

    invoke-direct {p0, v3, v4, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    iget-boolean v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureProfile:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    invoke-direct {p0, v1, v2, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    new-instance v7, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setOnPreClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateLockscreenNotificationsForProfile()V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    new-instance v7, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static isAODDisabledInPSM(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "psm_always_on_display_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v0, v1, v3

    const-string/jumbo v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public static isNavigationBarEnabled()Z
    .locals 7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "config_showNavigationBar"

    const-string/jumbo v5, "bool"

    const-string/jumbo v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "LockscreenMenuSettings"

    const-string/jumbo v4, "Fail to get service bool value"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2, v0, v4, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_0
    :goto_0
    if-nez v5, :cond_1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v3

    const-string/jumbo v5, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "Smart Lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "LockscreenMenuSettings"

    const-string/jumbo v7, "isSmartLockSupported : true"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    :cond_2
    const-string/jumbo v6, "LockscreenMenuSettings"

    const-string/jumbo v7, "isSmartLockSupported : false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6
.end method

.method private static isUCMODEEnabled()Z
    .locals 3

    const-string/jumbo v0, "2"

    const-string/jumbo v1, "ro.boot.ucs_mode"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private launchConfirmDeviceLockForUnification()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b1471

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    sget v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->launchConfirmProfileLockForUnification()V

    :cond_0
    return-void
.end method

.method private launchConfirmProfileLockForUnification()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b1472

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->unifyLocks()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    :cond_0
    return-void
.end method

.method private mUseCalendar(II)Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    sget-object v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    :goto_0
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v2, 0xa

    goto :goto_0
.end method

.method private makeAccessiblityDisablePopup()V
    .locals 13

    const/4 v0, 0x0

    const-string/jumbo v1, "\u2011"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "accessibility_display_magnification_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "finger_magnifier"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_6

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "FmMagnifier"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_7

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "high_contrast"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_8

    const/4 v5, 0x1

    :goto_3
    const-string/jumbo v9, ""

    const-string/jumbo v6, ""

    const v10, 0x7f0b0a59

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v0, 0x1

    sget-object v10, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    const v10, 0x7f0b1929

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0b1929

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-nez v4, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    const v10, 0x7f0b02cd

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0b02cd

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    const v10, 0x7f0b0340

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0b0340

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v10, 0x1

    if-ne v0, v10, :cond_9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0b0a56

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b04d0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const v11, 0x7f0b0a57

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    const v12, 0x7f0b0a5a

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$11;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$11;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    const/high16 v12, 0x1040000

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->aodDialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->aodDialog:Landroid/app/AlertDialog;

    new-instance v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->aodDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_9
    const/4 v10, 0x2

    if-lt v0, v10, :cond_a

    const v10, 0x7f0b0a58

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_a
    return-void
.end method

.method private maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;I)V
    .locals 3

    move v1, p2

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b07c6

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    const-string/jumbo v2, "fingerPref"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$14;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$14;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;I)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private needShowSmartLockDialog(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v2, "lock_screen_menu_settings"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "smart_lock_show_dialog"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isCHNSimInserted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    return v3
.end method

.method private privateModeSummaryUpdate()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1d09

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1d0a

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private static removeFindMyMobile(Landroid/content/Context;)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v5, 0x1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v3

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v4

    const-string/jumbo v7, "LockscreenMenuSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSupportLMM : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "LockscreenMenuSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasFMMDMClient : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "LockscreenMenuSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasMobileTracker : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "com.sec.android.app.mt"

    invoke-static {p0, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "LockscreenMenuSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSmsCapable : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    const/4 v6, 0x1

    :cond_2
    :goto_0
    return v6

    :cond_3
    if-nez v5, :cond_2

    if-nez v0, :cond_2

    const/4 v6, 0x1

    goto :goto_0
.end method

.method private resetAccessabilityFeature()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "accessibility_display_magnification_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "finger_magnifier"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "FmMagnifier"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "high_contrast"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v3, 0x1

    :goto_3
    sget-object v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "accessibility_display_magnification_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "finger_magnifier"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "FmMagnifier"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    if-eqz v3, :cond_4

    const-string/jumbo v5, "accessibility"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "high_contrast"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private setLinkedDataView()V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v10

    if-lez v10, :cond_0

    return-void

    :cond_0
    new-instance v10, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "menu"

    const-string/jumbo v11, "backup"

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "com.android.settings"

    const-string/jumbo v11, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v1, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v10, 0x7f0b0cef

    iput v10, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.android.sm.ACTION_SECURITY"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/high16 v10, 0x10200000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iput-object v2, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v10, 0x7f0b0a23

    iput v10, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_1
    new-instance v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v6}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "com.android.settings"

    const-string/jumbo v11, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v0, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v10, 0x7f0b1428

    iput v10, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v7}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "com.samsung.android.applock"

    const-string/jumbo v11, "com.samsung.android.applock.settings.AppLockSettingsActivity"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v3, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v10, 0x7f0b0dbe

    iput v10, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    :cond_3
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, v6}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    const-string/jumbo v10, "applock"

    invoke-static {v10}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, v7}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getListView()Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    :cond_5
    return-void

    :cond_6
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 5

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, p3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-static {v3, p3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    if-eqz v3, :cond_0

    new-instance v1, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->addRestrictedItem(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;)V

    :cond_0
    return-void
.end method

.method private showSmartLockDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    move-object v2, p2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040372

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f11085a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v4, 0x7f11019d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b11fa

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$7;

    invoke-direct {v5, p0, v0, p2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$7;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/widget/CheckBox;Landroid/content/Intent;)V

    const v6, 0x7f0b0512

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$8;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    const v6, 0x7f0b0509

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$9;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$9;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private startApppermissionmonitor()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.APP_PERMISSION_MONITOR_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "which_fragment"

    const-string/jumbo v3, "APMApplist"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, ":android:show_fragment"

    const-string/jumbo v3, "com.samsung.android.apppermissionmonitor.APMApplist"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, ":android:no_headers"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startFaceSettings(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "LockscreenMenuSettings"

    const-string/jumbo v3, "startFaceSettings isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b085a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.face.FaceEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "from_switch"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startFingerprintScanner()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "LockscreenMenuSettings"

    const-string/jumbo v3, "isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b085a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.fingerprint.FingerprintEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startIrisSettings()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "LockscreenMenuSettings"

    const-string/jumbo v3, "isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b085a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private unifyLocks()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    sget v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    sget v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private unifyUncompliantLocks()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0b146b

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private ununifyLocks()V
    .locals 6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "isAfw"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0b146c

    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private updateAlwaysOnScreenSummary()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v4, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :goto_0
    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getAODclocksummary()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v0, :cond_0

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v4, 0x7f0b0a5d

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isNavigationBarEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v4, 0x7f0b0a54

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v4, 0x7f0b0a55

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v4, 0x7f0b0a5e

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_7
    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopDockConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateBiometricsState()V
    .locals 8

    const v6, 0x7f0b088d

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.feature.fingerprint_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->numEnrolledFingerprints()I

    move-result v1

    if-lez v1, :cond_b

    if-ne v1, v5, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    sget-object v4, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b088e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    if-eqz v3, :cond_5

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    const v4, 0x7f0b0930

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/preference/Preference;

    if-eqz v3, :cond_9

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/preference/Preference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_7
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/preference/Preference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/preference/Preference;

    const v4, 0x7f0b08d4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    :cond_9
    :goto_2
    return-void

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    sget-object v4, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0b088f

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    const v4, 0x7f0b092f

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_e
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/preference/Preference;

    const v4, 0x7f0b08d3

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2
.end method

.method private updateLockscreenNotificationsForProfile()V
    .locals 4

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getLockscreenNotificationsEnabled(I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureProfile:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getLockscreenAllowPrivateNotifications(I)Z

    move-result v0

    :goto_0
    if-nez v1, :cond_3

    const v2, 0x7f0b1c96

    :goto_1
    iput v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setSummary(I)V

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f0b1c94

    goto :goto_1

    :cond_4
    const v2, 0x7f0b1c95

    goto :goto_1
.end method

.method private updateUnificationPreference()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f0b1828

    const v1, 0x104000a

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f0b1829

    const v1, 0x7f0b09b9

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b1824

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    return-void
.end method

.method private warnAppInstallationFromPackageInstaller()V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v6}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v6, 0x7f04002e

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f11013d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f11013e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "one_time_operate"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_2

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v4, 0x104000a

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f0b1829

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f0b09b9

    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b1824

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$13;

    invoke-direct {v6, p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$13;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_samsung_android_settings_lockscreen_LockscreenMenuSettings_lambda$1(Landroid/preference/Preference;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->LOCKSCREEN_AND_SECURITY:I

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->LOCKSCREEN_AND_SECURITY:I

    return v0
.end method

.method protected isGuestUser()Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3
.end method

.method public moveFindMyMobile()V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0b0901

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method public numEnrolledFingerprints()I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    if-ne p2, v8, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0b0901

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_0
    const/16 v0, 0x80

    if-ne p1, v0, :cond_1

    if-ne p2, v8, :cond_1

    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->launchConfirmProfileLockForUnification()V

    return-void

    :cond_1
    const/16 v0, 0x81

    if-ne p1, v0, :cond_2

    if-ne p2, v8, :cond_2

    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->unifyLocks()V

    return-void

    :cond_2
    const/16 v0, 0x82

    if-ne p1, v0, :cond_3

    if-ne p2, v8, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ununifyLocks()V

    return-void

    :cond_3
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_5

    if-ne p2, v8, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_4
    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-static {v1, v2}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    sput-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "coversetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromCoverSetting:Z

    :cond_0
    const v1, 0x7f0b0a78

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartLockSummary:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string/jumbo v1, "trust_agent_click_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "trust_agent_click_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_1
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method

.method public onGearClick(Lcom/samsung/android/settings/SecGearPreference;)V
    .locals 2

    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {p1}, Lcom/samsung/android/settings/SecGearPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mBiometricsBackupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "LockscreenAndSecurity"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 21

    const/4 v15, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v12

    const-string/jumbo v17, "toggle_install_applications"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v17, p2

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromPackageInstaller:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->warnAppInstallationFromPackageInstaller()V

    const/4 v15, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f029c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    sput v17, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SETTINGS_SECURITY_UNKNOWNSOURCE:I

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getMetricsCategory()I

    move-result v19

    sget v20, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SETTINGS_SECURITY_UNKNOWNSOURCE:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_3

    const/16 v17, 0x3e8

    :goto_1
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :cond_0
    :goto_2
    return v15

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->warnAppInstallation()V

    const/4 v15, 0x0

    goto :goto_0

    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0

    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    :cond_4
    const-string/jumbo v17, "lock_screen_menu_sec_notifications"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const v13, 0x7f0b0ab1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "com.samsung.android.app.aodservice"

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    const v13, 0x7f0b0ab2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v7, :cond_6

    const v13, 0x7f0b1d09

    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "lock_screen_show_notifications"

    if-eqz v7, :cond_8

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f0227

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    sput v17, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->NOTIFICATIONS_MASTER:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->NOTIFICATIONS_MASTER:I

    if-eqz v7, :cond_9

    const/16 v17, 0x3e8

    :goto_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    const/16 v17, 0x0

    goto :goto_3

    :cond_9
    const/16 v17, 0x0

    goto :goto_4

    :cond_a
    const-string/jumbo v17, "always_on_screen"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "accessibility_display_magnification_enabled"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_c

    const/4 v8, 0x1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "finger_magnifier"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "FmMagnifier"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_e

    const/4 v9, 0x1

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "high_contrast"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_f

    const/4 v10, 0x1

    :goto_7
    if-eqz v14, :cond_10

    sget-object v17, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_b

    if-nez v8, :cond_b

    if-nez v9, :cond_b

    if-eqz v10, :cond_10

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->makeAccessiblityDisablePopup()V

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f0237

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    sput v17, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY_SWITCH:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY_SWITCH:I

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_2

    :cond_c
    const/4 v8, 0x0

    goto :goto_5

    :cond_d
    const/4 v9, 0x1

    goto :goto_6

    :cond_e
    const/4 v9, 0x0

    goto :goto_6

    :cond_f
    const/4 v10, 0x0

    goto :goto_7

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "aod_mode"

    if-eqz v14, :cond_11

    const/16 v17, 0x1

    :goto_9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_8

    :cond_11
    const/16 v17, 0x0

    goto :goto_9

    :cond_12
    const-string/jumbo v17, "visiblepattern_profile"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v17

    if-eqz v17, :cond_13

    const/16 v17, 0x0

    return v17

    :cond_13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto/16 :goto_2

    :cond_14
    const-string/jumbo v17, "unification"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v17

    if-eqz v17, :cond_15

    const/16 v17, 0x0

    return v17

    :cond_15
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v17

    const/high16 v18, 0x10000

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v4

    :goto_a
    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;->newIntance(Z)Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v17

    const-string/jumbo v18, "unification_dialog"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_16
    const/4 v4, 0x0

    goto :goto_a

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0b1471

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v6, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v6, v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    sget v17, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    const/16 v18, 0x82

    const/16 v19, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ununifyLocks()V

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v17, "app_permission_monitor"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->apppermissionmonitorSwitchChanged(ZZ)V

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 15

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v12

    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b085b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "fromScreenLock"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0b1471

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    const-string/jumbo v0, "unlock_set_or_change_profile"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "isAfw"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "fromScreenLock"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0b146c

    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "secured_lock_settigns"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b085b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    return v0

    :cond_5
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_6
    const-string/jumbo v0, "find_my_mobile"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->moveFindMyMobile()V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "finger_scanner"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFingerprintScanner()V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "iris_settings"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0271

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->IRIS_SETTINGS:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->IRIS_SETTINGS:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startIrisSettings()V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "trust_agent"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SMART_LOCK:I

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SMART_LOCK:I

    invoke-static {v7, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->needShowSmartLockDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->showSmartLockDialog(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    :cond_c
    new-instance v9, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v9, v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v9, v1, v0}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "samsung_pass"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f028c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SAMSUNG_PASS:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SAMSUNG_PASS:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.samsungpass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_1

    :try_start_0
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "always_on_screen"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0236

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v8

    const-string/jumbo v0, "LockscreenMenuSettings"

    const-string/jumbo v1, "ActivityNotFoundException in AlwaysOnDisplay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_f
    const-string/jumbo v0, "silent_lock"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFaceSettings(Z)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "secure_folder"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f029b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SECURE_FOLDER:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SECURE_FOLDER:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string/jumbo v0, "com.samsung.knox.securefolder"

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v14

    const/4 v0, 0x3

    if-ne v14, v0, :cond_11

    const-string/jumbo v0, "com.samsung.knox.securefolder"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_11
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "skip_popup"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_12
    :try_start_2
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v0, "app_permission_monitor"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startApppermissionmonitor()V

    goto/16 :goto_0

    :cond_14
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->aodDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_display_magnification_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "finger_magnifier"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_7

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->aodDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.packageinstaller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "com.samsung.android.packageinstaller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "com.google.android.packageinstaller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromPackageInstaller:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWasHighted:Z

    if-nez v1, :cond_3

    const-string/jumbo v1, "toggle_install_applications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setHighlightPreferenceKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->highlightPreferenceIfNeeded()V

    iput-boolean v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWasHighted:Z

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->privateModeSummaryUpdate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "biometrics_backup_type"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mBiometricsBackupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->buildPreferenceForCOM()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setLinkedDataView()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateLockscreenNotificationsForProfile()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateAlwaysOnScreenSummary()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "LockscreenAndSecurity"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "FmMagnifier"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "high_contrast"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_8
    iput-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromPackageInstaller:Z

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
