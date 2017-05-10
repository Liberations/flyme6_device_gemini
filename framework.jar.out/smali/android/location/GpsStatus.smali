.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$SatelliteIterator;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$1;
    }
.end annotation


# static fields
.field private static final BDS_SV_PRN_MAX:I = 0xeb

.field private static final BDS_SV_PRN_MIN:I = 0xc9

.field private static final BDS_USED_FOR_FIX_MASK:I = 0x1

.field private static final DEBUG:Z

.field private static final GAL_SV_PRN_MAX:I = 0x150

.field private static final GAL_SV_PRN_MIN:I = 0x12d

.field private static final GAL_USED_FOR_FIX_MASK:I = 0x2

.field private static final GLONASS_SV_PRN_MAX:I = 0x60

.field private static final GLONASS_SV_PRN_MIN:I = 0x41

.field private static final GLONASS_USED_FOR_FIX_MASK:I = 0x0

.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final GPS_SV_PRN_MAX:I = 0x20

.field private static final GPS_SV_PRN_MIN:I = 0x1

.field private static final NUM_SATELLITES:I = 0x150

.field private static final TAG:Ljava/lang/String; = "GpsStatus"

.field private static final VERBOSE:Z


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private final mSatellites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToFirstFix:I


# direct methods
.method static synthetic -get0(Landroid/location/GpsStatus;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "GpsStatus"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/location/GpsStatus;->DEBUG:Z

    .line 34
    const-string/jumbo v0, "GpsStatus"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/location/GpsStatus;->VERBOSE:Z

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Landroid/location/GpsStatus$1;

    invoke-direct {v0, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 155
    return-void
.end method

.method private clearSatellites()V
    .locals 4

    .prologue
    .line 281
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 282
    .local v2, "satellitesCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 283
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    .line 284
    .local v1, "satellite":Landroid/location/GpsSatellite;
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/location/GpsSatellite;->mValid:Z

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "satellite":Landroid/location/GpsSatellite;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxSatellites()I
    .locals 1

    .prologue
    .line 277
    const/16 v0, 0x150

    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method declared-synchronized setStatus(I[I[F[F[FIII[J)V
    .locals 8
    .param p1, "svCount"    # I
    .param p2, "prns"    # [I
    .param p3, "snrs"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "ephemerisMask"    # I
    .param p7, "almanacMask"    # I
    .param p8, "usedInFixMask"    # I
    .param p9, "gnssUsedInFixMask"    # [J

    .prologue
    monitor-enter p0

    .line 166
    :try_start_0
    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    .line 167
    const-string/jumbo v4, "GpsStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received SV Status Update: SV count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string/jumbo v4, "GpsStatus"

    const-string/jumbo v5, "Svids: "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_c

    .line 170
    aget v1, p2, v0

    .line 171
    .local v1, "prn":I
    if-lez v1, :cond_2

    const/16 v4, 0x150

    if-gt v1, v4, :cond_2

    .line 172
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 173
    .local v3, "satellite":Landroid/location/GpsSatellite;
    if-nez v3, :cond_0

    .line 174
    new-instance v3, Landroid/location/GpsSatellite;

    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    invoke-direct {v3, v1}, Landroid/location/GpsSatellite;-><init>(I)V

    .line 175
    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mValid:Z

    .line 179
    aget v4, p3, v0

    iput v4, v3, Landroid/location/GpsSatellite;->mSnr:F

    .line 180
    aget v4, p4, v0

    iput v4, v3, Landroid/location/GpsSatellite;->mElevation:F

    .line 181
    aget v4, p5, v0

    iput v4, v3, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 183
    const/16 v4, 0x20

    if-gt v1, v4, :cond_6

    .line 184
    add-int/lit8 v4, v1, -0x1

    const/4 v5, 0x1

    shl-int v2, v5, v4

    .line 185
    .local v2, "prnShift":I
    and-int v4, p6, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 186
    and-int v4, p7, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 187
    and-int v4, p8, v2

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z

    .line 199
    .end local v2    # "prnShift":I
    :cond_1
    :goto_4
    const-string/jumbo v4, "GpsStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .restart local v2    # "prnShift":I
    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 186
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 187
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 188
    .end local v2    # "prnShift":I
    :cond_6
    const/16 v4, 0x41

    if-lt v1, v4, :cond_8

    const/16 v4, 0x60

    if-gt v1, v4, :cond_8

    .line 189
    add-int/lit8 v4, v1, -0x41

    const/4 v5, 0x1

    shl-int v2, v5, v4

    .line 190
    .restart local v2    # "prnShift":I
    const/4 v4, 0x0

    aget-wide v4, p9, v4

    int-to-long v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_5
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .end local v0    # "i":I
    .end local v1    # "prn":I
    .end local v2    # "prnShift":I
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0    # "i":I
    .restart local v1    # "prn":I
    .restart local v2    # "prnShift":I
    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 191
    .end local v2    # "prnShift":I
    :cond_8
    const/16 v4, 0xc9

    if-lt v1, v4, :cond_a

    const/16 v4, 0xeb

    if-gt v1, v4, :cond_a

    .line 192
    add-int/lit16 v4, v1, -0xc9

    const/4 v5, 0x1

    shl-int v2, v5, v4

    .line 193
    .restart local v2    # "prnShift":I
    const/4 v4, 0x1

    :try_start_1
    aget-wide v4, p9, v4

    int-to-long v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    :goto_6
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_6

    .line 195
    .end local v2    # "prnShift":I
    :cond_a
    const/16 v4, 0x12d

    if-lt v1, v4, :cond_1

    const/16 v4, 0x150

    if-gt v1, v4, :cond_1

    .line 196
    add-int/lit16 v4, v1, -0x12d

    const/4 v5, 0x1

    shl-int v2, v5, v4

    .line 197
    .restart local v2    # "prnShift":I
    const/4 v4, 0x2

    aget-wide v4, p9, v4

    int-to-long v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_7
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    goto :goto_7

    .end local v1    # "prn":I
    .end local v2    # "prnShift":I
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_c
    monitor-exit p0

    .line 165
    return-void
.end method

.method setStatus(Landroid/location/GpsStatus;)V
    .locals 9
    .param p1, "status"    # Landroid/location/GpsStatus;

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v8

    iput v8, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 212
    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    .line 214
    iget-object v3, p1, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    .line 215
    .local v3, "otherSatellites":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/location/GpsSatellite;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 216
    .local v4, "otherSatellitesCount":I
    const/4 v6, 0x0

    .line 219
    .local v6, "satelliteIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 220
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    .line 221
    .local v1, "otherSatellite":Landroid/location/GpsSatellite;
    invoke-virtual {v1}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v2

    .line 223
    .local v2, "otherSatellitePrn":I
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 224
    .local v7, "satellitesCount":I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 225
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/GpsSatellite;

    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v8

    if-ge v8, v2, :cond_0

    .line 226
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 229
    :cond_0
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 230
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/GpsSatellite;

    .line 231
    .local v5, "satellite":Landroid/location/GpsSatellite;
    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v8

    if-ne v8, v2, :cond_1

    .line 232
    invoke-virtual {v5, v1}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    .line 219
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    new-instance v5, Landroid/location/GpsSatellite;

    .end local v5    # "satellite":Landroid/location/GpsSatellite;
    invoke-direct {v5, v2}, Landroid/location/GpsSatellite;-><init>(I)V

    .line 235
    .restart local v5    # "satellite":Landroid/location/GpsSatellite;
    invoke-virtual {v5, v1}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    .line 236
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 239
    .end local v5    # "satellite":Landroid/location/GpsSatellite;
    :cond_2
    new-instance v5, Landroid/location/GpsSatellite;

    invoke-direct {v5, v2}, Landroid/location/GpsSatellite;-><init>(I)V

    .line 240
    .restart local v5    # "satellite":Landroid/location/GpsSatellite;
    invoke-virtual {v5, v1}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    .line 241
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8, v2, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_2

    .line 210
    .end local v1    # "otherSatellite":Landroid/location/GpsSatellite;
    .end local v2    # "otherSatellitePrn":I
    .end local v5    # "satellite":Landroid/location/GpsSatellite;
    .end local v7    # "satellitesCount":I
    :cond_3
    return-void
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .param p1, "ttff"    # I

    .prologue
    .line 247
    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 246
    return-void
.end method
