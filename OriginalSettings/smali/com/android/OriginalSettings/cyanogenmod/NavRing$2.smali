.class Lcom/android/OriginalSettings/cyanogenmod/NavRing$2;
.super Ljava/lang/Object;
.source "NavRing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/cyanogenmod/NavRing;->onTrigger(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/cyanogenmod/NavRing;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/NavRing;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/NavRing$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/NavRing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NavRing$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/NavRing;

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/NavRing$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/NavRing;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/NavRing;->mActions:Lcom/android/OriginalSettings/cyanogenmod/NavRing$ActionHolder;
    invoke-static {v1}, Lcom/android/OriginalSettings/cyanogenmod/NavRing;->access$100(Lcom/android/OriginalSettings/cyanogenmod/NavRing;)Lcom/android/OriginalSettings/cyanogenmod/NavRing$ActionHolder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/OriginalSettings/cyanogenmod/NavRing$ActionHolder;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/cyanogenmod/NavRing;->onTargetChange(Ljava/lang/String;)V

    .line 288
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 289
    return-void
.end method
