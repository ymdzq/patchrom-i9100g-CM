.class public Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;
.super Landroid/preference/PreferenceFragment;
.source "ScreenFragmentActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCABC:Lcom/cyanogenmod/settings/device/CABC;

.field private mPanelGamma:Lcom/cyanogenmod/settings/device/PanelGamma;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "FILE"

    .prologue
    .line 88
    invoke-static {p0}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 92
    const-string v1, "/sys/class/sec/sec_touchkey/led_mode"

    invoke-static {v1}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v1, "/sys/class/sec/sec_touchkey/led_mode"

    const-string v2, "touchkey_led_mode"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v3, 0x7f040003

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->addPreferencesFromResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 51
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "cabc"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/settings/device/CABC;

    iput-object v3, p0, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->mCABC:Lcom/cyanogenmod/settings/device/CABC;

    .line 52
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->mCABC:Lcom/cyanogenmod/settings/device/CABC;

    invoke-static {}, Lcom/cyanogenmod/settings/device/CABC;->isSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cyanogenmod/settings/device/CABC;->setEnabled(Z)V

    .line 54
    const-string v3, "panel_gamma"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/cyanogenmod/settings/device/PanelGamma;

    iput-object v3, p0, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->mPanelGamma:Lcom/cyanogenmod/settings/device/PanelGamma;

    .line 55
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->mPanelGamma:Lcom/cyanogenmod/settings/device/PanelGamma;

    iget-object v4, p0, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->mPanelGamma:Lcom/cyanogenmod/settings/device/PanelGamma;

    invoke-static {}, Lcom/cyanogenmod/settings/device/PanelGamma;->isSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cyanogenmod/settings/device/PanelGamma;->setEnabled(Z)V

    .line 57
    const-string v3, "touchkey_led_mode"

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 58
    .local v1, modePref:Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, mode:I
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    if-lez v0, :cond_0

    .line 62
    const-string v3, "touchkey_timeout"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v3, "touchkey_timeout"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    .line 69
    const-string v5, "/sys/class/sec/sec_touchkey/led_mode"

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 72
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, val:Ljava/lang/String;
    const-string v4, "touchkey_led_mode"

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/device/ScreenFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 74
    .local v1, modePref:Landroid/preference/ListPreference;
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, mode:I
    if-lez v0, :cond_0

    .line 77
    const-string v4, "/sys/class/sec/sec_touchkey/notification"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, "touchkey_timeout"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 84
    :goto_0
    return v6

    .line 80
    :cond_0
    const-string v4, "/sys/class/sec/sec_touchkey/notification"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v4, "touchkey_timeout"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
