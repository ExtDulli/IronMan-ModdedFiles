.class public final Lcom/android/keyguard/KeyguardRune;
.super Ljava/lang/Object;
.source "KeyguardRune.java"


# static fields
.field private static final BUILD_CHARACTERISTICS:Ljava/lang/String;

.field private static final CARRIER_SECURITY_POLICY:Ljava/lang/String;

.field private static final CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

.field private static final CMAS_OPERATOR_NAME:Ljava/lang/String;

.field private static final CONFIG_DMN_TYPE:Ljava/lang/String;

.field private static final CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

.field private static final CONFIG_SEC_HELP_TEXT:Ljava/lang/String;

.field public static final CONFIG_STATUSBAR_SIDE_PADDING:I

.field private static final EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

.field public static final HIDE_ROAMING_TEXT_ON_DUAL_CLOCK:Z

.field public static final IS_NO_SHIP:Z

.field public static final IS_TABLET_DEVICE:Z

.field public static final IS_VZW:Z

.field public static final SHOW_ENTER_ANIMATION_ON_WAKE_AND_UNLOCK:Z

.field public static final SUPPORT_APPLOCK:Z

.field public static final SUPPORT_ATT_LOCK_TIMEOUT:Z

.field public static final SUPPORT_AUTO_LOCK_FOR_GEAR:Z

.field public static final SUPPORT_BACKGROUND_AUTHENTICATION:Z

.field public static final SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

.field public static final SUPPORT_BLOCK_CARRIER_TEXT_WHEN_SIM_NOT_READY:Z

.field public static final SUPPORT_CMAS:Z

.field public static final SUPPORT_DATA_USAGE_REMINDER:Z

.field public static final SUPPORT_DCM_USIM_TEXT:Z

.field private static final SUPPORT_DEAD_ZONE:Ljava/lang/String;

.field public static final SUPPORT_DEFAULT_INFINITY_WALLPAPER:Z

.field public static final SUPPORT_DEFAULT_MOTION_WALLPAPER:Z

.field public static final SUPPORT_DIRECTIONAL_LOCK:Z

.field public static final SUPPORT_DIRECT_CALL_TO_ECC:Z

.field public static final SUPPORT_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

.field public static final SUPPORT_DISABLE_SPEAK_PASSWORD:Z

.field public static final SUPPORT_DISAPPEAR_DEFAULT_PLMN:Z

.field public static final SUPPORT_DISCONNECTION_ADB_IN_LOCK_MODE:Z

.field public static final SUPPORT_GSIM_LOG:Z

.field public static final SUPPORT_HIGH_PERFORMACE_MODE:Z

.field public static final SUPPORT_INFINITY_WALLPAPER:Z

.field public static final SUPPORT_KDDI_USIM_TEXT:Z

.field public static final SUPPORT_KOR_EMERGENCY_CALL_BUTTON:Z

.field public static final SUPPORT_KOR_USIM_TEXT:Z

.field public static final SUPPORT_KTT_USIM_TEXT:Z

.field public static final SUPPORT_LAYERED_WALLPAPER:Z

.field public static final SUPPORT_MOBILE_KEYBOARD:Z

.field public static final SUPPORT_MOTION_WALLPAPER:Z

.field public static final SUPPORT_MOVE_TO_EMERGENCY_CALL_LIST:Z

.field public static final SUPPORT_MULTI_SIM_DEVICE:Z

.field public static final SUPPORT_NDIGITS_PIN:Z

.field public static final SUPPORT_NOT_REQUIRE_SIMPUK_CODE:Z

.field public static final SUPPORT_OPERATOR_WALLPAPER:Z

.field public static final SUPPORT_PERSIAN_CALENDAR:Z

.field public static final SUPPORT_PRESIDENTIAL_CMAS:Z

.field public static final SUPPORT_RIL_TALLRAT:Z

.field public static final SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

.field public static final SUPPORT_SEC_FINGERPRINT_SENSOR_POSITION_REAR:Z

.field public static final SUPPORT_SEC_FINGERPRINT_WAKEUP_BOOST_APPROXIMATE_FREQUENCY:I

.field public static final SUPPORT_SEC_FINGERPRINT_WAKEUP_BOOST_TIMEOUT:I

.field public static final SUPPORT_SEC_WAKE_ON_FINGERPRINT:Z

.field public static final SUPPORT_SERVICEBOX:Z

