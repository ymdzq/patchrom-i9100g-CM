.class Lcom/android/OriginalSettings/deviceinfo/Memory$3;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/deviceinfo/Memory;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory$3;->this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory$3;->this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;

    #calls: Lcom/android/OriginalSettings/deviceinfo/Memory;->doUnmount()V
    invoke-static {v0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->access$200(Lcom/android/OriginalSettings/deviceinfo/Memory;)V

    .line 272
    return-void
.end method
