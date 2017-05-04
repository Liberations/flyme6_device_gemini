.class public final Landroid/provider/Settings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR:Ljava/lang/String; = "accessibility_captioning_background_color"

.field public static final ACCESSIBILITY_CAPTIONING_EDGE_COLOR:Ljava/lang/String; = "accessibility_captioning_edge_color"

.field public static final ACCESSIBILITY_CAPTIONING_EDGE_TYPE:Ljava/lang/String; = "accessibility_captioning_edge_type"

.field public static final ACCESSIBILITY_CAPTIONING_ENABLED:Ljava/lang/String; = "accessibility_captioning_enabled"

.field public static final ACCESSIBILITY_CAPTIONING_FONT_SCALE:Ljava/lang/String; = "accessibility_captioning_font_scale"

.field public static final ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR:Ljava/lang/String; = "accessibility_captioning_foreground_color"

.field public static final ACCESSIBILITY_CAPTIONING_LOCALE:Ljava/lang/String; = "accessibility_captioning_locale"

.field public static final ACCESSIBILITY_CAPTIONING_PRESET:Ljava/lang/String; = "accessibility_captioning_preset"

.field public static final ACCESSIBILITY_CAPTIONING_TYPEFACE:Ljava/lang/String; = "accessibility_captioning_typeface"

.field public static final ACCESSIBILITY_CAPTIONING_WINDOW_COLOR:Ljava/lang/String; = "accessibility_captioning_window_color"

.field public static final ACCESSIBILITY_DISPLAY_DALTONIZER:Ljava/lang/String; = "accessibility_display_daltonizer"

.field public static final ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED:Ljava/lang/String; = "accessibility_display_daltonizer_enabled"

.field public static final ACCESSIBILITY_DISPLAY_INVERSION_ENABLED:Ljava/lang/String; = "accessibility_display_inversion_enabled"

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_AUTO_UPDATE:Ljava/lang/String; = "accessibility_display_magnification_auto_update"

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_enabled"

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE:Ljava/lang/String; = "accessibility_display_magnification_scale"

.field public static final ACCESSIBILITY_ENABLED:Ljava/lang/String; = "accessibility_enabled"

.field public static final ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED:Ljava/lang/String; = "high_text_contrast_enabled"

.field public static final ACCESSIBILITY_SCREEN_READER_URL:Ljava/lang/String; = "accessibility_script_injection_url"

.field public static final ACCESSIBILITY_SCRIPT_INJECTION:Ljava/lang/String; = "accessibility_script_injection"

.field public static final ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String; = "speak_password"

.field public static final ACCESSIBILITY_WEB_CONTENT_KEY_BINDINGS:Ljava/lang/String; = "accessibility_web_content_key_bindings"

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ALLOWED_GEOLOCATION_ORIGINS:Ljava/lang/String; = "allowed_geolocation_origins"

.field public static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "mock_location"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final ANR_SHOW_BACKGROUND:Ljava/lang/String; = "anr_show_background"

.field public static final ASSISTANT:Ljava/lang/String; = "assistant"

.field public static final ASSIST_SCREENSHOT_ENABLED:Ljava/lang/String; = "assist_screenshot_enabled"

.field public static final ASSIST_STRUCTURE_ENABLED:Ljava/lang/String; = "assist_structure_enabled"

.field public static final BACKGROUND_DATA:Ljava/lang/String; = "background_data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_AUTO_RESTORE:Ljava/lang/String; = "backup_auto_restore"

.field public static final BACKUP_ENABLED:Ljava/lang/String; = "backup_enabled"

.field public static final BACKUP_PROVISIONED:Ljava/lang/String; = "backup_provisioned"

.field public static final BACKUP_TRANSPORT:Ljava/lang/String; = "backup_transport"

.field public static final BAR_SERVICE_COMPONENT:Ljava/lang/String; = "bar_service_component"

.field public static final BLUETOOTH_HCI_LOG:Ljava/lang/String; = "bluetooth_hci_log"

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUGREPORT_IN_POWER_MENU:Ljava/lang/String; = "bugreport_in_power_menu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED:Ljava/lang/String; = "camera_double_tap_power_gesture_disabled"

.field public static final CAMERA_GESTURE_DISABLED:Ljava/lang/String; = "camera_gesture_disabled"

