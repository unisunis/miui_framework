.class Landroid/webkit/CallbackProxy$JsResultReceiver;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/webkit/JsResult$ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsResultReceiver"
.end annotation


# instance fields
.field public mJsResult:Landroid/webkit/JsPromptResult;

.field private mReady:Z

.field private mTriedToNotifyBeforeReady:Z

.field final synthetic this$0:Landroid/webkit/CallbackProxy;


# direct methods
.method private constructor <init>(Landroid/webkit/CallbackProxy;)V
    .registers 3
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->this$0:Landroid/webkit/CallbackProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Landroid/webkit/JsPromptResult;

    invoke-direct {v0, p0}, Landroid/webkit/JsPromptResult;-><init>(Landroid/webkit/JsResult$ResultReceiver;)V

    iput-object v0, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkit/JsPromptResult;

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/webkit/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkit/CallbackProxy;)V

    return-void
.end method

.method private notifyCallbackProxy()V
    .registers 3

    .prologue
    .line 183
    iget-object v1, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->this$0:Landroid/webkit/CallbackProxy;

    monitor-enter v1

    .line 184
    :try_start_3
    iget-object v0, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->this$0:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 185
    monitor-exit v1

    .line 186
    return-void

    .line 185
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method


# virtual methods
.method public onJsResultComplete(Landroid/webkit/JsResult;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 175
    iget-boolean v0, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mReady:Z

    if-eqz v0, :cond_8

    .line 176
    invoke-direct {p0}, Landroid/webkit/CallbackProxy$JsResultReceiver;->notifyCallbackProxy()V

    .line 180
    :goto_7
    return-void

    .line 178
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mTriedToNotifyBeforeReady:Z

    goto :goto_7
.end method

.method final setReady()V
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mReady:Z

    .line 167
    iget-boolean v0, p0, Landroid/webkit/CallbackProxy$JsResultReceiver;->mTriedToNotifyBeforeReady:Z

    if-eqz v0, :cond_a

    .line 168
    invoke-direct {p0}, Landroid/webkit/CallbackProxy$JsResultReceiver;->notifyCallbackProxy()V

    .line 170
    :cond_a
    return-void
.end method
