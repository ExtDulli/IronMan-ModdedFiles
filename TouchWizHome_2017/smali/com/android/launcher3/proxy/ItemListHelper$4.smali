.class final Lcom/android/launcher3/proxy/ItemListHelper$4;
.super Ljava/lang/Object;
.source "ItemListHelper.java"

# interfaces
.implements Lcom/android/launcher3/proxy/ItemListHelper$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/proxy/ItemListHelper;->getUnhiddenItemList(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 1

    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