.field private static final CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONNECTIVITY_RELEASE_PENDING_INTENT_DELAY_MS:Ljava/lang/String; = "connectivity_release_pending_intent_delay_ms"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_INPUT_METHOD:Ljava/lang/String; = "default_input_method"

.field public static final DEVELOPMENT_SETTINGS_ENABLED:Ljava/lang/String; = "development_settings_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIALER_DEFAULT_APPLICATION:Ljava/lang/String; = "dialer_default_application"

.field public static final DISABLED_SYSTEM_INPUT_METHODS:Ljava/lang/String; = "disabled_system_input_methods"

.field public static final DOUBLE_TAP_TO_WAKE:Ljava/lang/String; = "double_tap_to_wake"

.field public static final DOZE_ENABLED:Ljava/lang/String; = "doze_enabled"

.field public static final EMERGENCY_ASSISTANCE_APPLICATION:Ljava/lang/String; = "emergency_assistance_application"

.field public static final ENABLED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "enabled_accessibility_services"

.field public static final ENABLED_CONDITION_PROVIDERS:Ljava/lang/String; = "enabled_condition_providers"

.field public static final ENABLED_INPUT_METHODS:Ljava/lang/String; = "enabled_input_methods"

.field public static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field public static final ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES:Ljava/lang/String; = "enabled_notification_policy_access_packages"

.field public static final ENABLED_ON_FIRST_BOOT_SYSTEM_PRINT_SERVICES:Ljava/lang/String; = "enabled_on_first_boot_system_print_services"

.field public static final ENABLED_PRINT_SERVICES:Ljava/lang/String; = "enabled_print_services"

.field public static final ENHANCED_VOICE_PRIVACY_ENABLED:Ljava/lang/String; = "enhanced_voice_privacy_enabled"

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMMERSIVE_MODE_CONFIRMATIONS:Ljava/lang/String; = "immersive_mode_confirmations"

.field public static final INCALL_POWER_BUTTON_BEHAVIOR:Ljava/lang/String; = "incall_power_button_behavior"

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_DEFAULT:I = 0x1

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_HANGUP:I = 0x2

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_SCREEN_OFF:I = 0x1

.field public static final INPUT_METHODS_SUBTYPE_HISTORY:Ljava/lang/String; = "input_methods_subtype_history"

.field public static final INPUT_METHOD_SELECTOR_VISIBILITY:Ljava/lang/String; = "input_method_selector_visibility"

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"

.field public static final LAST_SETUP_SHOWN:Ljava/lang/String; = "last_setup_shown"

.field public static final LOCATION_MODE:Ljava/lang/String; = "location_mode"

.field public static final LOCATION_MODE_BATTERY_SAVING:I = 0x2

.field public static final LOCATION_MODE_HIGH_ACCURACY:I = 0x3

.field public static final LOCATION_MODE_OFF:I = 0x0

.field public static final LOCATION_MODE_SENSORS_ONLY:I = 0x1

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_BIOMETRIC_WEAK_FLAGS:Ljava/lang/String; = "lock_biometric_weak_flags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_ALLOW_PRIVATE_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_allow_private_notifications"

.field public static final LOCK_SCREEN_APPWIDGET_IDS:Ljava/lang/String; = "lock_screen_appwidget_ids"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_FALLBACK_APPWIDGET_ID:Ljava/lang/String; = "lock_screen_fallback_appwidget_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_screen_lock_after_timeout"

.field public static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field public static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final LOCK_SCREEN_SHOW_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_show_notifications"

.field public static final LOCK_SCREEN_STICKY_APPWIDGET:Ljava/lang/String; = "lock_screen_sticky_appwidget"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_TO_APP_EXIT_LOCKED:Ljava/lang/String; = "lock_to_app_exit_locked"

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LONG_PRESS_TIMEOUT:Ljava/lang/String; = "long_press_timeout"

.field public static final MOUNT_PLAY_NOTIFICATION_SND:Ljava/lang/String; = "mount_play_not_snd"

.field public static final MOUNT_UMS_AUTOSTART:Ljava/lang/String; = "mount_ums_autostart"

.field public static final MOUNT_UMS_NOTIFY_ENABLED:Ljava/lang/String; = "mount_ums_notify_enabled"

.field public static final MOUNT_UMS_PROMPT:Ljava/lang/String; = "mount_ums_prompt"

.field private static final MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFC_PAYMENT_DEFAULT_COMPONENT:Ljava/lang/String; = "nfc_payment_default_component"

