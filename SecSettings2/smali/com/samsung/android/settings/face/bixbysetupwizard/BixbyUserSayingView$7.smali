.class Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$7;
.super Ljava/lang/Object;
.source "BixbyUserSayingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->stopUserSaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$7;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$7;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-set0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$7;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->invalidate()V

    return-void
.end method
