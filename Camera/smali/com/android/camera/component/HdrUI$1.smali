.class Lcom/android/camera/component/HdrUI$1;
.super Ljava/lang/Object;
.source "HdrUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HdrUI;->setupPropertyChangedCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HdrUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HdrUI$1;->this$0:Lcom/android/camera/component/HdrUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HdrUI$1;->this$0:Lcom/android/camera/component/HdrUI;

    #calls: Lcom/android/camera/component/HdrUI;->openCaptureUI()V
    invoke-static {v0}, Lcom/android/camera/component/HdrUI;->access$000(Lcom/android/camera/component/HdrUI;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/HdrUI$1;->this$0:Lcom/android/camera/component/HdrUI;

    #calls: Lcom/android/camera/component/HdrUI;->closeCaptureUI()V
    invoke-static {v0}, Lcom/android/camera/component/HdrUI;->access$100(Lcom/android/camera/component/HdrUI;)V

    goto :goto_0
.end method