.field public static final NFC_PAYMENT_FOREGROUND:Ljava/lang/String; = "nfc_payment_foreground"

.field public static final PACKAGE_VERIFIER_USER_CONSENT:Ljava/lang/String; = "package_verifier_user_consent"

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"

.field public static final PAYMENT_SERVICE_SEARCH_URI:Ljava/lang/String; = "payment_service_search_uri"

.field public static final PREFERRED_TTY_MODE:Ljava/lang/String; = "preferred_tty_mode"

.field public static final PRINT_SERVICE_SEARCH_URI:Ljava/lang/String; = "print_service_search_uri"

.field public static final SCREENSAVER_ACTIVATE_ON_DOCK:Ljava/lang/String; = "screensaver_activate_on_dock"

.field public static final SCREENSAVER_ACTIVATE_ON_SLEEP:Ljava/lang/String; = "screensaver_activate_on_sleep"

.field public static final SCREENSAVER_COMPONENTS:Ljava/lang/String; = "screensaver_components"

.field public static final SCREENSAVER_DEFAULT_COMPONENT:Ljava/lang/String; = "screensaver_default_component"

.field public static final SCREENSAVER_ENABLED:Ljava/lang/String; = "screensaver_enabled"

.field public static final SEARCH_GLOBAL_SEARCH_ACTIVITY:Ljava/lang/String; = "search_global_search_activity"

.field public static final SEARCH_MAX_RESULTS_PER_SOURCE:Ljava/lang/String; = "search_max_results_per_source"

.field public static final SEARCH_MAX_RESULTS_TO_DISPLAY:Ljava/lang/String; = "search_max_results_to_display"

.field public static final SEARCH_MAX_SHORTCUTS_RETURNED:Ljava/lang/String; = "search_max_shortcuts_returned"

.field public static final SEARCH_MAX_SOURCE_EVENT_AGE_MILLIS:Ljava/lang/String; = "search_max_source_event_age_millis"

.field public static final SEARCH_MAX_STAT_AGE_MILLIS:Ljava/lang/String; = "search_max_stat_age_millis"

.field public static final SEARCH_MIN_CLICKS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_clicks_for_source_ranking"

.field public static final SEARCH_MIN_IMPRESSIONS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_impressions_for_source_ranking"

.field public static final SEARCH_NUM_PROMOTED_SOURCES:Ljava/lang/String; = "search_num_promoted_sources"

.field public static final SEARCH_PER_SOURCE_CONCURRENT_QUERY_LIMIT:Ljava/lang/String; = "search_per_source_concurrent_query_limit"

.field public static final SEARCH_PREFILL_MILLIS:Ljava/lang/String; = "search_prefill_millis"

.field public static final SEARCH_PROMOTED_SOURCE_DEADLINE_MILLIS:Ljava/lang/String; = "search_promoted_source_deadline_millis"

.field public static final SEARCH_QUERY_THREAD_CORE_POOL_SIZE:Ljava/lang/String; = "search_query_thread_core_pool_size"

.field public static final SEARCH_QUERY_THREAD_MAX_POOL_SIZE:Ljava/lang/String; = "search_query_thread_max_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_CORE_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_core_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_MAX_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_max_pool_size"

.field public static final SEARCH_SOURCE_TIMEOUT_MILLIS:Ljava/lang/String; = "search_source_timeout_millis"

.field public static final SEARCH_THREAD_KEEPALIVE_SECONDS:Ljava/lang/String; = "search_thread_keepalive_seconds"

.field public static final SEARCH_WEB_RESULTS_OVERRIDE_LIMIT:Ljava/lang/String; = "search_web_results_override_limit"

.field public static final SELECTED_INPUT_METHOD_SUBTYPE:Ljava/lang/String; = "selected_input_method_subtype"

.field public static final SELECTED_SPELL_CHECKER:Ljava/lang/String; = "selected_spell_checker"

.field public static final SELECTED_SPELL_CHECKER_SUBTYPE:Ljava/lang/String; = "selected_spell_checker_subtype"

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SHOW_IME_WITH_HARD_KEYBOARD:Ljava/lang/String; = "show_ime_with_hard_keyboard"

.field public static final SHOW_NOTE_ABOUT_NOTIFICATION_HIDING:Ljava/lang/String; = "show_note_about_notification_hiding"

.field public static final SKIP_FIRST_USE_HINTS:Ljava/lang/String; = "skip_first_use_hints"

