.class Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;
.super Ljava/lang/Object;
.source "InAppRC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private volatile frame:[I

.field private handler:Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;

.field private manager:Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/ViewManager;

.field private obscuredViewIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tempBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/ViewManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->obscuredViewIds:Ljava/util/List;

    new-instance v0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;

    invoke-direct {v0, p0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;-><init>(Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;)V

    iput-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->handler:Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;

    iput-object p1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->manager:Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/ViewManager;

    return-void
.end method

.method static synthetic access$000(Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;)V
    .locals 0

    invoke-direct {p0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->handleScreenshot()V

    return-void
.end method

.method static synthetic access$100(Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->handleTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->handleKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;Landroid/os/ConditionVariable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->handleFlushCommands(Landroid/os/ConditionVariable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;)V
    .locals 0

    invoke-direct {p0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->handleRelease()V

    return-void
.end method

.method private drawView(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->hideObscuredViews(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    if-nez v3, :cond_1

    aget v3, v1, v4

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->drawViewWithoutOffset(Landroid/graphics/Bitmap;Landroid/view/View;)V

    goto :goto_1

    :cond_1
    :goto_0
    aget v2, v1, v2

    aget v1, v1, v4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->drawViewWithOffset(Landroid/graphics/Bitmap;Landroid/view/View;II)V

    :goto_1
    invoke-direct {p0, v0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->showViews(Ljava/util/List;)V

    return-void
.end method

.method private drawViewWithOffset(Landroid/graphics/Bitmap;Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->ensureTempBitmap(II)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->tempBitmap:Landroid/graphics/Bitmap;

    int-to-float p3, p3

    int-to-float p4, p4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, p1, p3, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawViewWithoutOffset(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private ensureTempBitmap(II)V
    .locals 1

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->tempBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->tempBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_1

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge v0, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    :goto_1
    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->tempBitmap:Landroid/graphics/Bitmap;

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->tempBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_5
    return-void
.end method

.method private getFocusedView()Landroid/view/View;
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->manager:Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/ViewManager;

    invoke-virtual {v1}, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/ViewManager;->getViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Observable;

    new-instance v3, Lcom/logmein/rescuesdk/internal/streaming/inapp/-$$Lambda$InAppRC$LDGTyUqWVsiNcb75dBzPlZDDwPc;

    invoke-direct {v3, v0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/-$$Lambda$InAppRC$LDGTyUqWVsiNcb75dBzPlZDDwPc;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v2, v3}, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Observable;->performOnViewIfReferenceExists(Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Observable$RunnableOnView;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private handleFlushCommands(Landroid/os/ConditionVariable;)V
    .locals 0

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private handleKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    invoke-direct {p0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->getFocusedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private handleRelease()V
    .locals 2

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->tempBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->tempBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    iput-object v1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->frame:[I

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private handleScreenshot()V
    .locals 9

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->manager:Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/ViewManager;

    invoke-virtual {v0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/ViewManager;->getViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->updateBitmapSize(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Observable;

    new-instance v2, Lcom/logmein/rescuesdk/internal/streaming/inapp/-$$Lambda$InAppRC$qa1ah4jQ_As4j56ztJT7EU8HXbw;

    invoke-direct {v2, p0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/-$$Lambda$InAppRC$qa1ah4jQ_As4j56ztJT7EU8HXbw;-><init>(Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;)V

    invoke-interface {v1, v2}, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Observable;->performOnViewIfReferenceExists(Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Observable$RunnableOnView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->frame:[I

    iget-object v1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->frame:[I

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_1
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-direct {p0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->getFocusedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private hideObscuredViews(Landroid/view/View;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->obscuredViewIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic lambda$getFocusedView$2(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateBitmapSize$1(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-le p0, p2, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    return-void
.end method

.method private setBitmapSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method private showViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateBitmapSize(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Observable;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Observable;

    new-instance v3, Lcom/logmein/rescuesdk/internal/streaming/inapp/-$$Lambda$InAppRC$s7CMQwPDwiQJtWg0iJToi57Ay40;

    invoke-direct {v3, v0, v1}, Lcom/logmein/rescuesdk/internal/streaming/inapp/-$$Lambda$InAppRC$s7CMQwPDwiQJtWg0iJToi57Ay40;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v2, v3}, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Observable;->performOnViewIfReferenceExists(Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Observable$RunnableOnView;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->setBitmapSize(II)V

    return-void
.end method


# virtual methods
.method public inject(Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->handler:Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;->message(ILjava/lang/Object;)V

    return-void
.end method

.method public inject(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->handler:Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;->message(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$handleScreenshot$0$InAppRC(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->drawView(Landroid/graphics/Bitmap;Landroid/view/View;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->handler:Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public screenshot()Lcom/logmein/rescuesdk/internal/streaming/Screenshot;
    .locals 5

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->handler:Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;->message(ILjava/lang/Object;)V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iget-object v1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->handler:Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC$UiHandler;->message(ILjava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    new-instance v0, Lcom/logmein/rescuesdk/internal/streaming/Screenshot;

    iget-object v1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/InAppRC;->frame:[I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logmein/rescuesdk/internal/streaming/Screenshot;-><init>(II[II)V

    return-object v0
.end method
