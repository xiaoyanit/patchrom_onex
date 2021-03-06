.class Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;,
        Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAlbumArtIndex:I

.field mAlbumIdIdx:I

.field mAlbumIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDisableNowPlayingIndicator:Z

.field private mDlnaMode:I

.field private mDrmLockIconResId:I

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field mIsNowPlaying:Z

.field mNotNotify:Z

.field private mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

.field mTitleIdx:I

.field private mUnknownAlbum:Ljava/lang/String;

.field private mUnknownArtist:Ljava/lang/String;

.field private mcurContent:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V
    .locals 8
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "disablenowplayingindicator"

    .prologue
    .line 3538
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 3479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIsNowPlaying:Z

    .line 3481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 3495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 3497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 3499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 3503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    .line 3509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 3511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraintIsValid:Z

    .line 3515
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mcurContent:I

    .line 3517
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    .line 3519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 3867
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNotNotify:Z

    .line 3919
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;Lcom/htc/music/NowPlayingViewHelper$1;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 3539
    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    .line 3540
    invoke-direct {p0, p4}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 3541
    iput-boolean p7, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 3542
    const v0, 0x7f07004d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 3543
    const v0, 0x7f07004e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 3548
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020052

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3550
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 3551
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 3552
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 3555
    iget-object v0, p2, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    .line 3557
    if-eqz p4, :cond_0

    .line 3558
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p4, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3560
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    .line 3562
    .local v3, height:I
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 3564
    const v0, 0x7f020055

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDrmLockIconResId:I

    .line 3565
    return-void
.end method