.field public static final SUPPORT_SHOWING_SWIPE_BOUNCER:Z

.field public static final SUPPORT_SIM_PERM_DISABLED:Z

.field public static final SUPPORT_SIM_PERSO_LOCK:Z

.field public static final SUPPORT_SIM_UNLOCK_TOAST:Z

.field public static final SUPPORT_SKIP_SHORTCUT_ARROW_SHOWING_VI:Z

.field public static final SUPPORT_SKT_PLMN:Z

.field public static final SUPPORT_SKT_SIM_PERSO_LOCK_PASSWORD_LENGTH:I

.field public static final SUPPORT_SKT_USIM_TEXT:Z

.field public static final SUPPORT_SOFT_PHONE_DEVICE:Z

.field public static final SUPPORT_SPR_USIM_TEXT:Z

.field public static final SUPPORT_SWIPE_SCALE_DOWN:Z

.field public static final SUPPORT_UNLOCK_SITUATION_VOLUME:Z

.field public static final SUPPORT_UNLOCK_VI:Z

.field public static final SUPPORT_USC_USIM_TEXT:Z

.field public static final SUPPORT_USE_CDMA_CARD_TEXT:Z

.field public static final SUPPORT_USE_WFCPLMN_IN_AIRPLANE_MODE:Z

.field public static final SUPPORT_WAKEUP_VI:Z

.field public static final SUPPORT_WARNING_WIPE_OUT_MESSAGE:Z

.field public static final SUPPORT_WHITE_WALLPAPER_AS_DEFAULT:Z

.field public static final WFC_PLMN_INFO_AT_AIRPLANE_MODE:Ljava/lang/String;

.field private static final mConfigDefLcdOnTimeOut:I

.field private static final mConfigLockTimeoutSetting:Ljava/lang/String;

