.class final Lcom/android/camera/VideoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoModule;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 2717
    iput-object p1, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2718
    iput-object p2, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 2719
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v2, 0x0

    .line 2723
    const-string v0, "CAM_VideoModule"

    const-string v1, "onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    iget-object v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    #setter for: Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z
    invoke-static {v0, v2}, Lcom/android/camera/VideoModule;->access$2002(Lcom/android/camera/VideoModule;Z)Z

    .line 2725
    iget-object v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-virtual {v0, v2}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 2726
    iget-object v0, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    iget-object v1, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    #calls: Lcom/android/camera/VideoModule;->storeImage([BLandroid/location/Location;)V
    invoke-static {v0, p1, v1}, Lcom/android/camera/VideoModule;->access$2100(Lcom/android/camera/VideoModule;[BLandroid/location/Location;)V

    .line 2727
    return-void
.end method
