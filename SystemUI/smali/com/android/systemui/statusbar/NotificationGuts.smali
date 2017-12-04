.class public Lcom/android/systemui/statusbar/NotificationGuts;
.super Landroid/widget/LinearLayout;
.source "NotificationGuts.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;
    }
.end annotation


# instance fields
.field private mActiveSliderAlpha:F

.field private mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mActualHeight:I

.field private mAuto:Z

.field private mAutoButton:Landroid/widget/ImageView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBlock:Landroid/widget/RadioButton;

.field private mClipTopAmount:I

.field private mExposed:Z

.field private mFalsingCheck:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mImportanceSummary:Landroid/widget/TextView;

.field private mImportanceTitle:Landroid/widget/TextView;

.field private mInactiveSliderAlpha:F

.field private mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

.field private mNeedsFalsingProtection:Z

.field private mNotificationImportance:I

.field private mReset:Landroid/widget/RadioButton;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mShowSlider:Z

.field private mSilent:Landroid/widget/RadioButton;

.field private mStartingUserImportance:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationGuts;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->applyAuto()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NotificationGuts;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->updateTitleAndSummary(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActiveSliderAlpha:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setWillNotDraw(Z)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationGuts$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationGuts$1;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mInactiveSliderAlpha:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private applyAuto()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mInactiveSliderAlpha:F

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setAlpha(F)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotificationImportance:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0622

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v5, 0x7f0f061b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActiveSliderAlpha:F

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationGuts;->updateTitleAndSummary(I)V

    goto :goto_3
.end method

.method private bindSlider(Landroid/view/View;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    const v1, 0x7f0b00dd

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    const v1, 0x7f130375

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    const v1, 0x7f130097

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    const v1, 0x7f130352

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/systemui/statusbar/NotificationGuts$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts$3;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;I)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotificationImportance:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    const v1, 0x7f130376

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAutoButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAutoButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/NotificationGuts$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/NotificationGuts$4;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    const/16 v2, -0x3e8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAuto:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->applyAuto()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private bindToggles(Landroid/view/View;IZ)V
    .locals 4

    const/4 v3, 0x1

    move-object v0, p1

    check-cast v0, Landroid/widget/RadioGroup;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationGuts$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationGuts$2;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f130371

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBlock:Landroid/widget/RadioButton;

    const v0, 0x7f130370

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSilent:Landroid/widget/RadioButton;

    const v0, 0x7f130372

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mReset:Landroid/widget/RadioButton;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBlock:Landroid/widget/RadioButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mReset:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f07e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBlock:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f07e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSilent:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f07e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSilent:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mReset:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawableStateChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method private getSelectedImportance()I
    .locals 2

    const/16 v1, -0x3e8

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBlock:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mSilent:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    return v1
.end method

.method private loadColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private updateTitleAndSummary(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0623

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f061c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0624

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f061d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0625

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f061e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0626

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f061f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0627

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0620

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0628

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mImportanceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0621

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public areGutsExposed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    return v0
.end method

.method bindImportance(Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Ljava/util/Set;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    const-string/jumbo v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mINotificationManager:Landroid/app/INotificationManager;

    const/16 v6, -0x3e8

    iput v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/app/INotificationManager;->getImportance(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput p4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotificationImportance:I

    const v6, 0x7f130374

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f13036f

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f130373

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_4

    if-eqz v3, :cond_0

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v4, :cond_1

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v0, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz p5, :cond_7

    const/4 v5, 0x0

    :goto_3
    if-eqz v4, :cond_6

    if-nez v3, :cond_8

    :cond_6
    return-void

    :cond_7
    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mShowSlider:Z

    if-eqz v6, :cond_9

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/NotificationGuts;->bindSlider(Landroid/view/View;Z)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_9
    iget v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    invoke-direct {p0, v3, v6, v5}, Lcom/android/systemui/statusbar/NotificationGuts;->bindToggles(Landroid/view/View;IZ)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public closeControls(IIZ)V
    .locals 8

    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_1

    if-eqz p3, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    invoke-interface {v6, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V

    :cond_0
    return-void

    :cond_1
    if-eq p1, v7, :cond_2

    if-ne p2, v7, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 p1, v6, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int p2, v6, v7

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v6

    sub-int/2addr v6, p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v2, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v6

    sub-int/2addr v6, p2

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v1, v6

    const/4 v6, 0x0

    invoke-static {p0, p1, p2, v1, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v6, 0x168

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/android/systemui/statusbar/NotificationGuts$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/NotificationGuts$5;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6}, Lcom/android/systemui/statusbar/NotificationGuts;->setExposed(ZZ)V

    if-eqz p3, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    invoke-interface {v6, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V

    :cond_4
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->drawableStateChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getActualHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    return v0
.end method

.method public getGutsType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasImportanceChanged()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getSelectedImportance()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "show_importance_slider"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v1, 0x7f020395

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "show_importance_slider"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mShowSlider:Z

    :cond_1
    return-void
.end method

.method public resetFalsingCheck()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method saveImportance(Landroid/service/notification/StatusBarNotification;)V
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getSelectedImportance()I

    move-result v1

    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v2, :cond_0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    sparse-switch v1, :sswitch_data_1

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStartingUserImportance:I

    sub-int v3, v1, v3

    const/16 v4, 0x123

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-interface {v2, v3, v4, v1}, Landroid/app/INotificationManager;->setImportance(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :sswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.android.systemui.statusbar.policy.notification"

    const-string/jumbo v6, "NO19"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v4, v5, v6, v2, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_3

    :sswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.android.systemui.statusbar.policy.notification"

    const-string/jumbo v6, "NO18"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v4, v5, v6, v2, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_4

    :sswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.android.systemui.statusbar.policy.notification"

    const-string/jumbo v6, "NO20"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-static {v4, v5, v6, v2, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_5

    :sswitch_3
    sget-object v2, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v3, "1126"

    const-string/jumbo v4, "Block"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    sget-object v2, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v3, "1126"

    const-string/jumbo v4, "Silent"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    sget-object v2, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v3, "1126"

    const-string/jumbo v4, "Default"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_2
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3e8 -> :sswitch_5
        0x0 -> :sswitch_3
        0x2 -> :sswitch_4
    .end sparse-switch
.end method

.method public setActualHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    return-void
.end method

.method public setClosedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    return-void
.end method

.method public setExposed(ZZ)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
