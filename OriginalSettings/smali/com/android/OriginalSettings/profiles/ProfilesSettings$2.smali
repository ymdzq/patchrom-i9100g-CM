.class Lcom/android/OriginalSettings/profiles/ProfilesSettings$2;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/profiles/ProfilesSettings;->addProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/profiles/ProfilesSettings;

.field final synthetic val$entry:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/profiles/ProfilesSettings;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$2;->this$0:Lcom/android/OriginalSettings/profiles/ProfilesSettings;

    iput-object p2, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$2;->val$entry:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 300
    iget-object v2, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$2;->val$entry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$2;->this$0:Lcom/android/OriginalSettings/profiles/ProfilesSettings;

    #getter for: Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v2}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->access$100(Lcom/android/OriginalSettings/profiles/ProfilesSettings;)Landroid/app/ProfileManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ProfileManager;->profileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    new-instance v1, Landroid/app/Profile;

    invoke-direct {v1, v0}, Landroid/app/Profile;-><init>(Ljava/lang/String;)V

    .line 303
    .local v1, profile:Landroid/app/Profile;
    iget-object v2, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$2;->this$0:Lcom/android/OriginalSettings/profiles/ProfilesSettings;

    #getter for: Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v2}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->access$100(Lcom/android/OriginalSettings/profiles/ProfilesSettings;)Landroid/app/ProfileManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ProfileManager;->addProfile(Landroid/app/Profile;)V

    .line 304
    iget-object v2, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$2;->this$0:Lcom/android/OriginalSettings/profiles/ProfilesSettings;

    iget-object v2, v2, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabManager:Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;

    const-string v3, "profiles"

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;->refreshTab(Ljava/lang/String;)V

    .line 308
    .end local v1           #profile:Landroid/app/Profile;
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$2;->this$0:Lcom/android/OriginalSettings/profiles/ProfilesSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0800d6

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
