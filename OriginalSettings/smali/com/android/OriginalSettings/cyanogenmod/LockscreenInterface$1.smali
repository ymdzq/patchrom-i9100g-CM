.class Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface$1;
.super Ljava/lang/Object;
.source "LockscreenInterface.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->handleBackgroundSelection(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface$1;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 298
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 299
    return-void
.end method
