.class Lcom/android/systemui/volume/ConfigurableTexts$2;
.super Ljava/lang/Object;
.source "ConfigurableTexts.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ConfigurableTexts;

.field final synthetic val$sp:I

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ConfigurableTexts;Landroid/widget/TextView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ConfigurableTexts$2;->this$0:Lcom/android/systemui/volume/ConfigurableTexts;

    iput-object p2, p0, Lcom/android/systemui/volume/ConfigurableTexts$2;->val$text:Landroid/widget/TextView;

    iput p3, p0, Lcom/android/systemui/volume/ConfigurableTexts$2;->val$sp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts$2;->this$0:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ConfigurableTexts$2;->val$text:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/volume/ConfigurableTexts$2;->val$sp:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/ConfigurableTexts;->-wrap0(Lcom/android/systemui/volume/ConfigurableTexts;Landroid/widget/TextView;I)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method