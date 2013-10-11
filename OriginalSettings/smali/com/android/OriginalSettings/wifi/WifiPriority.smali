.class public Lcom/android/OriginalSettings/wifi/WifiPriority;
.super Landroid/app/ListFragment;
.source "WifiPriority.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wifi/WifiPriority$WifiPriorityAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/OriginalSettings/wifi/WifiPriority$WifiPriorityAdapter;

.field private final mDropListener:Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor$DropListener;

.field private mNetworksListView:Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 41
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiPriority$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiPriority$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiPriority;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPriority;->mDropListener:Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor$DropListener;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiPriority;)Lcom/android/OriginalSettings/wifi/WifiPriority$WifiPriorityAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPriority;->mAdapter:Lcom/android/OriginalSettings/wifi/WifiPriority$WifiPriorityAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/WifiPriority;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPriority;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/WifiPriority;)Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPriority;->mNetworksListView:Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPriority;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    .local v0, ctx:Landroid/content/Context;
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiPriority;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 87
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPriority;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiPriority;->mNetworksListView:Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;

    .line 88
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiPriority;->mNetworksListView:Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiPriority;->mDropListener:Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor$DropListener;

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;->setDropListener(Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor$DropListener;)V

    .line 89
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiPriority$WifiPriorityAdapter;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiPriority;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/OriginalSettings/wifi/WifiPriority$WifiPriorityAdapter;-><init>(Lcom/android/OriginalSettings/wifi/WifiPriority;Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiPriority;->mAdapter:Lcom/android/OriginalSettings/wifi/WifiPriority$WifiPriorityAdapter;

    .line 90
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiPriority;->mAdapter:Lcom/android/OriginalSettings/wifi/WifiPriority$WifiPriorityAdapter;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiPriority;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 77
    const v0, 0x7f0400bf

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPriority;->mNetworksListView:Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;->setDropListener(Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor$DropListener;)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiPriority;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 98
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPriority;->mAdapter:Lcom/android/OriginalSettings/wifi/WifiPriority$WifiPriorityAdapter;

    #calls: Lcom/android/OriginalSettings/wifi/WifiPriority$WifiPriorityAdapter;->reloadNetworks()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiPriority$WifiPriorityAdapter;->access$200(Lcom/android/OriginalSettings/wifi/WifiPriority$WifiPriorityAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPriority;->mNetworksListView:Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;->invalidateViews()V

    .line 107
    return-void
.end method
