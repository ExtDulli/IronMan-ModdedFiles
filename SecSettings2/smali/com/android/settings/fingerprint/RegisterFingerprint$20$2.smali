.class Lcom/android/settings/fingerprint/RegisterFingerprint$20$2;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$20;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$20;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$20;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$20$2;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$20$2;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$20;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v2, 0x7f1103e5

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$20$2;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$20;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get21(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$20$2;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$20;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v2, 0x7f0b086d

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$20$2;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$20;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0xcf

    invoke-static {v1, v2, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap15(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$20$2;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$20;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$20$2;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$20;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v2, 0x7f0b087c

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method