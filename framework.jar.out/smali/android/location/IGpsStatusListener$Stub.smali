.class public abstract Landroid/location/IGpsStatusListener$Stub;
.super Landroid/os/Binder;
.source "IGpsStatusListener.java"

# interfaces
.implements Landroid/location/IGpsStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGpsStatusListener"

.field static final TRANSACTION_onFirstFix:I = 0x3

.field static final TRANSACTION_onGpsStarted:I = 0x1

.field static final TRANSACTION_onGpsStopped:I = 0x2

.field static final TRANSACTION_onNmeaReceived:I = 0x5

.field static final TRANSACTION_onSvStatusChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.location.IGpsStatusListener"

    invoke-virtual {p0, p0, v0}, Landroid/location/IGpsStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.location.IGpsStatusListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/IGpsStatusListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/location/IGpsStatusListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/location/IGpsStatusListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IGpsStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 103
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 45
    :sswitch_0
    const-string/jumbo v2, "android.location.IGpsStatusListener"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v2, 0x1

    return v2

    .line 50
    :sswitch_1
    const-string/jumbo v2, "android.location.IGpsStatusListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/location/IGpsStatusListener$Stub;->onGpsStarted()V

    .line 52
    const/4 v2, 0x1

    return v2

    .line 56
    :sswitch_2
    const-string/jumbo v2, "android.location.IGpsStatusListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/location/IGpsStatusListener$Stub;->onGpsStopped()V

    .line 58
    const/4 v2, 0x1

    return v2

    .line 62
    :sswitch_3
    const-string/jumbo v2, "android.location.IGpsStatusListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 65
    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Landroid/location/IGpsStatusListener$Stub;->onFirstFix(I)V

    .line 66
    const/4 v2, 0x1

    return v2

    .line 70
    .end local v3    # "_arg0":I
    :sswitch_4
    const-string/jumbo v2, "android.location.IGpsStatusListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 74
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 76
    .local v4, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v5

    .line 78
    .local v5, "_arg2":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v6

    .line 80
    .local v6, "_arg3":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v7

    .line 82
    .local v7, "_arg4":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 84
    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 86
    .local v9, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 88
    .local v10, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v11

    .local v11, "_arg8":[J
    move-object v2, p0

    .line 89
    invoke-virtual/range {v2 .. v11}, Landroid/location/IGpsStatusListener$Stub;->onSvStatusChanged(I[I[F[F[FIII[J)V

    .line 90
    const/4 v2, 0x1

    return v2

    .line 94
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":[I
    .end local v5    # "_arg2":[F
    .end local v6    # "_arg3":[F
    .end local v7    # "_arg4":[F
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":I
    .end local v10    # "_arg7":I
    .end local v11    # "_arg8":[J
    :sswitch_5
    const-string/jumbo v2, "android.location.IGpsStatusListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 98
    .local v12, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 99
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v12, v13, v14}, Landroid/location/IGpsStatusListener$Stub;->onNmeaReceived(JLjava/lang/String;)V

    .line 100
    const/4 v2, 0x1

    return v2

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
