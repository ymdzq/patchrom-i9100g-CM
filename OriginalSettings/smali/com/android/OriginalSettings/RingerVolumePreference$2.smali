.class Lcom/android/OriginalSettings/RingerVolumePreference$2;
.super Ljava/lang/Object;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/RingerVolumePreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/RingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/RingerVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/OriginalSettings/RingerVolumePreference$2;->this$0:Lcom/android/OriginalSettings/RingerVolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/OriginalSettings/RingerVolumePreference$2;->this$0:Lcom/android/OriginalSettings/RingerVolumePreference;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/RingerVolumePreference;->getCurrentMutableStreams(Landroid/content/Context;)I
    invoke-static {v1}, Lcom/android/OriginalSettings/RingerVolumePreference;->access$100(Landroid/content/Context;)I

    move-result v0

    .line 212
    .local v0, mutedStreams:I
    if-eqz p2, :cond_0

    .line 213
    or-int/lit8 v0, v0, 0x20

    .line 217
    :goto_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    return-void

    .line 215
    :cond_0
    and-int/lit8 v0, v0, -0x21

    goto :goto_0
.end method
