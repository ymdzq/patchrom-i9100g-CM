.class Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$3;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$3;->this$0:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    iput-object p2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$3;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$3;->this$0:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->access$100(Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;)Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->notifyScanCompleted()V

    .line 538
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$3;->val$uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$3;->this$0:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08024f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 541
    :cond_0
    return-void
.end method
