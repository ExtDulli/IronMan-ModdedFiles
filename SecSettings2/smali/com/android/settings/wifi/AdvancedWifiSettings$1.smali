.class Lcom/android/settings/wifi/AdvancedWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap4(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get10(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get10(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get1(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    invoke-static {}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get8()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get11(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get6(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_5
    const-string/jumbo v2, "ATT"

    invoke-static {}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get4()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mManagePref:Landroid/preference/Preference;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mManagePref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPushPref:Landroid/preference/Preference;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPushPref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPinPref:Landroid/preference/Preference;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPinPref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get13(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-set2(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    const-string/jumbo v2, "WiFiManageNetworks"

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap9(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get11(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v2, "WiFiWpsPushButton"

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap8(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v2, "WiFiSetPasspointOn"

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap3(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    return-void

    :cond_d
    if-ne v1, v5, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get8()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get11(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get6(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_e
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_f
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_10
    const-string/jumbo v2, "ATT"

    invoke-static {}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get4()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_11
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mManagePref:Landroid/preference/Preference;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mManagePref:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_12
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPushPref:Landroid/preference/Preference;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPushPref:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_13
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPinPref:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWpsPinPref:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get11(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_15
    const-string/jumbo v2, "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "AdvancedWifiSettings"

    const-string/jumbo v3, "HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v2, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap2(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    goto/16 :goto_0
.end method