.field private static sWiFiOnlyDevice:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_Setting_SupportDataUsageReminder"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DATA_USAGE_REMINDER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_Message_CMASOperator"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CMAS:Z

    const-string/jumbo v0, "us-spr"

    sget-object v3, Lcom/android/keyguard/KeyguardRune;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PRESIDENTIAL_CMAS:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_LockScreen_ConfigCarrierSecurityPolicy"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERM_DISABLED:Z

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISAPPEAR_DEFAULT_PLMN:Z

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISAPPEAR_DEFAULT_PLMN:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_NOT_REQUIRE_SIMPUK_CODE:Z

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_WARNING_WIPE_OUT_MESSAGE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_Common_ConfigUsimPersonalLockPwdLength"

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKT_SIM_PERSO_LOCK_PASSWORD_LENGTH:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_LockScreen_SupportToastSimUnlockSuccess"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_UNLOCK_TOAST:Z

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_LockScreen_ConfigCarrierTextPolicy"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USE_CDMA_CARD_TEXT:Z

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKT_PLMN:Z

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_BLOCK_CARRIER_TEXT_WHEN_SIM_NOT_READY:Z

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKT_USIM_TEXT:Z

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KTT_USIM_TEXT:Z

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DCM_USIM_TEXT:Z

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KDDI_USIM_TEXT:Z

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_d

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SPR_USIM_TEXT:Z

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_e

    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USC_USIM_TEXT:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_LockScreen_ConfigEmergencyCallPolicy"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    if-nez v0, :cond_f

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOVE_TO_EMERGENCY_CALL_LIST:Z

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_RIL_TALLRAT:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_LockScreen_DirectCallToEcc"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DIRECT_CALL_TO_ECC:Z

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_ConfigOpBrandingForWFC"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USE_WFCPLMN_IN_AIRPLANE_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_DMN_TYPE:Ljava/lang/String;

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_DMN_TYPE:Ljava/lang/String;

    if-nez v0, :cond_12

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SOFT_PHONE_DEVICE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_RIL_ConfigNetworkNameForEpdg"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->WFC_PLMN_INFO_AT_AIRPLANE_MODE:Ljava/lang/String;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_13

    move v0, v2

    :goto_13
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MULTI_SIM_DEVICE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_GSIM_LOG:Z

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_14

    move v0, v2

    :goto_14
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_EMERGENCY_CALL_BUTTON:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_LockScreen_DisableTalkbackForSpeakPassword"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISABLE_SPEAK_PASSWORD:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERSO_LOCK:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_STATUSBAR_SIDE_PADDING"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_STATUSBAR_SIDE_PADDING:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v0, "s_eight_style"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    const-string/jumbo v0, "US_NORTH"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_LockScreen_ConfigDisplayShorcutCircleArrow"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_LockScreen_SupportAutoLockForGear"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_AUTO_LOCK_FOR_GEAR:Z

    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->isSupportWakeOnFingerPrint()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEC_WAKE_ON_FINGERPRINT:Z

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorPosition()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_15

    move v0, v2

    :goto_15
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEC_FINGERPRINT_SENSOR_POSITION_REAR:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_LOCKSCREEN_SUPPORT_BACKGROUND_AUTHENTICATION"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_BACKGROUND_AUTHENTICATION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_DEFAULT_WALLPAPER_STYLE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "SWIPE_SCALE_DOWN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SWIPE_SCALE_DOWN:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_DEFAULT_WALLPAPER_STYLE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "UNLOCK_VI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_UNLOCK_VI:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_DEFAULT_WALLPAPER_STYLE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "WAKEUP_VI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_WAKEUP_VI:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_DEFAULT_WALLPAPER_STYLE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "LAYERED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_LAYERED_WALLPAPER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_DEFAULT_WALLPAPER_STYLE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "MOTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOTION_WALLPAPER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SEAMLESS_WALLPAPER"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_INFINITY_WALLPAPER:Z

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_DEFAULT_WALLPAPER_STYLE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "DEFAULT_MOTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_16
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DEFAULT_MOTION_WALLPAPER:Z

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_DEFAULT_WALLPAPER_STYLE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "DEFAULT_INFINITY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_17
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DEFAULT_INFINITY_WALLPAPER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_DIRECTION_LOCK"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DIRECTIONAL_LOCK:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_LockScreen_EnableOperatorWallpaper"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_OPERATOR_WALLPAPER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_LockScreen_DisableADBConnDuringSecuredLock"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISCONNECTION_ADB_IN_LOCK_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_LockScreen_SupportWhiteDefaultWallpaper"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_WHITE_WALLPAPER_AS_DEFAULT:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_SystemUI_ConfigOpBrandingQuickSettingIcon"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_SEC_HELP_TEXT:Ljava/lang/String;

    const-string/jumbo v0, "VZW"

    sget-object v3, Lcom/android/keyguard/KeyguardRune;->CONFIG_SEC_HELP_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->IS_VZW:Z

    const-string/jumbo v0, "US_NORTH"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_LockScreen_ConfigDisplayShorcutCircleArrow"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKIP_SHORTCUT_ARROW_SHOWING_VI:Z

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_INFINITY_WALLPAPER:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SHOW_ENTER_ANIMATION_ON_WAKE_AND_UNLOCK:Z

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->BUILD_CHARACTERISTICS:Ljava/lang/String;

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->BUILD_CHARACTERISTICS:Ljava/lang/String;

    const-string/jumbo v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->IS_TABLET_DEVICE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_LockScreen_ConfigClockDisplayPolicy"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_LockScreen_HideRoamingTextOnDualClock"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->HIDE_ROAMING_TEXT_ON_DUAL_CLOCK:Z

    const-string/jumbo v0, "1200000"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEC_FINGERPRINT_WAKEUP_BOOST_APPROXIMATE_FREQUENCY:I

    sget v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEC_FINGERPRINT_WAKEUP_BOOST_APPROXIMATE_FREQUENCY:I

    const v3, 0x1e8480

    if-le v0, v3, :cond_18

    const/16 v0, 0x3e8

    :goto_18
    sput v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEC_FINGERPRINT_WAKEUP_BOOST_TIMEOUT:I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/sys/class/power_supply/battery/time_to_full_now"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_LockScreen_ConfigDefLcdOnTimeOut"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/keyguard/KeyguardRune;->mConfigDefLcdOnTimeOut:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_LockScreen_ConfigLockTimeoutSetting"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->mConfigLockTimeoutSetting:Ljava/lang/String;

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->mConfigLockTimeoutSetting:Ljava/lang/String;

    if-nez v0, :cond_19

    move v0, v1

    :goto_19
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_ATT_LOCK_TIMEOUT:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_HIGH_PERFORMACE_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_Common_SupportPersianCalendar"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_TSP_STATE_MANAGER"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DEAD_ZONE:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "sprotect"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_APPLOCK:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_UNLOCK_SITUATION_VOLUME"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_UNLOCK_SITUATION_VOLUME:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_LOCKSCREEN_SUPPORT_SIMPLE_PIN"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_NDIGITS_PIN:Z

    const-string/jumbo v0, "ro.product_ship"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_1a
    sput-boolean v1, Lcom/android/keyguard/KeyguardRune;->IS_NO_SHIP:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/keyguard/KeyguardRune;->sWiFiOnlyDevice:I

    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    const-string/jumbo v3, "us"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "SupportSimPermanentDisable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "UseTMOSIMPINLock"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "FactoryResetProtectionWarning"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_3

    :cond_4
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "UseSamsungAccountAuth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_4

    :cond_5
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "UseCdmaCardText"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_5

    :cond_6
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "DisplayPlmnOnBottom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_6

    :cond_7
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "BlockCarrierTextWhenSimNotReady"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_7

    :cond_8
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "DisplayUsimText"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_8

    :cond_9
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "UseSKTSimText"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_9

    :cond_a
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "UseKTTSimText"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_a

    :cond_b
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "UseDCMSimLockText"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_b

    :cond_c
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "UseKDDISimText"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_c

    :cond_d
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "UseDefaultPlmnValueFromNetwork"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_d

    :cond_e
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "UseFixedPlmnValueForUSC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_e

    :cond_f
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "MoveToCallList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_f

    :cond_10
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    const-string/jumbo v3, "DisableEmergencyCallWhenOffline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_10

    :cond_11
    move v0, v2

    goto/16 :goto_11

    :cond_12
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_DMN_TYPE:Ljava/lang/String;

    const-string/jumbo v3, "Softphone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_12

    :cond_13
    move v0, v1

    goto/16 :goto_13

    :cond_14
    move v0, v1

    goto/16 :goto_14

    :cond_15
    move v0, v1

    goto/16 :goto_15

    :cond_16
    move v0, v1

    goto/16 :goto_16

    :cond_17
    move v0, v1

    goto/16 :goto_17

    :cond_18
    const/16 v0, 0x5dc

    goto/16 :goto_18

    :cond_19
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->mConfigLockTimeoutSetting:Ljava/lang/String;

    const-string/jumbo v3, "10min"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_19

    :cond_1a
    move v1, v2

    goto/16 :goto_1a
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canIgnoreNationalRoamingToShowSingleClock(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "IgnoreNationalRoamingWithoutMNC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->isNationalRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    sget-object v1, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "IgnoreNationalRoamingWithMNC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "21901"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    :cond_1
    sget-object v1, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "IgnoreNationalRoamingWithOptus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "50503"

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v4

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static canSetDcmLauncher()Z
    .locals 2

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v1, "UseDCMSimLockText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/keyguard/KeyguardRune;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  SUPPORT_DISAPPEAR_DEFAULT_PLMN: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISAPPEAR_DEFAULT_PLMN:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  SUPPORT_SEC_WAKE_ON_FINGERPRINT: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEC_WAKE_ON_FINGERPRINT:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  isNationalRoaming: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->isNationalRoaming()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  CONFIG_DUAL_CLOCK_DISPLAY_POLICY: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  CONFIG_SEC_HELP_TEXT: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_SEC_HELP_TEXT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  IS_VZW: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->IS_VZW:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static factoryResetWithoutUI()Z
    .locals 2

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v1, "FactoryResetWithoutUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static getCalendarPackageName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string/jumbo v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClockPackageName()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    const-string/jumbo v4, "com.sec.android.app.clockpackage"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Clock_ConfigReplacePackage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method private static getDcmLauncherVersionCode(Landroid/content/Context;)I
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.nttdocomo.android.dhome"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KeyguardRune"

    const-string/jumbo v4, "getDcmLauncherVersionCode NameNotFoundException!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultDisplayTimeout()I
    .locals 1

    sget v0, Lcom/android/keyguard/KeyguardRune;->mConfigDefLcdOnTimeOut:I

    if-lez v0, :cond_0

    sget v0, Lcom/android/keyguard/KeyguardRune;->mConfigDefLcdOnTimeOut:I

    mul-int/lit16 v0, v0, 0x3e8

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public static getSemPlatformVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    return v0
.end method

.method public static isArabicIndicForClockDigit()Z
    .locals 3

    const-string/jumbo v0, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isBeforeDreamDcmLauncher(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/keyguard/KeyguardRune;->getDcmLauncherVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xfa4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDcmLauncher(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->canSetDcmLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.nttdocomo.android.dhome"

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardRune;->isPreferedActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeadzoneExist()Z
    .locals 2

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DEAD_ZONE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DEAD_ZONE:Ljava/lang/String;

    const-string/jumbo v1, "deadzone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDownloadableThemeApplied(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isLTRClockLayoutDespiteArabic()Z
    .locals 3

    const-string/jumbo v0, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v2, "iw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "ur"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isNationalRoaming()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-le v7, v6, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v7, "gsm.sim.operator.numeric"

    const-string/jumbo v8, ""

    invoke-static {v9, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v7, "gsm.operator.numeric"

    const-string/jumbo v8, ""

    invoke-static {v9, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v7, "gsm.sim.operator.numeric"

    const-string/jumbo v8, ""

    invoke-static {v6, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v7, "gsm.operator.numeric"

    const-string/jumbo v8, ""

    invoke-static {v6, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0}, Lcom/android/keyguard/KeyguardRune;->isNationalRoaming(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v4, v1}, Lcom/android/keyguard/KeyguardRune;->isNationalRoaming(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    :cond_0
    return v6

    :cond_1
    const-string/jumbo v6, "gsm.sim.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "gsm.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/keyguard/KeyguardRune;->isNationalRoaming(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    return v6
.end method

.method private static isNationalRoaming(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string/jumbo v4, "31"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "31"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "KeyguardRune"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Keyguard National roaming USA Exception, simMCC : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", plmnMCC : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    :goto_2
    return v3

    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_2

    :catch_0
    move-exception v0

    return v3
.end method

.method public static isNavigationBarExist(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isPreferedActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isReadable(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v3, "KeyguardRune"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isReadable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " canRead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    const-string/jumbo v3, "KeyguardRune"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isReadable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static isSupportWakeOnFingerPrint()Z
    .locals 5

    const-string v0, "wake_on_finger"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    const-string/jumbo v1, "/sys/class/fingerprint/fingerprint/adm"

    invoke-static {v1}, Lcom/android/keyguard/KeyguardRune;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "KeyguardRune"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWakeOnFingerPrint( resultId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    const/4 v2, 0x1

    const-string/jumbo v1, "/sys/class/fingerprint/fingerprint/adm"

    invoke-static {v1}, Lcom/android/keyguard/KeyguardRune;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "KeyguardRune"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWakeOnFingerPrint( resultId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    :goto_1
    if-nez v1, :cond_4

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public static isTestEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->IS_NO_SHIP:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "keyguard_test_values"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isWiFiOnlyDevice(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v1, Lcom/android/keyguard/KeyguardRune;->sWiFiOnlyDevice:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    sput v1, Lcom/android/keyguard/KeyguardRune;->sWiFiOnlyDevice:I

    :cond_0
    sget v1, Lcom/android/keyguard/KeyguardRune;->sWiFiOnlyDevice:I

    if-ne v1, v3, :cond_2

    :goto_1
    return v3

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public static readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 v12, 0x0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardRune;->isReadable(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "KeyguardRune"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readFromFile Failed isReadable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v7

    :goto_1
    :try_start_2
    const-string/jumbo v9, "KeyguardRune"

    const-string/jumbo v10, "readFromFile"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v9, "KeyguardRune"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readFromFile finish, time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v12, v2, v4

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_3
    move-object v6, v7

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v9, "KeyguardRune"

    const-string/jumbo v10, "readFromFile"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v0

    const-string/jumbo v9, "KeyguardRune"

    const-string/jumbo v10, "readFromFile"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_5
    throw v9

    :catch_3
    move-exception v0

    const-string/jumbo v10, "KeyguardRune"

    const-string/jumbo v11, "readFromFile"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catchall_1
    move-exception v9

    move-object v6, v7

    goto :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method public static shouldAddTimeTextForRoamingTime()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "SetAsiaSeoulForHome"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "NeedToCheckOMCCSCSalesCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldBeAsiaSeoulAsDefaultHomecityTimezone()Z
    .locals 2

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v1, "SetAutoTimeAsiaSeoul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "lockscreen.rot_override"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldShowSeoulTextForHomeTime()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "SetAsiaSeoulForHome"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "NeedToCheckOMCCSCSalesCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
