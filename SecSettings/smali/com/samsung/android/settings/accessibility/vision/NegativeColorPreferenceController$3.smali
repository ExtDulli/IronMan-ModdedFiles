.class Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$3;
.super Ljava/lang/Object;
.source "NegativeColorPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->showExclusiveDialog(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

.field final synthetic val$preference:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;Landroid/support/v7/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$3;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$3;->val$preference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$3;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$3;->val$preference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method