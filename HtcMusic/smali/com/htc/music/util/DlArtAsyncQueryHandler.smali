.class public abstract Lcom/htc/music/util/DlArtAsyncQueryHandler;
.super Landroid/os/Handler;
.source "DlArtAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;,
        Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;
    }
.end annotation


# static fields
.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[DlArtAsyncQuery]"

.field private static mDlColumns:[Ljava/lang/String;

.field private static final mTraceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field private mAlbumIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mIsEnhancerExist:Z

.field private mJoinAlbumArt:Z

.field private mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "dl_album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dl_album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dl_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumns:[Ljava/lang/String;

    .line 319
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;ZZ)V
    .locals 3
    .parameter "cr"
    .parameter "joinAlbumArt"
    .parameter "enhancerExist"

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mAlbumIdSet:Ljava/util/HashSet;

    .line 65
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 67
    iput-boolean v2, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mJoinAlbumArt:Z

    .line 69
    iput-boolean v2, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mIsEnhancerExist:Z

    .line 267
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 268
    iput-boolean p2, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mJoinAlbumArt:Z

    .line 269
    const-class v2, Lcom/htc/music/util/DlArtAsyncQueryHandler;

    monitor-enter v2

    .line 270
    :try_start_0
    sget-object v1, Lcom/htc/music/util/DlArtAsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 271
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncQueryWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 274
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/htc/music/util/DlArtAsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 276
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    sget-object v1, Lcom/htc/music/util/DlArtAsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 278
    iput-boolean p3, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mIsEnhancerExist:Z

    .line 279
    return-void

    .line 276
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/htc/music/util/DlArtAsyncQueryHandler;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mAlbumIdSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/util/DlArtAsyncQueryHandler;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumns:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/util/DlArtAsyncQueryHandler;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/util/DlArtAsyncQueryHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mJoinAlbumArt:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/util/DlArtAsyncQueryHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$600()Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final cancelOperation(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 315
    new-instance v0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerHandler;-><init>(Lcom/htc/music/util/DlArtAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 421
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;

    .line 423
    .local v0, args:Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;
    const-string v3, "[DlArtAsyncQuery]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsyncQueryHandler.handleMessage: msg.what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg.arg1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget v2, p1, Landroid/os/Message;->what:I

    .line 427
    .local v2, token:I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 430
    .local v1, event:I
    packed-switch v1, :pswitch_data_0

    .line 441
    :goto_0
    return-void

    .line 433
    :pswitch_0
    const/4 v3, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 435
    sget-object v3, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_0
    iget-object v4, v0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 417
    return-void
.end method

.method protected final setDebugTrace(Landroid/database/Cursor;Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;)V
    .locals 3
    .parameter "cursor"
    .parameter "args"

    .prologue
    .line 334
    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 335
    sget-object v1, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 336
    .local v0, elem:[Ljava/lang/StackTraceElement;
    if-eqz p1, :cond_0

    .line 337
    instance-of v1, p1, Landroid/database/HtcIfCursorWrapper;

    if-eqz v1, :cond_0

    .line 338
    check-cast p1, Landroid/database/HtcIfCursorWrapper;

    .end local p1
    invoke-interface {p1, v0}, Landroid/database/HtcIfCursorWrapper;->setAsyncQueryStackTrace([Ljava/lang/StackTraceElement;)V

    .line 342
    .end local v0           #elem:[Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public setDlColumns([Ljava/lang/String;)Z
    .locals 5
    .parameter "columns"

    .prologue
    const/4 v3, 0x0

    .line 282
    if-eqz p1, :cond_0

    array-length v4, p1

    if-gtz v4, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v3

    .line 286
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 287
    .local v0, columnSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 288
    aget-object v4, p1, v2

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 292
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 294
    const/4 v1, 0x1

    .line 295
    .local v1, hasRequired:Z
    const/4 v2, 0x0

    :goto_2
    sget-object v4, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumns:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 296
    sget-object v4, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumns:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_4

    .line 297
    const/4 v1, 0x0

    .line 302
    :cond_3
    if-nez v1, :cond_5

    .line 310
    iget-object v4, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 295
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 306
    :cond_5
    :try_start_1
    sput-object p1, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumns:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    const/4 v3, 0x1

    .line 310
    iget-object v4, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_3

    .end local v1           #hasRequired:Z
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mDlColumnsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    const/4 v4, 0x1

    .line 371
    iget-object v3, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 372
    .local v2, msg:Landroid/os/Message;
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 374
    new-instance v0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;-><init>()V

    .line 375
    .local v0, args:Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 376
    iput-object p3, v0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 377
    iput-object p4, v0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 378
    iput-object p5, v0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 379
    iput-object p6, v0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 380
    iput-object p7, v0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 381
    iput-object p2, v0, Lcom/htc/music/util/DlArtAsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 382
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 385
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v3

    if-ne v4, v3, :cond_0

    .line 386
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 387
    .local v1, elem:[Ljava/lang/StackTraceElement;
    sget-object v3, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .end local v1           #elem:[Ljava/lang/StackTraceElement;
    :cond_0
    iget-object v3, p0, Lcom/htc/music/util/DlArtAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    return-void
.end method
