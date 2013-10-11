.class public Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleAccessibilityServicePreferenceFragment"
.end annotation


# instance fields
.field private mComponentName:Ljava/lang/String;

.field private mDisableWarningMessage:Ljava/lang/CharSequence;

.field private mDisableWarningTitle:Ljava/lang/CharSequence;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private final mSettingsContentObserver:Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;

.field private mShownDialogId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;-><init>()V

    .line 735
    new-instance v0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 849
    packed-switch p2, :pswitch_data_0

    .line 863
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 851
    :pswitch_0
    iget v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v2, v0, :cond_0

    .line 852
    .local v0, checked:Z
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 853
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 854
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 865
    :goto_1
    return-void

    .end local v0           #checked:Z
    :cond_0
    move v0, v1

    .line 851
    goto :goto_0

    .line 857
    :pswitch_1
    iget v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 858
    .restart local v0       #checked:Z
    :goto_2
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 859
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 860
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1

    .end local v0           #checked:Z
    :cond_1
    move v0, v1

    .line 857
    goto :goto_2

    .line 849
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x1

    .line 820
    const/4 v1, 0x0

    .line 821
    .local v1, title:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 822
    .local v0, message:Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 834
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 824
    :pswitch_0
    iput v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 825
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 826
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 836
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 829
    :pswitch_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 830
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 831
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 832
    goto :goto_0

    .line 822
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 869
    invoke-super {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 870
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 893
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 764
    invoke-super {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onPause()V

    .line 765
    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 12
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    #calls: Lcom/android/OriginalSettings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    invoke-static {v9}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$600(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    .line 773
    .local v3, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 775
    .local v8, toggledService:Landroid/content/ComponentName;
    if-eqz p2, :cond_0

    .line 777
    const/4 v0, 0x1

    .line 778
    .local v0, accessibilityEnabled:Z
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 796
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 801
    .local v4, enabledServicesBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 802
    .local v2, enabledService:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    const/16 v9, 0x3a

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 781
    .end local v0           #accessibilityEnabled:Z
    .end local v2           #enabledService:Landroid/content/ComponentName;
    .end local v4           #enabledServicesBuilder:Ljava/lang/StringBuilder;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    .line 782
    .local v1, enabledAndInstalledServiceCount:I
    invoke-static {}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$700()Ljava/util/Set;

    move-result-object v7

    .line 783
    .local v7, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 784
    .restart local v2       #enabledService:Landroid/content/ComponentName;
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 789
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :cond_2
    const/4 v9, 0x1

    if-gt v1, v9, :cond_3

    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 792
    .restart local v0       #accessibilityEnabled:Z
    :goto_3
    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 789
    .end local v0           #accessibilityEnabled:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 805
    .end local v1           #enabledAndInstalledServiceCount:I
    .end local v7           #installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v0       #accessibilityEnabled:Z
    .restart local v4       #enabledServicesBuilder:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 806
    .local v5, enabledServicesBuilderLength:I
    if-lez v5, :cond_6

    .line 807
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 809
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 814
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_enabled"

    if-eqz v0, :cond_7

    const/4 v9, 0x1

    :goto_4
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 816
    return-void

    .line 814
    :cond_7
    const/4 v9, 0x0

    goto :goto_4
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 5
    .parameter "arguments"

    .prologue
    .line 897
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 899
    const-string v3, "settings_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 900
    .local v2, settingsTitle:Ljava/lang/String;
    const-string v3, "settings_component_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, settingsComponentName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 902
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 904
    .local v1, settingsIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 905
    iput-object v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 906
    iput-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 907
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    .line 911
    .end local v1           #settingsIntent:Landroid/content/Intent;
    :cond_0
    const-string v3, "enable_warning_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 914
    const-string v3, "enable_warning_message"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 917
    const-string v3, "disable_warning_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 920
    const-string v3, "disable_warning_message"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 923
    const-string v3, "service_component_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mComponentName:Ljava/lang/String;

    .line 924
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 758
    invoke-super {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onResume()V

    .line 759
    return-void
.end method
