.class Lcom/htc/music/DRMActionActivity$13;
.super Landroid/widget/BaseAdapter;
.source "DRMActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DRMActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DRMActionActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/DRMActionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private wasDRMFilePlaying()Z
    .locals 2

    .prologue
    .line 897
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/htc/music/DRMActionActivity;->access$800(Lcom/htc/music/DRMActionActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/htc/music/DRMActionActivity;->access$800(Lcom/htc/music/DRMActionActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "content://drm/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    const/4 v1, 0x1

    .line 904
    .end local v0           #path:Ljava/lang/String;
    :goto_0
    return v1

    .line 902
    :catch_0
    move-exception v1

    .line 904
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/DRMActionActivity;->access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 820
    const/4 v0, 0x0

    .line 821
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/DRMActionActivity;->access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 825
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 829
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 833
    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getView IN"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v7, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/DRMActionActivity;->access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_0

    .line 892
    :goto_0
    return-object v6

    .line 837
    :cond_0
    if-ltz p1, :cond_1

    iget-object v7, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/DRMActionActivity;->access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, p1, :cond_2

    .line 838
    :cond_1
    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "list getView out of bound, this shouldn\'t happen. position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",actionArray size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/htc/music/DRMActionActivity;->access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_2
    if-nez p2, :cond_3

    .line 845
    iget-object v7, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v7}, Lcom/htc/music/DRMActionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030023

    invoke-virtual {v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 847
    :cond_3
    const-string v4, ""

    .line 848
    .local v4, szText:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/DRMActionActivity;->access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 849
    .local v0, action:I
    const/4 v1, 0x0

    .line 850
    .local v1, iconId:I
    packed-switch v0, :pswitch_data_0

    .line 883
    :goto_1
    const v6, 0x7f080062

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    .line 884
    .local v2, image:Lcom/htc/widget/HtcListItemTileImage;
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 885
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItemTileImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 887
    const v6, 0x7f080063

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    .line 888
    .local v5, text:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 889
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 891
    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getView set and finish"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, p2

    .line 892
    goto/16 :goto_0

    .line 854
    .end local v2           #image:Lcom/htc/widget/HtcListItemTileImage;
    .end local v5           #text:Lcom/htc/widget/HtcListItem2LineText;
    :pswitch_0
    iget-object v6, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    const v7, 0x7f070058

    invoke-virtual {v6, v7}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 855
    const v1, 0x20800bd

    .line 856
    goto :goto_1

    .line 860
    :pswitch_1
    iget-object v6, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    const v7, 0x2040206

    invoke-virtual {v6, v7}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 861
    const v1, 0x7f020033

    .line 862
    goto :goto_1

    .line 866
    :pswitch_2
    iget-object v6, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    const v7, 0x7f070091

    invoke-virtual {v6, v7}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 870
    const v1, 0x7f020025

    .line 871
    const-string v6, "ACTION_PROPERTY about_rest : iconId= %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 872
    .local v3, msg:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 878
    .end local v3           #msg:Ljava/lang/String;
    :pswitch_3
    iget-object v6, p0, Lcom/htc/music/DRMActionActivity$13;->this$0:Lcom/htc/music/DRMActionActivity;

    const v7, 0x2040214

    invoke-virtual {v6, v7}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 879
    const v1, 0x2080090

    goto :goto_1

    .line 850
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
