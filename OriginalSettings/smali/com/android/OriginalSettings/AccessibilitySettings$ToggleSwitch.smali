.class public Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;
.super Landroid/widget/Switch;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleSwitch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 708
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 709
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedInternal(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 725
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 726
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    .line 713
    return-void
.end method
