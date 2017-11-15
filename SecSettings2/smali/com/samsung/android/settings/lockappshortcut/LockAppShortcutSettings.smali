.class public Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LockAppShortcutSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$1;,
        Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$2;,
        Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

.field appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

.field private isLeftShortcut:Z

.field private isRightShortcut:Z

.field private final mAppShortcutObserver:Landroid/database/ContentObserver;

.field private mCurrentHeaderView:Landroid/view/View;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mShortcutOnLeft:Landroid/preference/PreferenceScreen;

.field private mShortcutOnRight:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isLeftShortcut:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isRightShortcut:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->updateUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mCurrentHeaderView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$1;-><init>(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mAppShortcutObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;-><init>(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private isTmobile()Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "skt_phone20_settings"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateUI()V
    .locals 12

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mCurrentHeaderView:Landroid/view/View;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mCurrentHeaderView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    move-result v2

    const-string/jumbo v7, "LockAppShortcutSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "refreshUI() - isRemoved: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const v7, 0x7f040193

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v8, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iput-object v5, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mCurrentHeaderView:Landroid/view/View;

    const v7, 0x7f11054e

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v7

    if-eqz v7, :cond_1

    const v7, 0x7f0203ac

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const v7, 0x7f11054f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v7, 0x7f110550

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    invoke-direct {v8}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;-><init>()V

    const/4 v9, 0x1

    invoke-static {v7, v9, v8}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;ILcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    invoke-direct {v8}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;-><init>()V

    const/4 v9, 0x3

    invoke-static {v7, v9, v8}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;ILcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isLeftShortcut:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isRightShortcut:Z

    iget-boolean v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isLeftShortcut:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0b1cf7

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_1
    iget-boolean v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isRightShortcut:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0b1cf7

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isLeftShortcut:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-boolean v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    if-eqz v7, :cond_c

    iget-boolean v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isRightShortcut:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-boolean v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    return-void

    :cond_2
    const v7, 0x7f040192

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_0

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    if-nez v7, :cond_5

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0b0a2b

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_5
    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-boolean v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v10, v10, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0b0a2a

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    if-nez v7, :cond_9

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0b0a2b

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-boolean v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v10, v10, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0b0a2a

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    :cond_c
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f021f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f080098

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v2, "left_shortcut"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "right_shortcut"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_application_shortcut"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isTmobile()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->lockScreenShortcutDefault(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_application_shortcut"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mAppShortcutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AppShortcuts"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->updateUI()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_application_shortcut"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mAppShortcutObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "AppShortcuts"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    return-void
.end method