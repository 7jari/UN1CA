.class public Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;
.super Ljava/lang/Object;
.source "r8-map-id-4b5027a4fb45d5ddad4b3b2dde3e35b42455a60f050ae5ccbec049571c159b5e"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShootingModeZoomController"


# instance fields
.field protected final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field protected final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field protected mEngine:Lcom/sec/android/app/camera/engine/interfaces/Engine;

.field protected mRecordingManager:Lcom/sec/android/app/camera/engine/interfaces/RecordingManager;

.field protected mRecoveryLensType:I

.field protected final mShootingMode:I

.field private final mZoomAvailable:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mRecoveryLensType:I

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 4
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mZoomAvailable:Z

    .line 6
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mShootingMode:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;ZI)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 8
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mRecoveryLensType:I

    .line 9
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 10
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 11
    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mZoomAvailable:Z

    .line 12
    iput p3, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mShootingMode:I

    return-void
.end method

.method private makeFilteredLensListInRecoveryMode(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;)Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;
    .locals 6

    .line 1
    const-string v0, "ShootingModeZoomController"

    .line 2
    .line 3
    const-string v1, "makeFilteredLensListInRecoveryMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;->getList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->createLensDataHolder()Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/sec/android/app/camera/interfaces/ZoomManager$LensData;

    .line 35
    .line 36
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ZoomManager$LensData;->getCommandId()Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, La3/u;->d(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x4

    .line 45
    if-eq v2, v3, :cond_0

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    if-ne v2, v3, :cond_1

    .line 49
    .line 50
    sget-object v2, LO1/d;->SUPPORT_DIGITAL_TELE_ZOOM:LO1/d;

    .line 51
    .line 52
    invoke-static {v2}, LC/e;->R(LO1/d;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 59
    .line 60
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ZoomManager$LensData;->getCommandId()Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, La3/u;->d(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mShootingMode:I

    .line 75
    .line 76
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 77
    .line 78
    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()Lcom/sec/android/app/camera/interfaces/CameraId;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/4 v5, 0x1

    .line 83
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackLensTypeByCameraId(ILcom/sec/android/app/camera/interfaces/CameraId;Z)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ne v2, v3, :cond_0

    .line 88
    .line 89
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ZoomManager$LensData;->getCommandId()Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ZoomManager$LensData;->getZoomValue()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;->add(Lcom/sec/android/app/camera/interfaces/CommandId;I)V

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_2
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ZoomManager$LensData;->getCommandId()Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ZoomManager$LensData;->getZoomValue()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;->add(Lcom/sec/android/app/camera/interfaces/CommandId;I)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    return-object v0
.end method


# virtual methods
.method public getMinZoomLevel(Lcom/sec/android/app/camera/interfaces/CommandId;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {p1}, La3/u;->d(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraRecoveryMode()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-interface {v0, v1, p1, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getCameraId(IIZ)Lcom/sec/android/app/camera/interfaces/CameraId;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mEngine:Lcom/sec/android/app/camera/engine/interfaces/Engine;

    .line 28
    .line 29
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/engine/interfaces/Engine;->getMinZoomLevel(Lcom/sec/android/app/camera/interfaces/CameraId;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public getSecondTeleZoomShortcutLevel()I
    .locals 1

    .line 1
    sget-object p0, LO1/i;->BACK_SECOND_TELE_CAMERA_ZOOM_LEVEL:LO1/i;

    .line 2
    .line 3
    invoke-static {p0}, LC/e;->M(LO1/i;)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 8
    .line 9
    mul-float/2addr p0, v0

    .line 10
    float-to-int p0, p0

    .line 11
    return p0
.end method

.method public getTeleZoomShortcutLevel()I
    .locals 1

    .line 1
    sget-object p0, LO1/d;->SUPPORT_DIGITAL_TELE_ZOOM:LO1/d;

    .line 2
    .line 3
    invoke-static {p0}, LC/e;->R(LO1/d;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x7d0

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    sget-object p0, LO1/i;->BACK_TELE_CAMERA_ZOOM_LEVEL:LO1/i;

    .line 13
    .line 14
    invoke-static {p0}, LC/e;->M(LO1/i;)F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 19
    .line 20
    mul-float/2addr p0, v0

    .line 21
    float-to-int p0, p0

    .line 22
    return p0
.end method

.method public getWideZoomShortcutLevel()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraRecoveryMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mEngine:Lcom/sec/android/app/camera/engine/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraId;->BACK_WIDE:Lcom/sec/android/app/camera/interfaces/CameraId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/engine/interfaces/Engine;->getMinZoomLevel(Lcom/sec/android/app/camera/interfaces/CameraId;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object v0, LO1/d;->SUPPORT_SEAMLESS_ZOOM:LO1/d;

    invoke-static {v0}, LC/e;->R(LO1/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mEngine:Lcom/sec/android/app/camera/engine/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/engine/interfaces/Engine;->getMinZoomLevel()I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mEngine:Lcom/sec/android/app/camera/engine/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraId;->BACK_WIDE:Lcom/sec/android/app/camera/interfaces/CameraId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/engine/interfaces/Engine;->getMinZoomLevel(Lcom/sec/android/app/camera/interfaces/CameraId;)I

    move-result p0

    :goto_0
    # The camera HAL does not expose samsung.android.scaler.availableMinDigitalZoom, so the
    # "wide"/0.5x lens button computes to 1.0x and gets dropped from the zoom pill. Clamp the
    # wide zoom shortcut to 0.5x (500) whenever the HAL reports no sub-1.0x zoom range.
    const/16 v0, 0x3e8

    if-lt p0, v0, :goto_1

    const/16 p0, 0x1f4

    :goto_1
    return p0
.end method

.method public getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public handleRefreshZoomPropertyInRecoveryMode(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;",
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomSupportUi;",
            ">;",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->createBuilder()Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->setZoomCategory(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;)Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->setZoomSupportUiSet(Ljava/util/EnumSet;)Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2, p3}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->setZoomPositionType(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;)Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2, p4}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->setZoomLensDataHolder(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;)Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2, p5}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->setZoomAvailabilityChecker(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;)Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 26
    .line 27
    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p2}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->build()Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomProperty;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->refreshProperty(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomProperty;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p5, "handleRefreshZoomPropertyInRecoveryMode ZoomCategory : "

    .line 48
    .line 49
    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    const-string p5, "ShootingModeZoomController"

    .line 60
    .line 61
    invoke-static {p5, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p4}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->makeFilteredLensListInRecoveryMode(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;)Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {p2, p3}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->setZoomLensDataHolder(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;)Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    .line 69
    .line 70
    .line 71
    sget-object p4, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->LEVEL:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    .line 72
    .line 73
    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_1

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p2}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->build()Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomProperty;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->refreshProperty(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomProperty;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    sget-object p1, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->LENS_AND_LEVEL:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->setZoomCategory(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;)Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    .line 94
    .line 95
    .line 96
    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;->getList()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget p3, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mShootingMode:I

    .line 101
    .line 102
    invoke-static {p3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackCameraLensKey(I)Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result p4

    .line 114
    if-eqz p4, :cond_3

    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p4

    .line 120
    check-cast p4, Lcom/sec/android/app/camera/interfaces/ZoomManager$LensData;

    .line 121
    .line 122
    invoke-interface {p4}, Lcom/sec/android/app/camera/interfaces/ZoomManager$LensData;->getCommandId()Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 123
    .line 124
    .line 125
    move-result-object p4

    .line 126
    invoke-static {p4}, La3/u;->d(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mShootingMode:I

    .line 131
    .line 132
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 133
    .line 134
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()Lcom/sec/android/app/camera/interfaces/CameraId;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const/4 v3, 0x1

    .line 139
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackLensTypeByCameraId(ILcom/sec/android/app/camera/interfaces/CameraId;Z)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v3, "handleRefreshZoomPropertyInRecoveryMode lensKey : "

    .line 146
    .line 147
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v3, ", lensTypeValue : "

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v3, ", settingValue "

    .line 162
    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v3, ",zoomLensData "

    .line 170
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p4, ", cameraId "

    .line 178
    .line 179
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 183
    .line 184
    invoke-interface {p4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()Lcom/sec/android/app/camera/interfaces/CameraId;

    .line 185
    .line 186
    .line 187
    move-result-object p4

    .line 188
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p4

    .line 195
    invoke-static {p5, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    if-ne v0, v1, :cond_2

    .line 199
    .line 200
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mEngine:Lcom/sec/android/app/camera/engine/interfaces/Engine;

    .line 201
    .line 202
    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 203
    .line 204
    invoke-interface {p4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()Lcom/sec/android/app/camera/interfaces/CameraId;

    .line 205
    .line 206
    .line 207
    move-result-object p4

    .line 208
    invoke-interface {p1, p4}, Lcom/sec/android/app/camera/engine/interfaces/Engine;->getMinZoomLevel(Lcom/sec/android/app/camera/interfaces/CameraId;)I

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 213
    .line 214
    invoke-interface {p4, p3, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 215
    .line 216
    .line 217
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 218
    .line 219
    sget-object p4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 220
    .line 221
    invoke-interface {p3, p4, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 222
    .line 223
    .line 224
    new-instance p3, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string p4, "handleRefreshZoomPropertyInRecoveryMode : setZoomValue"

    .line 227
    .line 228
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {p5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-virtual {p2}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->build()Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomProperty;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->refreshProperty(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomProperty;)V

    .line 250
    .line 251
    .line 252
    :cond_3
    return-void
.end method

.method public hideZoomButton()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->hideZoomButton()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public isRecordingInProgress()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mRecordingManager:Lcom/sec/android/app/camera/engine/interfaces/RecordingManager;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/sec/android/app/camera/engine/interfaces/RecordingManager;->isRecordingInProgress()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public isVideoResolutionSupported(ILcom/sec/android/app/camera/interfaces/CameraId;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mEngine:Lcom/sec/android/app/camera/engine/interfaces/Engine;

    .line 2
    .line 3
    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/engine/interfaces/Engine;->getCapability(Lcom/sec/android/app/camera/interfaces/CameraId;)Lcom/sec/android/app/camera/engine/interfaces/Capability;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/engine/interfaces/Capability;->isVideoResolutionSupported(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "isVideoResolutionSupported : resolutionId="

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ", cameraId="

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ", isSupported="

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "ShootingModeZoomController"

    .line 46
    .line 47
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return p0
.end method

.method public isZoomAvailable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mZoomAvailable:Z

    .line 2
    .line 3
    return p0
.end method

.method public onActivate(Lcom/sec/android/app/camera/engine/interfaces/Engine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mEngine:Lcom/sec/android/app/camera/engine/interfaces/Engine;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/sec/android/app/camera/engine/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/engine/interfaces/RecordingManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mRecordingManager:Lcom/sec/android/app/camera/engine/interfaces/RecordingManager;

    .line 8
    .line 9
    return-void
.end method

.method public refreshZoomProperty()V
    .locals 2

    .line 10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->createBuilder()Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->createLensDataHolder()Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->setZoomLensDataHolder(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;)Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->build()Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomProperty;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->refreshProperty(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomProperty;)V

    return-void
.end method

.method public refreshZoomProperty(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;",
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomSupportUi;",
            ">;",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->createLensDataHolder()Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->refreshZoomProperty(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;)V

    return-void
.end method

.method public refreshZoomProperty(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;",
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomSupportUi;",
            ">;",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraRecoveryMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->handleRefreshZoomPropertyInRecoveryMode(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->createBuilder()Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->setZoomCategory(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;)Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->setZoomSupportUiSet(Ljava/util/EnumSet;)Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->setZoomPositionType(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;)Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p4}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->setZoomLensDataHolder(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;)Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p5}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->setZoomAvailabilityChecker(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;)Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ZoomPropertyData$Builder;->build()Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomProperty;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->refreshProperty(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomProperty;)V

    return-void
.end method

.method public setRecoveryCameraId(Lcom/sec/android/app/camera/interfaces/CameraId;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mShootingMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isCameraIdSupported(ILcom/sec/android/app/camera/interfaces/CameraId;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/high16 v2, -0x80000000

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mShootingMode:I

    .line 15
    .line 16
    invoke-static {v0, p1, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackLensTypeByCameraId(ILcom/sec/android/app/camera/interfaces/CameraId;Z)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mRecoveryLensType:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mRecoveryLensType:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mRecoveryLensType:I

    .line 27
    .line 28
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "setRecoveryCameraId : recoveryLensType "

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mRecoveryLensType:I

    .line 36
    .line 37
    const-string v0, "ShootingModeZoomController"

    .line 38
    .line 39
    invoke-static {p1, v0, p0}, Landroidx/compose/ui/text/input/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public updateLensTypeInRecoveryMode()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraRecoveryManager()Lcom/sec/android/app/camera/interfaces/CameraRecoveryManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraRecoveryManager$State;->DEVICE_ERROR:Lcom/sec/android/app/camera/interfaces/CameraRecoveryManager$State;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraRecoveryManager;->isCurrentState(Lcom/sec/android/app/camera/interfaces/CameraRecoveryManager$State;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mRecoveryLensType:I

    .line 16
    .line 17
    const/high16 v1, -0x80000000

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 30
    .line 31
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mShootingMode:I

    .line 32
    .line 33
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackCameraLensKey(I)Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->mRecoveryLensType:I

    .line 38
    .line 39
    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
