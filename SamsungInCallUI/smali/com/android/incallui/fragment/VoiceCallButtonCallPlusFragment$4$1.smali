.class Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4$1;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4$1;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4$1;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4$1;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4$1;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4$1;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4$1;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4$1;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4$1;->this$1:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    :cond_2
    return-void
.end method
