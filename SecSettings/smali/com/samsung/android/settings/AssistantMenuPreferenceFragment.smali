.class public Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AssistantMenuPreferenceFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$1;,
        Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$2;,
        Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;,
        Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;
    }
.end annotation


# instance fields
.field private final IS_MUTUALLY_EXCLUSIVE_DIALOG_SHOWN:Ljava/lang/String;

.field private bSupportHoverZoom:Z

.field private mAssistantMenuEnabler:Lcom/samsung/android/settings/AssistantMenuEnabler;

.field private mAssistantMenuObserver:Landroid/database/ContentObserver;

.field private mAssistantMenuSize:Lcom/android/settings/SecDropDownPreference;

.field private mAssistantPlus:Landroid/support/v7/preference/Preference;

.field private mEditMenu:Landroid/support/v7/preference/Preference;

.field private mFmMagnifierObserver:Landroid/database/ContentObserver;

.field mMagnifierImage:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

.field private mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

.field mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

.field private mMagnifier_settings:Landroid/support/v7/preference/PreferenceCategory;

.field mOpacitySeekbar:Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;

.field private mPadSize:Lcom/android/settings/SecDropDownPreference;

.field private mPointerSize:Lcom/android/settings/SecDropDownPreference;

.field private mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

.field private mPreferenceFragmentActivity:Landroid/app/Activity;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuSize:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->refreshImageView(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->updateAssistantMenuSaving()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->updatePointerSizeMenuStatus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string/jumbo v0, "isMutuallyExclusiveDialogShown"

    iput-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->IS_MUTUALLY_EXCLUSIVE_DIALOG_SHOWN:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    new-instance v0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mFmMagnifierObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "AssistantMenuPreferenceFragment"

    const-string/jumbo v3, "installSwitchBarToggleSwitch"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assistant_menu"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method private refreshImageView(I)V
    .locals 3

    const-string/jumbo v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshImageView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->setHoverZoomImageLevel(I)V

    const-string/jumbo v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMagnifierImage.setMagnifierLevel(level) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    const-string/jumbo v0, "AssistantMenuPreferenceFragment"

    const-string/jumbo v1, "removeSwitchBarToggleSwitch"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method private updateAssistantMenuSaving()V
    .locals 10

    const v9, 0x7f120c07

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assistant_menu"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "FmMagnifier"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assistant_menu_pad_size"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c0b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assistant_menu_pointer_size"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v1, 0x0

    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c0e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assistant_menu_pointer_speed"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    const/4 v1, 0x0

    if-nez v3, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c10

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    iget-boolean v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    if-eqz v4, :cond_7

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hover_zoom_magnifier_size"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c0b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    if-nez v0, :cond_15

    iget-boolean v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setEnabledZoomButton(Z)V

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v6}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mOpacitySeekbar:Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->setEnabledZoomButton(Z)V

    :goto_4
    return-void

    :cond_9
    if-ne v3, v7, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c0a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    if-ne v3, v8, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    if-ne v3, v7, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c0d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_c
    if-ne v3, v7, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c11

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_d
    if-ne v3, v8, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c12

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_e
    if-ne v3, v7, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c0a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_f
    if-ne v3, v8, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hover_zoom_magnifier_size"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c0b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_11
    if-ne v3, v7, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c0a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_12
    if-ne v3, v8, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_13
    const/4 v4, 0x3

    if-ne v3, v4, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120a7f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_14
    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120d2b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_15
    iget-boolean v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setEnabledZoomButton(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v4}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->update()V

    :cond_16
    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mOpacitySeekbar:Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->setEnabledZoomButton(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mOpacitySeekbar:Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;->updateOpacitySeekbar()V

    goto/16 :goto_4
.end method

.method private updatePointerSizeMenuStatus()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "FmMagnifier"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    return-void
.end method


# virtual methods
.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSavedInstanceState:Landroid/os/Bundle;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v3, "AssistantMenuPreferenceFragment"

    const-string/jumbo v6, "onCreate()"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v6, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    const v3, 0x7f1500b7

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v3, "menu_edit"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "eam_active"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "opacity_settings"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mOpacitySeekbar:Lcom/samsung/android/settings/accessibility/assistantmenu/OpacitySeekBarPreference;

    const-string/jumbo v3, "assistant_menu_grid_size"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SecDropDownPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuSize:Lcom/android/settings/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuSize:Lcom/android/settings/SecDropDownPreference;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "assistant_menu_size"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuSize:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v10, [Ljava/lang/CharSequence;

    const v7, 0x7f120c0b

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const v7, 0x7f120c0a

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const v7, 0x7f120c07

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuSize:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v10, [Ljava/lang/CharSequence;

    const-string/jumbo v7, "0"

    aput-object v7, v6, v5

    const-string/jumbo v7, "1"

    aput-object v7, v6, v4

    const-string/jumbo v7, "2"

    aput-object v7, v6, v9

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f120c0b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuSize:Lcom/android/settings/SecDropDownPreference;

    new-instance v6, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$3;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string/jumbo v3, "fmpointer_speed"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SecDropDownPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v10, [Ljava/lang/CharSequence;

    const v7, 0x7f120c10

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const v7, 0x7f120c11

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const v7, 0x7f120c12

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v10, [Ljava/lang/CharSequence;

    const-string/jumbo v7, "0"

    aput-object v7, v6, v5

    const-string/jumbo v7, "1"

    aput-object v7, v6, v4

    const-string/jumbo v7, "2"

    aput-object v7, v6, v9

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    new-instance v6, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$4;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string/jumbo v3, "fmpointer_size"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SecDropDownPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v9, [Ljava/lang/CharSequence;

    const v7, 0x7f120c0e

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const v7, 0x7f120c0d

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v9, [Ljava/lang/CharSequence;

    const-string/jumbo v7, "0"

    aput-object v7, v6, v5

    const-string/jumbo v7, "1"

    aput-object v7, v6, v4

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    new-instance v6, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$5;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    const-string/jumbo v3, "fmpad_size"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SecDropDownPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v10, [Ljava/lang/CharSequence;

    const v7, 0x7f120c0b

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const v7, 0x7f120c0a

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const v7, 0x7f120c07

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v10, [Ljava/lang/CharSequence;

    const-string/jumbo v7, "0"

    aput-object v7, v6, v5

    const-string/jumbo v7, "1"

    aput-object v7, v6, v4

    const-string/jumbo v7, "2"

    aput-object v7, v6, v9

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    new-instance v6, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$6;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$6;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v6, 0x7f120246

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_5
    const-string/jumbo v3, "magnifier_settings"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f12005f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "magnifier_size"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SecDropDownPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    iget-boolean v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    if-eqz v3, :cond_b

    new-instance v6, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "assistant_menu"

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_9

    move v3, v4

    :goto_1
    invoke-direct {v6, p0, v7, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;Landroid/content/Context;Z)V

    iput-object v6, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setOrder(I)V

    new-instance v3, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hover_zoom_value"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    const/4 v6, -0x2

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->setOrder(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v10, [Ljava/lang/CharSequence;

    const v7, 0x7f120c0b

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const v7, 0x7f120c0a

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const v7, 0x7f120c07

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v10, [Ljava/lang/CharSequence;

    const-string/jumbo v7, "0"

    aput-object v7, v6, v5

    const-string/jumbo v5, "1"

    aput-object v5, v6, v4

    const-string/jumbo v4, "2"

    aput-object v4, v6, v9

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    new-instance v4, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$7;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    if-ne v2, v4, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f120c0a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    if-ne v2, v9, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f120c07

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move v3, v5

    goto/16 :goto_1

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/CharSequence;

    const v7, 0x7f120c0b

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const v7, 0x7f120c0a

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const v7, 0x7f120c07

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f120a7f

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    const v7, 0x7f120d2b

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/CharSequence;

    const-string/jumbo v7, "0"

    aput-object v7, v6, v5

    const-string/jumbo v5, "1"

    aput-object v5, v6, v4

    const-string/jumbo v4, "2"

    aput-object v4, v6, v9

    const-string/jumbo v4, "3"

    aput-object v4, v6, v10

    const-string/jumbo v4, "4"

    const/4 v5, 0x4

    aput-object v4, v6, v5

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_3
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$8;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/AssistantMenuEnabler;->pause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mFmMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "fmpointer_speed1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "AssistantMenuPreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changed speed value - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x0

    return v2

    :cond_0
    const-string/jumbo v2, "AssistantMenuPreferenceFragment"

    const-string/jumbo v3, "onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/support/v7/preference/Preference;

    const-class v1, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/AssistantMenuEnabler;->pause()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/support/v7/preference/Preference;

    const-class v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/AssistantMenuEnabler;->pause()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const-string/jumbo v0, "AssistantMenuPreferenceFragment"

    const-string/jumbo v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->installSwitchBarToggleSwitch()V

    new-instance v0, Lcom/samsung/android/settings/AssistantMenuEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/AssistantMenuEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-direct {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->updateAssistantMenuSaving()V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/AssistantMenuEnabler;->resume()V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assistant_menu"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "FmMagnifier"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mFmMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string/jumbo v1, "isMutuallyExclusiveDialogShown"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/AssistantMenuEnabler;->showMutualExclusiveDialog()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/samsung/android/settings/AssistantMenuEnabler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/AssistantMenuEnabler;->getMutualExclusiveDialogShowing()Z

    move-result v0

    const-string/jumbo v1, "isMutuallyExclusiveDialogShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
