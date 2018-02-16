.class public Lcom/samsung/android/settings/rcs/RcsSettings;
.super Landroid/preference/PreferenceFragment;
.source "RcsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mImsManager:Lcom/sec/ims/ImsManager;

.field mIsDefaultSms:Z

.field private mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

.field private mSettingsTreeParent:Landroid/preference/PreferenceScreen;

.field mSwitchRcs:Z

.field private mWirelessSettings:Lcom/samsung/android/settings/WirelessSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;Lcom/samsung/android/settings/WirelessSettings;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-class v0, Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    new-instance v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    iput-object p3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mWirelessSettings:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "rcs_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "rcs_settings_partial_branded"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "rcs_settings_partial_branded_cpr"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    return-void
.end method


# virtual methods
.method public disableAllRcsSettingsPreference()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disableAllRcsSettingsPreference: disable for all brand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method public enableRcs(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/sec/ims/ImsManager;->enableRcs(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/SecSettingsSwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    const-string/jumbo v1, "com.samsung.android.messaging"

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/rcs/RcsSettings;->enableRcs(Z)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/rcs/RcsSettings;->selectRcsVersion(Landroid/preference/Preference;)V

    return v3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mWirelessSettings:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/WirelessSettings;->callRcsDefaultSms()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->enableRcs(Z)V

    goto :goto_0
.end method

.method public selectRcsVersion(Landroid/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "rcs_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "rcs_settings_partial_branded"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "rcs_settings_partial_branded_cpr"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V

    goto :goto_0
.end method

.method public setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v1, "com.samsung.android.messaging"

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v1, v4}, Lcom/sec/ims/ImsManager;->isRcsEnabled(Z)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual {p1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-virtual {p1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const v1, 0x7f0b1d09

    invoke-virtual {p1, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual {p1, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-virtual {p1, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const v1, 0x7f0b0d63

    invoke-virtual {p1, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-nez v1, :cond_1

    const v1, 0x7f0b0d68

    invoke-virtual {p1, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public updateRcsSettingsVisibility()V
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils;->isRcsEnabledInCsc()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateRcsSettingsVisibility: RCS is not enabled in CSC"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isRcsUiForOpen()Z

    move-result v2

    const-string/jumbo v3, "dsds"

    const-string/jumbo v4, "persist.radio.multisim.config"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRcsSettingsVisibility: rcsUiForOpen is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRcsSettingsVisibility: multisim is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateRcsSettingsVisibility: RCS is not enabled in DS & OPEN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isRcse()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateRcsSettingsVisibility: update for RCSe"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isPartialBranded()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateRcsSettingsVisibility: update for Partial Branded"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isSupportCPR()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isFullBranded()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateRcsSettingsVisibility: update for Full Branded"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V

    goto/16 :goto_0
.end method
