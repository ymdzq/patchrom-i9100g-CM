.class Lcom/android/OriginalSettings/profiles/ProfileConnectionPreference$1;
.super Ljava/lang/Object;
.source "ProfileConnectionPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/profiles/ProfileConnectionPreference;->createConnectionDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/profiles/ProfileConnectionPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/profiles/ProfileConnectionPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/OriginalSettings/profiles/ProfileConnectionPreference$1;->this$0:Lcom/android/OriginalSettings/profiles/ProfileConnectionPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfileConnectionPreference$1;->this$0:Lcom/android/OriginalSettings/profiles/ProfileConnectionPreference;

    #setter for: Lcom/android/OriginalSettings/profiles/ProfileConnectionPreference;->currentChoice:I
    invoke-static {v0, p2}, Lcom/android/OriginalSettings/profiles/ProfileConnectionPreference;->access$002(Lcom/android/OriginalSettings/profiles/ProfileConnectionPreference;I)I

    .line 135
    return-void
.end method