.field public static final SLEEP_TIMEOUT:Ljava/lang/String; = "sleep_timeout"

.field public static final SMS_DEFAULT_APPLICATION:Ljava/lang/String; = "sms_default_application"

.field public static final SPELL_CHECKER_ENABLED:Ljava/lang/String; = "spell_checker_enabled"

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_secure_version"

.field public static final TOUCH_EXPLORATION_ENABLED:Ljava/lang/String; = "touch_exploration_enabled"

.field public static final TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "touch_exploration_granted_accessibility_services"

.field public static final TRUST_AGENTS_INITIALIZED:Ljava/lang/String; = "trust_agents_initialized"

.field public static final TTS_DEFAULT_COUNTRY:Ljava/lang/String; = "tts_default_country"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LANG:Ljava/lang/String; = "tts_default_lang"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LOCALE:Ljava/lang/String; = "tts_default_locale"

.field public static final TTS_DEFAULT_PITCH:Ljava/lang/String; = "tts_default_pitch"

.field public static final TTS_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field public static final TTS_DEFAULT_SYNTH:Ljava/lang/String; = "tts_default_synth"

.field public static final TTS_DEFAULT_VARIANT:Ljava/lang/String; = "tts_default_variant"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_ENABLED_PLUGINS:Ljava/lang/String; = "tts_enabled_plugins"

.field public static final TTS_USE_DEFAULTS:Ljava/lang/String; = "tts_use_defaults"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE_ENABLED:Ljava/lang/String; = "tty_mode_enabled"

.field public static final TV_INPUT_CUSTOM_LABELS:Ljava/lang/String; = "tv_input_custom_labels"

.field public static final TV_INPUT_HIDDEN_INPUTS:Ljava/lang/String; = "tv_input_hidden_inputs"

.field public static final UI_NIGHT_MODE:Ljava/lang/String; = "ui_night_mode"

.field public static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS:Ljava/lang/String; = "unsafe_volume_music_active_ms"

.field public static final USB_AUDIO_AUTOMATIC_ROUTING_DISABLED:Ljava/lang/String; = "usb_audio_automatic_routing_disabled"

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VOICE_INTERACTION_SERVICE:Ljava/lang/String; = "voice_interaction_service"

.field public static final VOICE_RECOGNITION_SERVICE:Ljava/lang/String; = "voice_recognition_service"

.field public static final VOLUME_CONTROLLER_SERVICE_COMPONENT:Ljava/lang/String; = "volume_controller_service_component"

.field public static final WAKE_GESTURE_ENABLED:Ljava/lang/String; = "wake_gesture_enabled"

.field public static final WIFI_IDLE_MS:Ljava/lang/String; = "wifi_idle_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_WATCH_LIST:Ljava/lang/String; = "wifi_watchdog_watch_list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIsSystemProcess:Z

