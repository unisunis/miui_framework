.class public final Landroid/media/AmrInputStream;
.super Ljava/io/InputStream;
.source "AmrInputStream.java"


# static fields
.field private static final SAMPLES_PER_FRAME:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "AmrInputStream"


# instance fields
.field private final mBuf:[B

.field private mBufIn:I

.field private mBufOut:I

.field private mGae:I

.field private mInputStream:Ljava/io/InputStream;

.field private mOneByte:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "inputStream"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x140

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iput v1, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iput v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    iput-object p1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-static {}, Landroid/media/AmrInputStream;->GsmAmrEncoderNew()I

    move-result v0

    iput v0, p0, Landroid/media/AmrInputStream;->mGae:I

    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    invoke-static {v0}, Landroid/media/AmrInputStream;->GsmAmrEncoderInitialize(I)V

    return-void
.end method

.method private static native GsmAmrEncoderCleanup(I)V
.end method

.method private static native GsmAmrEncoderDelete(I)V
.end method

.method private static native GsmAmrEncoderEncode(I[BI[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native GsmAmrEncoderInitialize(I)V
.end method

.method private static native GsmAmrEncoderNew()I
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_2
    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_22

    :cond_b
    iput-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    :try_start_d
    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v0, :cond_16

    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    invoke-static {v0}, Landroid/media/AmrInputStream;->GsmAmrEncoderCleanup(I)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_4f

    :cond_16
    :try_start_16
    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v0, :cond_1f

    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    invoke-static {v0}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(I)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_60

    :cond_1f
    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    return-void

    :catchall_22
    move-exception v0

    iput-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    :try_start_25
    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v1, :cond_2e

    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    invoke-static {v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderCleanup(I)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_3a

    :cond_2e
    :try_start_2e
    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v1, :cond_37

    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    invoke-static {v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(I)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_4b

    :cond_37
    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    :catchall_3a
    move-exception v0

    :try_start_3b
    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v1, :cond_44

    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    invoke-static {v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(I)V
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_47

    :cond_44
    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    :catchall_47
    move-exception v0

    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    :catchall_4b
    move-exception v0

    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    :catchall_4f
    move-exception v0

    :try_start_50
    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v1, :cond_59

    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    invoke-static {v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(I)V
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_5c

    :cond_59
    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    :catchall_5c
    move-exception v0

    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    :catchall_60
    move-exception v0

    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/media/AmrInputStream;->close()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to close AmrInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    .local v0, rtn:I
    if-ne v0, v3, :cond_11

    iget-object v1, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    :goto_10
    return v1

    :cond_11
    const/4 v1, -0x1

    goto :goto_10
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 11
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x0

    iget v3, p0, Landroid/media/AmrInputStream;->mGae:I

    if-nez v3, :cond_f

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "not open"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    iget v3, p0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v4, p0, Landroid/media/AmrInputStream;->mBufIn:I

    if-lt v3, v4, :cond_39

    iput v6, p0, Landroid/media/AmrInputStream;->mBufOut:I

    iput v6, p0, Landroid/media/AmrInputStream;->mBufIn:I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    const/16 v3, 0x140

    if-ge v0, v3, :cond_2d

    iget-object v3, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v4, p0, Landroid/media/AmrInputStream;->mBuf:[B

    rsub-int v5, v0, 0x140

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, n:I
    if-ne v1, v2, :cond_2b

    .end local v0           #i:I
    .end local v1           #n:I
    :goto_2a
    return v2

    .restart local v0       #i:I
    .restart local v1       #n:I
    :cond_2b
    add-int/2addr v0, v1

    goto :goto_1a

    .end local v1           #n:I
    :cond_2d
    iget v2, p0, Landroid/media/AmrInputStream;->mGae:I

    iget-object v3, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iget-object v4, p0, Landroid/media/AmrInputStream;->mBuf:[B

    invoke-static {v2, v3, v6, v4, v6}, Landroid/media/AmrInputStream;->GsmAmrEncoderEncode(I[BI[BI)I

    move-result v2

    iput v2, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .end local v0           #i:I
    :cond_39
    iget v2, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v3, p0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int/2addr v2, v3

    if-le p3, v2, :cond_46

    iget v2, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v3, p0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int p3, v2, v3

    :cond_46
    iget-object v2, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iget v3, p0, Landroid/media/AmrInputStream;->mBufOut:I

    invoke-static {v2, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Landroid/media/AmrInputStream;->mBufOut:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/media/AmrInputStream;->mBufOut:I

    move v2, p3

    goto :goto_2a
.end method
