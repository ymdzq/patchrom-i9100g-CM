.class public Lcom/android/OriginalSettings/vpn2/VpnSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/vpn2/VpnSettings$LockdownConfigFragment;,
        Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    }
.end annotation


# instance fields
.field private mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedKey:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z

.field private mUpdater:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 71
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    .line 73
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUnlocking:Z

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    .line 450
    return-void
.end method

.method static synthetic access$000(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private connect(Lcom/android/internal/net/VpnProfile;)V
    .locals 4
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0809bc

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static varargs loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 9
    .parameter "keyStore"
    .parameter "excludeTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 539
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    const-string v7, "VPN_"

    invoke-virtual {p0, v7}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, keys:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 541
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 542
    .local v2, key:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 544
    .local v5, profile:Lcom/android/internal/net/VpnProfile;
    if-eqz v5, :cond_0

    iget v7, v5, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 545
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_1
    return-object v6
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 388
    const v0, 0x7f0809f4

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 341
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 345
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 346
    .local v0, info:Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_1

    .line 347
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    .line 348
    .local v1, preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_0

    .line 349
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 351
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 353
    .end local v1           #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    :cond_1
    if-eqz v0, :cond_2

    .line 354
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    .line 355
    .restart local v1       #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_2

    .line 356
    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 357
    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v0           #info:Lcom/android/internal/net/LegacyVpnInfo;
    .end local v1           #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 365
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 360
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 229
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 232
    .local v2, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    .line 235
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    .line 236
    .local v1, preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_1

    .line 237
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;->update(Lcom/android/internal/net/VpnProfile;)V

    .line 247
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->isEditing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 249
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->connect(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v1           #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    .end local v2           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_0
    :goto_1
    return-void

    .line 240
    .restart local v1       #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    .restart local v2       #profile:Lcom/android/internal/net/VpnProfile;
    :cond_1
    new-instance v1, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    .end local v1           #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;-><init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 241
    .restart local v1       #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 242
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VpnSettings"

    const-string v4, "connect"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 279
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    .line 280
    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_0
    return v1

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    .line 285
    .local v0, preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    if-nez v0, :cond_1

    .line 286
    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called but no preference is found"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 292
    :pswitch_0
    new-instance v1, Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    invoke-direct {v1, v3, p0, v4, v2}, Lcom/android/OriginalSettings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    .line 293
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 294
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->show()V

    move v1, v2

    .line 295
    goto :goto_0

    .line 297
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 299
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move v1, v2

    .line 301
    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x7f0809b6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 90
    const v1, 0x7f050050

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string v1, "VpnKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VpnProfile"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 95
    .local v0, profile:Lcom/android/internal/net/VpnProfile;
    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "VpnEditing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/OriginalSettings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    .line 100
    .end local v0           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const v6, 0x7f0809b7

    const v5, 0x7f0809b6

    const/4 v4, 0x0

    .line 259
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    if-eqz v2, :cond_1

    .line 260
    const-string v2, "VpnSettings"

    const-string v3, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 264
    .restart local p3
    :cond_1
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 267
    .local v0, preference:Landroid/preference/Preference;
    instance-of v2, v0, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_0

    .line 268
    check-cast v0, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    .end local v0           #preference:Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    .line 269
    .local v1, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    .line 270
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 271
    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 272
    invoke-interface {p1, v4, v6, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 105
    const v0, 0x7f100008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 106
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    .line 225
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 138
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 123
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    .local v0, millis:J
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_1

    .line 127
    :cond_0
    new-instance v3, Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v2}, Lcom/android/OriginalSettings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    .line 129
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 130
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->show()V

    goto :goto_0

    .line 134
    .end local v0           #millis:J
    :pswitch_1
    invoke-static {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings$LockdownConfigFragment;->show(Lcom/android/OriginalSettings/vpn2/VpnSettings;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x7f0d0277
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 210
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 212
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->dismiss()V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 219
    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    .line 308
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    .line 309
    const-string v3, "VpnSettings"

    const-string v4, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local p1
    :goto_0
    return v7

    .line 313
    .restart local p1
    :cond_0
    instance-of v3, p1, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    if-eqz v3, :cond_2

    .line 314
    check-cast p1, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 315
    .local v2, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 318
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v3

    .line 324
    :cond_1
    new-instance v3, Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v2, v5}, Lcom/android/OriginalSettings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    .line 334
    .end local v2           #profile:Lcom/android/internal/net/VpnProfile;
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 335
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->show()V

    goto :goto_0

    .line 327
    .restart local p1
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 328
    .local v0, millis:J
    :goto_2
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 329
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_2

    .line 331
    :cond_3
    new-instance v3, Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v7}, Lcom/android/OriginalSettings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 113
    const-string v0, "persist.radio.imsregrequired"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const v0, 0x7f0d0278

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 116
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 155
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 158
    iget-object v7, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v7

    sget-object v8, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v7, v8, :cond_2

    .line 159
    iget-boolean v7, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v7, :cond_1

    .line 161
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 166
    :goto_0
    iget-boolean v7, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    iput-boolean v6, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUnlocking:Z

    .line 203
    :goto_1
    return-void

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->finishFragment()V

    goto :goto_0

    .line 171
    :cond_2
    iput-boolean v6, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUnlocking:Z

    .line 176
    iget-object v7, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 177
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 179
    .local v1, group:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 180
    .local v0, context:Landroid/content/Context;
    iget-object v7, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-array v8, v6, [I

    invoke-static {v7, v8}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v5

    .line 181
    .local v5, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 182
    .local v4, profile:Lcom/android/internal/net/VpnProfile;
    new-instance v3, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    invoke-direct {v3, v0, v4}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;-><init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 183
    .local v3, pref:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {v3, p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 184
    iget-object v7, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v8, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 190
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #group:Landroid/preference/PreferenceGroup;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pref:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    .end local v4           #profile:Lcom/android/internal/net/VpnProfile;
    .end local v5           #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    :cond_3
    iget-object v7, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    if-eqz v7, :cond_4

    .line 191
    iget-object v7, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v7, p0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 192
    iget-object v7, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v7}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->show()V

    .line 196
    :cond_4
    iget-object v7, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v7, :cond_5

    .line 197
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 199
    :cond_5
    iget-object v7, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 146
    .local v0, profile:Lcom/android/internal/net/VpnProfile;
    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 148
    const-string v1, "VpnEditing"

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->isEditing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    .end local v0           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_0
    return-void
.end method