.field private static sLockSettings:Lcom/android/internal/widget/ILockSettings;

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 3857
    const-string/jumbo v0, "content://settings/secure"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3856
    sput-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 3860
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    .line 3861
    const-string/jumbo v1, "sys.settings_secure_version"

    .line 3862
    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 3863
    const-string/jumbo v3, "GET_secure"

    .line 3864
    const-string/jumbo v4, "PUT_secure"

    .line 3860
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 3866
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    .line 3872
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    .line 3873
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3874
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3875
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3877
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 3878
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3879
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "assisted_gps_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3880
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "bluetooth_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3881
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "bugreport_in_power_menu"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3882
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "cdma_cell_broadcast_sms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3883
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "roaming_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3884
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "subscription_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3885
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "data_activity_timeout_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3886
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "data_activity_timeout_wifi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3887
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3888
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "development_settings_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3889
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3890
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "display_density_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3891
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "display_size_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3892
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "download_manager_max_bytes_over_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3893
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "download_manager_recommended_max_bytes_over_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3894
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "mobile_data"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3895
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3896
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3897
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3898
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3899
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3900
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_global_alert_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3901
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_poll_interval"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3902
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_sample_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3903
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_time_cache_max_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3904
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3905
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3906
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3907
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3908
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3909
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3910
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3911
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3912
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "network_preference"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3913
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nitz_update_diff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3914
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nitz_update_spacing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3915
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "ntp_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3916
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "ntp_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3917
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_error_poll_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3918
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_long_poll_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3919
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_max_pdp_reset_fail_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3920
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_poll_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3921
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_trigger_packet_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3922
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sampling_profiler_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3923
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_data_service_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3924
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_detection_redir_host"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3925
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_detection_target_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3926
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_dun_apn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3927
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_dun_required"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3928
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_supported"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3929
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3930
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "use_google_mail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3931
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_country_code"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3932
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_framework_scan_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3933
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_frequency_band"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3934
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_idle_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3935
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3936
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_mobile_data_transition_wakelock_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3937
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3938
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3939
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3940
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3941
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_p2p_device_name"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3942
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_saved_state"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3943
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_hotspot2_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3944
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_supplicant_scan_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3945
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_suspend_optimizations_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3946
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_enhanced_auto_join"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3947
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_network_show_rssi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3948
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3949
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3950
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wimax_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3951
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "package_verifier_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3952
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "verifier_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3953
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "verifier_default_response"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3954
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "data_stall_alarm_non_aggressive_delay_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3955
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "data_stall_alarm_aggressive_delay_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3956
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "gprs_register_check_period_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3957
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wtf_is_fatal"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3958
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "battery_discharge_duration_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3959
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "battery_discharge_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3960
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "send_action_app_error"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3961
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "dropbox_age_seconds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3962
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "dropbox_max_files"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3963
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "dropbox_quota_kb"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3964
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "dropbox_quota_percent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3965
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "dropbox_reserve_percent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3966
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "dropbox:"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3967
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "logcat_for_"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3968
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_free_storage_log_interval"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3969
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "disk_free_change_reporting_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3970
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_threshold_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3971
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_threshold_max_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3972
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_full_threshold_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3973
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sync_max_retry_delay_in_seconds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3974
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "connectivity_change_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3975
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "captive_portal_detection_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3976
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "captive_portal_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3977
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nsd_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3978
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "set_install_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3979
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "default_install_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3980
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "inet_condition_debounce_up_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3981
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "inet_condition_debounce_down_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3982
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "read_external_storage_enforced_default"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3983
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3984
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "global_http_proxy_host"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3985
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "global_http_proxy_port"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3986
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "global_http_proxy_exclusion_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3987
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "set_global_http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3988
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "default_dns_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3989
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "preferred_network_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3990
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "webview_data_reduction_proxy_key"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5837
    const/16 v0, 0x2f

    new-array v0, v0, [Ljava/lang/String;

    .line 5838
    const-string/jumbo v1, "bugreport_in_power_menu"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5839
    const-string/jumbo v1, "mock_location"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5840
    const-string/jumbo v1, "parental_control_enabled"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 5841
    const-string/jumbo v1, "parental_control_redirect_url"

    aput-object v1, v0, v5

    .line 5842
    const-string/jumbo v1, "usb_mass_storage_enabled"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 5843
    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 5844
    const-string/jumbo v1, "accessibility_display_magnification_scale"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 5845
    const-string/jumbo v1, "accessibility_display_magnification_auto_update"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 5846
    const-string/jumbo v1, "accessibility_script_injection"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 5847
    const-string/jumbo v1, "backup_auto_restore"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 5848
    const-string/jumbo v1, "enabled_accessibility_services"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 5849
    const-string/jumbo v1, "enabled_notification_listeners"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 5850
    const-string/jumbo v1, "enabled_input_methods"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 5851
    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 5852
    const-string/jumbo v1, "touch_exploration_enabled"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 5853
    const-string/jumbo v1, "accessibility_enabled"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 5854
    const-string/jumbo v1, "speak_password"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 5855
    const-string/jumbo v1, "high_text_contrast_enabled"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 5856
    const-string/jumbo v1, "accessibility_captioning_enabled"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 5857
    const-string/jumbo v1, "accessibility_captioning_locale"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 5858
    const-string/jumbo v1, "accessibility_captioning_background_color"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 5859
    const-string/jumbo v1, "accessibility_captioning_foreground_color"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 5860
    const-string/jumbo v1, "accessibility_captioning_edge_type"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 5861
    const-string/jumbo v1, "accessibility_captioning_edge_color"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 5862
    const-string/jumbo v1, "accessibility_captioning_typeface"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 5863
    const-string/jumbo v1, "accessibility_captioning_font_scale"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 5864
    const-string/jumbo v1, "tts_use_defaults"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 5865
    const-string/jumbo v1, "tts_default_rate"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 5866
    const-string/jumbo v1, "tts_default_pitch"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 5867
    const-string/jumbo v1, "tts_default_synth"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 5868
    const-string/jumbo v1, "tts_default_lang"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 5869
    const-string/jumbo v1, "tts_default_country"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 5870
    const-string/jumbo v1, "tts_enabled_plugins"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 5871
    const-string/jumbo v1, "tts_default_locale"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 5872
    const-string/jumbo v1, "wifi_networks_available_notification_on"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 5873
    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 5874
    const-string/jumbo v1, "wifi_num_open_networks_kept"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 5875
    const-string/jumbo v1, "selected_spell_checker"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 5876
    const-string/jumbo v1, "selected_spell_checker_subtype"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 5877
    const-string/jumbo v1, "spell_checker_enabled"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 5878
    const-string/jumbo v1, "mount_play_not_snd"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 5879
    const-string/jumbo v1, "mount_ums_autostart"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 5880
    const-string/jumbo v1, "mount_ums_prompt"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 5881
    const-string/jumbo v1, "mount_ums_notify_enabled"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 5882
    const-string/jumbo v1, "sleep_timeout"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 5883
    const-string/jumbo v1, "double_tap_to_wake"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 5884
    const-string/jumbo v1, "camera_gesture_disabled"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 5837
    sput-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 5891
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    .line 5894
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "accessibility_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5895
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "mock_location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5896
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "allowed_geolocation_origins"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5897
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "default_input_method"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5898
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "enabled_accessibility_services"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5899
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "enabled_input_methods"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5900
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "location_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5901
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "location_providers_allowed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5902
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "lock_screen_allow_private_notifications"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5903
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_input_method_subtype"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5904
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_spell_checker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5905
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_spell_checker_subtype"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3850
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3850
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getCloneToManagedProfileSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5910
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5909
    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4324
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 4290
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userHandle"    # I

    .prologue
    .line 4296
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4298
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":F
    :cond_0
    return p2

    .line 4299
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    .line 4300
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4330
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4331
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4332
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4335
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4336
    :catch_0
    move-exception v0

    .line 4337
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4146
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 4108
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4152
    const-string/jumbo v2, "location_mode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4155
    invoke-static {p0, p2}, Landroid/provider/Settings$Secure;->getLocationModeForUser(Landroid/content/ContentResolver;I)I

    move-result v2

    return v2

    .line 4157
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4159
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4160
    :catch_0
    move-exception v0

    .line 4161
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 4113
    const-string/jumbo v2, "location_mode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4116
    invoke-static {p0, p3}, Landroid/provider/Settings$Secure;->getLocationModeForUser(Landroid/content/ContentResolver;I)I

    move-result v2

    return v2

    .line 4118
    :cond_0
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4120
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":I
    :cond_1
    return p2

    .line 4121
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 4122
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method private static final getLocationModeForUser(Landroid/content/ContentResolver;I)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userId"    # I

    .prologue
    .line 6047
    invoke-static {}, Landroid/provider/Settings;->-get0()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 6049
    :try_start_0
    const-string/jumbo v2, "gps"

    .line 6048
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 6051
    .local v0, "gpsEnabled":Z
    const-string/jumbo v2, "network"

    .line 6050
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 6052
    .local v1, "networkEnabled":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 6053
    const/4 v2, 0x3

    monitor-exit v3

    return v2

    .line 6054
    :cond_0
    if-eqz v0, :cond_1

    .line 6055
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 6056
    :cond_1
    if-eqz v1, :cond_2

    .line 6057
    const/4 v2, 0x2

    monitor-exit v3

    return v2

    .line 6059
    :cond_2
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    .line 6047
    .end local v0    # "gpsEnabled":Z
    .end local v1    # "networkEnabled":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4238
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 4203
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4244
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4246
    .local v1, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 4247
    :catch_0
    move-exception v0

    .line 4248
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 4209
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4212
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 4216
    .local v2, "value":J
    :goto_0
    return-wide v2

    .line 4212
    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0

    .line 4213
    .end local v2    # "value":J
    :catch_0
    move-exception v0

    .line 4214
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static getMovedToGlobalSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3995
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3994
    return-void
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 4005
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 4011
    sget-object v3, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4012
    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " has moved from android.provider.Settings.Secure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4013
    const-string/jumbo v5, " to android.provider.Settings.Global."

    .line 4012
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4017
    :cond_0
    sget-object v3, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4018
    const-class v4, Landroid/provider/Settings$Secure;

    monitor-enter v4

    .line 4019
    :try_start_0
    sget-object v3, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    if-nez v3, :cond_1

    .line 4021
    const-string/jumbo v3, "lock_settings"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 4020
    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    sput-object v3, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    .line 4022
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v5, 0x3e8

    if-ne v3, v5, :cond_3

    const/4 v3, 0x1

    :goto_0
    sput-boolean v3, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    .line 4025
    sget-object v3, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    if-eqz v3, :cond_2

    sget-boolean v3, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z

    if-eqz v3, :cond_4

    .line 4048
    :cond_2
    :goto_1
    sget-object v3, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v3, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4022
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 4018
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4028
    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 4030
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_6

    .line 4031
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 4032
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4033
    const/16 v4, 0x16

    .line 4032
    if-gt v3, v4, :cond_5

    const/4 v1, 0x1

    .line 4034
    .local v1, "isPreMnc":Z
    :goto_2
    if-eqz v1, :cond_7

    .line 4036
    :try_start_1
    sget-object v3, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    const-string/jumbo v4, "0"

    invoke-interface {v3, p1, v4, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3

    .line 4032
    .end local v1    # "isPreMnc":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isPreMnc":Z
    goto :goto_2

    .line 4030
    .end local v1    # "isPreMnc":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "isPreMnc":Z
    goto :goto_2

    .line 4041
    :cond_7
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Settings.Secure."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4042
    const-string/jumbo v5, " is deprecated and no longer accessible."

    .line 4041
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4043
    const-string/jumbo v5, " See API documentation for potential replacements."

    .line 4041
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4037
    :catch_0
    move-exception v2

    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4085
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4086
    const-string/jumbo v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.Secure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4087
    const-string/jumbo v2, " to android.provider.Settings.Global, returning global URI."

    .line 4086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 4090
    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5925
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static final isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5941
    const-string/jumbo v1, "location_providers_allowed"

    .line 5940
    invoke-static {p0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5942
    .local v0, "allowedProviders":Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 4355
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userHandle"    # I

    .prologue
    .line 4361
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 4179
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 4185
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 4266
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 4272
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 4059
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 4065
    const-string/jumbo v0, "location_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4068
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, p3}, Landroid/provider/Settings$Secure;->setLocationModeForUser(Landroid/content/ContentResolver;II)Z

    move-result v0

    return v0

    .line 4070
    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4071
    const-string/jumbo v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4072
    const-string/jumbo v2, " to android.provider.Settings.Global"

    .line 4071
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4073
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 4075
    :cond_1
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static final setLocationModeForUser(Landroid/content/ContentResolver;II)Z
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 6001
    invoke-static {}, Landroid/provider/Settings;->-get0()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 6002
    const/4 v0, 0x0

    .line 6003
    .local v0, "gps":Z
    const/4 v2, 0x0

    .line 6004
    .local v2, "network":Z
    packed-switch p1, :pswitch_data_0

    .line 6018
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid location mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6001
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 6008
    :pswitch_0
    const/4 v0, 0x1

    .line 6030
    :goto_0
    :pswitch_1
    :try_start_1
    const-string/jumbo v4, "network"

    .line 6029
    invoke-static {p0, v4, v2, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v3

    .line 6032
    .local v3, "nlpSuccess":Z
    const-string/jumbo v4, "gps"

    .line 6031
    invoke-static {p0, v4, v0, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 6033
    .local v1, "gpsSuccess":Z
    if-eqz v1, :cond_0

    .end local v3    # "nlpSuccess":Z
    :goto_1
    monitor-exit v5

    return v3

    .line 6011
    .end local v1    # "gpsSuccess":Z
    :pswitch_2
    const/4 v2, 0x1

    .line 6012
    goto :goto_0

    .line 6014
    :pswitch_3
    const/4 v0, 0x1

    .line 6015
    const/4 v2, 0x1

    .line 6016
    goto :goto_0

    .line 6033
    .restart local v1    # "gpsSuccess":Z
    .restart local v3    # "nlpSuccess":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 6004
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static final setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5955
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 5954
    return-void
.end method

.method public static final setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5973
    invoke-static {}, Landroid/provider/Settings;->-get0()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5977
    if-eqz p2, :cond_0

    .line 5978
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5982
    :goto_0
    const-string/jumbo v0, "location_providers_allowed"

    invoke-static {p0, v0, p1, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 5980
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    goto :goto_0

    .line 5973
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
