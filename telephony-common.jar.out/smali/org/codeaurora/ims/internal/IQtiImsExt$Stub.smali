.class public abstract Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;
.super Landroid/os/Binder;
.source "IQtiImsExt.java"

# interfaces
.implements Lorg/codeaurora/ims/internal/IQtiImsExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/internal/IQtiImsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.ims.internal.IQtiImsExt"

.field static final TRANSACTION_getCallForwardUncondTimer:I = 0x2

.field static final TRANSACTION_getImsPhoneId:I = 0x8

.field static final TRANSACTION_getPacketCount:I = 0x3

.field static final TRANSACTION_getPacketErrorCount:I = 0x4

.field static final TRANSACTION_registerForViceRefreshInfo:I = 0x6

.field static final TRANSACTION_sendCallDeflectRequest:I = 0x5

.field static final TRANSACTION_sendCallTransferRequest:I = 0x7

.field static final TRANSACTION_setCallForwardUncondTimer:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/ims/internal/IQtiImsExt;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lorg/codeaurora/ims/internal/IQtiImsExt;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 144
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 46
    :sswitch_0
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v2, 0x1

    return v2

    .line 51
    :sswitch_1
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 57
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 59
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 61
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 63
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 65
    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 67
    .local v9, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 69
    .local v10, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v11

    .local v11, "_arg8":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v2, p0

    .line 70
    invoke-virtual/range {v2 .. v11}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 71
    const/4 v2, 0x1

    return v2

    .line 75
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":I
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_2
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 81
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v15

    .line 82
    .local v15, "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v15}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 83
    const/4 v2, 0x1

    return v2

    .line 87
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v15    # "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_3
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v12

    .line 90
    .local v12, "_arg0":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 91
    const/4 v2, 0x1

    return v2

    .line 95
    .end local v12    # "_arg0":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_4
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v12

    .line 98
    .restart local v12    # "_arg0":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 99
    const/4 v2, 0x1

    return v2

    .line 103
    .end local v12    # "_arg0":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_5
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 109
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v15

    .line 110
    .restart local v15    # "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v15}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->sendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 111
    const/4 v2, 0x1

    return v2

    .line 115
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_6
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v12

    .line 118
    .restart local v12    # "_arg0":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->registerForViceRefreshInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 119
    const/4 v2, 0x1

    return v2

    .line 123
    .end local v12    # "_arg0":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_7
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 127
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 129
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 131
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v16

    .line 132
    .local v16, "_arg3":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v4, v14, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->sendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 133
    const/4 v2, 0x1

    return v2

    .line 137
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_8
    const-string/jumbo v2, "org.codeaurora.ims.internal.IQtiImsExt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getImsPhoneId()I

    move-result v17

    .line 139
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v2, 0x1

    return v2

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
