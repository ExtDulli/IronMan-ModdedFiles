.class public Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "NavigationBarPressureSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static sSensitivity:I


# instance fields
.field private mContext:Landroid/content/Context;

.field public mPressureSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const v5, 0x7f04023b

    const v6, 0x7f110683

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindView(Landroid/view/View;)V

    const-string/jumbo v1, "NavigationBarPressureSeekBarPreference"

    const-string/jumbo v2, "onBindView called "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f110683

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->mPressureSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eq v0, v1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->mPressureSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->mPressureSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    if-eqz p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_pressure_user_level"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->sSensitivity:I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->sSensitivity:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void
.end method