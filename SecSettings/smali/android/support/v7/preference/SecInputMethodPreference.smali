.class public Landroid/support/v7/preference/SecInputMethodPreference;
.super Lcom/android/settingslib/SecRestrictedSwitchPreference;
.source "SecInputMethodPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/SecInputMethodPreference$OnSavePreferenceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mHasPriorityInSorting:Z

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

.field private final mIsAllowedByOrganization:Z

.field private final mOnSaveListener:Landroid/support/v7/preference/SecInputMethodPreference$OnSavePreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v7/preference/SecInputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/preference/SecInputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLandroid/support/v7/preference/SecInputMethodPreference$OnSavePreferenceListener;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Landroid/support/v7/preference/SecInputMethodPreference;->setPersistent(Z)V

    iput-object p2, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iput-boolean p4, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mIsAllowedByOrganization:Z

    iput-object p5, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mOnSaveListener:Landroid/support/v7/preference/SecInputMethodPreference$OnSavePreferenceListener;

    if-nez p3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v7/preference/SecInputMethodPreference;->setWidgetLayoutResource(I)V

    :cond_0
    const-string/jumbo v3, ""

    invoke-virtual {p0, v3}, Landroid/support/v7/preference/SecInputMethodPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    const-string/jumbo v3, ""

    invoke-virtual {p0, v3}, Landroid/support/v7/preference/SecInputMethodPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/preference/SecInputMethodPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/preference/SecInputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Landroid/support/v7/preference/SecInputMethodPreference;->setIntent(Landroid/content/Intent;)V

    :goto_0
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v2, p2, p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v2

    :cond_1
    iput-boolean v2, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mHasPriorityInSorting:Z

    invoke-virtual {p0, p0}, Landroid/support/v7/preference/SecInputMethodPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0, p0}, Landroid/support/v7/preference/SecInputMethodPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "from_settings"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/SecInputMethodPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getSummaryString()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isImeEnabler()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "com.android.settings"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v5, "preference_software_update_badge"

    const-string/jumbo v6, "layout"

    const-string/jumbo v7, "com.android.settings"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getWidgetLayoutResource()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getWidgetLayoutResource()I

    move-result v5

    if-eq v5, v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isNotDefaultIMEAndVoiceIMEInDEX(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTv()Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCheckedInternal(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mOnSaveListener:Landroid/support/v7/preference/SecInputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/SecInputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Landroid/support/v7/preference/SecInputMethodPreference;)V

    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->notifyChanged()V

    return-void
.end method

.method private showDirectBootWarnDialog()V
    .locals 4

    iget-object v2, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120821

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/support/v7/preference/-$Lambda$pZSMo51EItIvX4NsrX_mkejbvZY;

    invoke-direct {v2, p0}, Landroid/support/v7/preference/-$Lambda$pZSMo51EItIvX4NsrX_mkejbvZY;-><init>(Ljava/lang/Object;)V

    const v3, 0x104000a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/support/v7/preference/-$Lambda$pZSMo51EItIvX4NsrX_mkejbvZY$1;

    invoke-direct {v2, p0}, Landroid/support/v7/preference/-$Lambda$pZSMo51EItIvX4NsrX_mkejbvZY$1;-><init>(Ljava/lang/Object;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSecurityWarnDialog()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x1040014

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const v4, 0x7f120d99

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/support/v7/preference/-$Lambda$pZSMo51EItIvX4NsrX_mkejbvZY$2;

    invoke-direct {v3, p0}, Landroid/support/v7/preference/-$Lambda$pZSMo51EItIvX4NsrX_mkejbvZY$2;-><init>(Ljava/lang/Object;)V

    const v4, 0x104000a

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/support/v7/preference/-$Lambda$pZSMo51EItIvX4NsrX_mkejbvZY$3;

    invoke-direct {v3, p0}, Landroid/support/v7/preference/-$Lambda$pZSMo51EItIvX4NsrX_mkejbvZY$3;-><init>(Ljava/lang/Object;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/preference/SecInputMethodPreference;Ljava/text/Collator;)I
    .locals 6

    const/4 v3, 0x1

    const/4 v2, -0x1

    if-ne p0, p1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-boolean v4, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mHasPriorityInSorting:Z

    iget-boolean v5, p1, Landroid/support/v7/preference/SecInputMethodPreference;->mHasPriorityInSorting:Z

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/SecInputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_3
    iget-boolean v4, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mHasPriorityInSorting:Z

    if-eqz v4, :cond_4

    :goto_0
    return v2

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method synthetic lambda$-android_support_v7_preference_SecInputMethodPreference_12287(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->isTv()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/preference/SecInputMethodPreference;->setCheckedInternal(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_0
.end method

.method synthetic lambda$-android_support_v7_preference_SecInputMethodPreference_12820(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/preference/SecInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method synthetic lambda$-android_support_v7_preference_SecInputMethodPreference_13682(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/preference/SecInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method synthetic lambda$-android_support_v7_preference_SecInputMethodPreference_13803(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/preference/SecInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v7/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->isImeEnabler()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Landroid/support/v7/preference/SecInputMethodPreference;->setCheckedInternal(Z)V

    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->isTv()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/preference/SecInputMethodPreference;->setCheckedInternal(Z)V

    :cond_3
    :goto_0
    return v1

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->isTv()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->showSecurityWarnDialog()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-direct {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->isImeEnabler()Z

    move-result v4

    if-eqz v4, :cond_0

    return v7

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v7

    :catch_0
    move-exception v1

    sget-object v4, Landroid/support/v7/preference/SecInputMethodPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "IME\'s Settings Activity Not Found"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f120ad1

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public updatePreferenceViews()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v3, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->isImeEnabler()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->shouldAlwaysCheckIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {p0, v6}, Landroid/support/v7/preference/SecInputMethodPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p0, v5}, Landroid/support/v7/preference/SecInputMethodPreference;->setEnabled(Z)V

    :goto_0
    iget-object v2, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v3, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/preference/SecInputMethodPreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->isDisabledByAdmin()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/preference/SecInputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v2}, Landroid/support/v7/preference/SecInputMethodPreference;->isNotDefaultIMEAndVoiceIMEInDEX(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v6}, Landroid/support/v7/preference/SecInputMethodPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p0, v5}, Landroid/support/v7/preference/SecInputMethodPreference;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v2, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mIsAllowedByOrganization:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/preference/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/preference/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/SecInputMethodPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/v7/preference/SecInputMethodPreference;->setEnabled(Z)V

    goto :goto_0
.end method
