.class Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

.field final synthetic val$e:Ljava/lang/IllegalArgumentException;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;Ljava/lang/IllegalArgumentException;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->val$e:Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;

    const/16 v2, 0x753c

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;->val$e:Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V

    return-void
.end method
