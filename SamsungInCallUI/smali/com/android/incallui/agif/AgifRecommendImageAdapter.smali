.class public Lcom/android/incallui/agif/AgifRecommendImageAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AgifRecommendImageAdapter"


# instance fields
.field protected final AGIF_RECOMMEND_COUNT:I

.field protected mBackgroundResource:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRecommendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/agif/AgifLoader$RecommendedContents;",
            ">;"
        }
    .end annotation
.end field

.field protected mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/agif/AgifLoader$RecommendedContents;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->AGIF_RECOMMEND_COUNT:I

    iput-object p1, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mRecommendList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mSize:I

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101030e

    aput v1, v0, v2

    iget-object v1, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mBackgroundResource:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mSize:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    const v6, 0x7f100014

    const v5, 0x7f100013

    iget-object v0, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_a

    iget-object v0, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mRecommendList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;

    move-object v2, v0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_0
    new-instance v1, Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;

    invoke-direct {v1, p0, v3}, Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;-><init>(Lcom/android/incallui/agif/AgifRecommendImageAdapter;Lcom/android/incallui/agif/AgifRecommendImageAdapter$1;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040024

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f1000a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifImageView;

    iput-object v0, v1, Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;->contentImage:Lcom/android/incallui/agif/AgifImageView;

    const v0, 0x7f1000a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;->contentTitle:Landroid/widget/TextView;

    const v0, 0x7f1000a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;->contentPrice:Landroid/widget/TextView;

    invoke-virtual {p2, v6, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v0, v1

    :cond_1
    const-string v1, "AgifRecommendImageAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    const-string v1, "AgifRecommendImageAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Title ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] - price : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->price:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  contentUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->contentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;->contentTitle:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v2, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->isInstalled:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;->contentPrice:Landroid/widget/TextView;

    const v3, 0x7f0900b5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v0, v0, Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;->contentImage:Lcom/android/incallui/agif/AgifImageView;

    iget-object v1, v2, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/incallui/agif/AgifRecommendImageAdapter;->mBackgroundResource:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v2, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, v2, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    :cond_2
    if-eqz v2, :cond_9

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_3
    return-object p2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_5
    invoke-virtual {p2, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;

    if-nez v0, :cond_1

    const-string v0, "AgifRecommendImageAdapter"

    const-string v1, "The viewHolder is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v1, v2, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->price:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v2, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->price:Ljava/lang/String;

    const-string v3, "0.00"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v2, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->price:Ljava/lang/String;

    const-string v3, "0.0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-object v1, v0, Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;->contentPrice:Landroid/widget/TextView;

    const v3, 0x7f0900bb

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_8
    iget-object v1, v0, Lcom/android/incallui/agif/AgifRecommendImageAdapter$ViewHolder;->contentPrice:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;->price:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    const/4 v0, 0x4

    goto :goto_2

    :cond_a
    move-object v2, v3

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f100013

    const-string v0, "AgifRecommendImageAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgifRecommendImageAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick : getTag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_selectAgifPack(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/incallui/util/PackageHelpers;->launchGalaxyAppsSotreToPackage(Ljava/lang/String;)V

    goto :goto_0
.end method