.method static synthetic access$202(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3478
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3478
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/NowPlayingViewHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3478
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 3578
    if-nez p1, :cond_1

    .line 3590
    :cond_0
    :goto_0
    return-void

    .line 3580
    :cond_1
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mTitleIdx:I

    .line 3581
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mArtistIdx:I

    .line 3582
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdx:I

    .line 3583
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumArtIndex:I

    .line 3584
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAudioIdIdx:I

    .line 3585
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdIdx:I

    .line 3587
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 3588
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 32
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 3647
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;

    .line 3649
    .local v29, vh:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 3650
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v6, v6, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v2, v5, v6}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v20

    .line 3651
    .local v20, line1:Ljava/lang/String;
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 3654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3656
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 3657
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3658
    .local v8, album:Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v2, "<unknown>"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3659
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3664
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3666
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 3667
    .local v23, name:Ljava/lang/String;
    if-eqz v23, :cond_1

    const-string v2, "<unknown>"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3668
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3672
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    .line 3673
    .local v19, len:I
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v2, v2

    move/from16 v0, v19

    if-ge v2, v0, :cond_2

    .line 3674
    move/from16 v0, v19

    new-array v2, v0, [C

    move-object/from16 v0, v29

    iput-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 3676
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v7, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v5, v0, v6, v7}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 3677
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-static {v2, v5, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v21

    .line 3678
    .local v21, line2:Ljava/lang/String;
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 3681
    .end local v8           #album:Ljava/lang/String;
    .end local v19           #len:I
    .end local v21           #line2:Ljava/lang/String;
    .end local v23           #name:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v16, v0

    .line 3682
    .local v16, indicator:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v16, :cond_5

    .line 3683
    const/4 v15, -0x1

    .line 3684
    .local v15, id:I
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_4

    .line 3687
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    .line 3688
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v26

    .line 3689
    .local v26, shufflePos:I
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move/from16 v0, v26

    invoke-interface {v2, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 3718
    .end local v26           #shufflePos:I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    if-nez v2, :cond_e

    .line 3719
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-ne v2, v15, :cond_d

    .line 3721
    const v2, 0x2080089

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 3722
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3740
    .end local v15           #id:I
    :cond_5
    :goto_3
    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 3741
    .local v9, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 3743
    .restart local v23       #name:Ljava/lang/String;
    const-string v2, "mime_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 3745
    .local v22, minetype:Ljava/lang/String;
    if-eqz v23, :cond_6

    const-string v2, "<unknown>"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_6
    const/16 v28, 0x1

    .line 3746
    .local v28, unknown:Z
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3747
    .local v4, art:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 3748
    .local v3, artIndex:I
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 3749
    if-nez v28, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    .line 3751
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3767
    :goto_5
    const-string v2, "_data"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 3768
    .local v24, path:Ljava/lang/String;
    if-eqz v24, :cond_16

    const-string v2, "content://drm/"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3769
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 3770
    invoke-virtual {v9}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_8

    .line 3771
    invoke-virtual {v9}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3772
    .local v17, indicatorBubble:Landroid/view/View;
    move-object/from16 v0, v17

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    .line 3773
    check-cast v17, Landroid/widget/ImageView;

    .end local v17           #indicatorBubble:Landroid/view/View;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3824
    :cond_8
    :goto_6
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2}, Lcom/htc/widget/HtcRimImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 3825
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 3826
    .local v10, audioId:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v25

    .line 3828
    .local v25, position:I
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 3829
    .local v12, data:Landroid/os/Bundle;
    const-string v2, "audioid"

    invoke-virtual {v12, v2, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3830
    const-string v2, "position"

    move/from16 v0, v25

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3831
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v12}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 3832
    new-instance v2, Landroid/view/TouchDelegate;

    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mScreenWidth:I
    invoke-static {v6}, Lcom/htc/music/NowPlayingViewHelper;->access$4400(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v7, v7, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v30, 0x7f0b009c

    move/from16 v0, v30

    invoke-static {v7, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v30, v0

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mScreenWidth:I
    invoke-static/range {v30 .. v30}, Lcom/htc/music/NowPlayingViewHelper;->access$4400(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mScreenHeight:I
    invoke-static/range {v31 .. v31}, Lcom/htc/music/NowPlayingViewHelper;->access$4500(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-direct {v2, v5, v6}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 3841
    .end local v10           #audioId:I
    .end local v12           #data:Landroid/os/Bundle;
    .end local v25           #position:I
    :cond_9
    return-void

    .line 3661
    .end local v3           #artIndex:I
    .end local v4           #art:Ljava/lang/String;
    .end local v9           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v16           #indicator:Lcom/htc/widget/HtcListItemImageButton;
    .end local v22           #minetype:Ljava/lang/String;
    .end local v23           #name:Ljava/lang/String;
    .end local v24           #path:Ljava/lang/String;
    .end local v28           #unknown:Z
    .restart local v8       #album:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3670
    .restart local v23       #name:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 3691
    .end local v8           #album:Ljava/lang/String;
    .end local v23           #name:Ljava/lang/String;
    .restart local v15       #id:I
    .restart local v16       #indicator:Lcom/htc/widget/HtcListItemImageButton;
    :cond_c
    :try_start_1
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    goto/16 :goto_2

    .line 3693
    :catch_0
    move-exception v14

    .line 3694
    .local v14, ex:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 3724
    .end local v14           #ex:Landroid/os/RemoteException;
    :cond_d
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 3727
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mcurContent:I

    if-ltz v2, :cond_5

    .line 3728
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 3729
    .local v27, test:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mcurContent:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_f

    .line 3731
    const v2, 0x2080089

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 3732
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 3734
    :cond_f
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 3745
    .end local v15           #id:I
    .end local v27           #test:I
    .restart local v9       #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v22       #minetype:Ljava/lang/String;
    .restart local v23       #name:Ljava/lang/String;
    :cond_10
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 3753
    .restart local v3       #artIndex:I
    .restart local v4       #art:Ljava/lang/String;
    .restart local v28       #unknown:Z
    :cond_11
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v18

    .line 3754
    .local v18, item:Lcom/htc/music/util/MBitmap;
    if-nez v18, :cond_13

    const/4 v11, 0x0

    .line 3755
    .local v11, bitmap:Landroid/graphics/Bitmap;
    :goto_7
    if-nez v18, :cond_14

    const/4 v13, 0x0

    .line 3756
    .local v13, decodePath:Ljava/lang/String;
    :goto_8
    if-eqz v11, :cond_12

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {v13, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 3757
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v7, v5

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 3759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 3754
    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #decodePath:Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v18 .. v18}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_7

    .line 3755
    .restart local v11       #bitmap:Landroid/graphics/Bitmap;
    :cond_14
    invoke-virtual/range {v18 .. v18}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v13

    goto :goto_8

    .line 3761
    .restart local v13       #decodePath:Ljava/lang/String;
    :cond_15
    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 3778
    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #decodePath:Ljava/lang/String;
    .end local v18           #item:Lcom/htc/music/util/MBitmap;
    .restart local v24       #path:Ljava/lang/String;
    :cond_16
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v2

    if-eqz v2, :cond_17

    if-eqz v22, :cond_17

    const-string v2, "audio/x-wma-drm"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3779
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 3780
    invoke-virtual {v9}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_8

    .line 3781
    invoke-virtual {v9}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3782
    .restart local v17       #indicatorBubble:Landroid/view/View;
    move-object/from16 v0, v17

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    .line 3783
    check-cast v17, Landroid/widget/ImageView;

    .end local v17           #indicatorBubble:Landroid/view/View;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_6

    .line 3789
    :cond_17
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 3850
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$700(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 3851
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$700(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3852
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$700(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3853
    :cond_0
    if-eqz p1, :cond_1

    .line 3854
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3859
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/NowPlayingViewHelper;->access$702(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3861
    invoke-super {p0, p1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3862
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 3864
    :cond_2
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;Z)V
    .locals 0
    .parameter "cursor"
    .parameter "notNotify"

    .prologue
    .line 3844
    iput-boolean p2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNotNotify:Z

    .line 3845
    invoke-virtual {p0, p1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3846
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 4
    .parameter "section"

    .prologue
    const/4 v1, 0x0

    .line 3906
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v2, :cond_1

    move v0, v1

    .line 3912
    :cond_0
    :goto_0
    return v0

    .line 3907
    :cond_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v2, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 3909
    .local v0, pos:I
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper;->access$4600(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "track"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 3912
    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 3916
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3897
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$4600(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3899
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 3901
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 3594
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3595
    .local v1, v:Landroid/view/View;
    const v3, 0x7f080062

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3602
    .local v0, iv:Landroid/widget/ImageView;
    new-instance v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V

    .line 3603
    .local v2, vh:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;
    const v3, 0x7f080024

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 3604
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 3606
    const v3, 0x7f080023

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 3608
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v3, :cond_0

    .line 3609
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3612
    :cond_0
    const v3, 0x7f080025

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 3613
    const v3, 0x7f080026

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRimImageButton;

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    .line 3617
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v4, "common_circle_outer"

    const v5, 0x208001f

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "common_circle_pressed"

    const v6, 0x2080020

    invoke-static {p1, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "common_circle_rest"

    const v7, 0x2080021

    invoke-static {p1, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 3621
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 3622
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const v4, 0x7f020028

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 3623
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 3624
    iget-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    new-instance v4, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$1;

    invoke-direct {v4, p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$1;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3637
    new-instance v3, Landroid/database/CharArrayBuffer;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 3638
    const/16 v3, 0xc8

    new-array v3, v3, [C

    iput-object v3, v2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 3640
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3641
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 3870
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNotNotify:Z

    if-eqz v0, :cond_0

    .line 3871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNotNotify:Z

    .line 3875
    :goto_0
    return-void

    .line 3874
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onContentChange()V
    .locals 0

    .prologue
    .line 3891
    invoke-super {p0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->onContentChanged()V

    .line 3892
    return-void
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 10
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 3943
    if-nez p2, :cond_1

    .line 3980
    :cond_0
    :goto_0
    return-void

    .line 3944
    :cond_1
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v6, v9, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 3946
    .local v6, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v3

    .line 3947
    .local v3, childCount:I
    if-gtz v3, :cond_2

    .line 3948
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 3952
    :cond_2
    const/4 v8, 0x0

    .line 3953
    .local v8, path:Ljava/lang/String;
    if-eqz p5, :cond_3

    array-length v9, p5

    if-lez v9, :cond_3

    const/4 v9, 0x0

    aget-object v9, p5, v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    aget-object v9, p5, v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 3954
    const/4 v9, 0x0

    aget-object v8, p5, v9

    .end local v8           #path:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 3956
    .restart local v8       #path:Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/htc/music/util/MBitmap;

    invoke-direct {v2, p2, v8}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 3957
    .local v2, b:Lcom/htc/music/util/MBitmap;
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v9, p1, v2, p3, p4}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v0

    .line 3958
    .local v0, addToCache:Z
    if-eqz v0, :cond_0

    .line 3962
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 3963
    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3968
    .local v7, ll:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 3969
    const v9, 0x7f080023

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 3970
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_4

    .line 3971
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3973
    .local v5, integer:Ljava/lang/Integer;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p1, :cond_4

    .line 3974
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3962
    .end local v1           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v5           #integer:Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 3879
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3880
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3882
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3887
    :goto_0
    return-object v0

    .line 3884
    :cond_2
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #calls: Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/htc/music/NowPlayingViewHelper;->access$1600(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3885
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 3886
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 3568
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    .line 3569
    return-void
.end method
