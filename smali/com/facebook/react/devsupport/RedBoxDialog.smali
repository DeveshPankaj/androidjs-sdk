.class Lcom/facebook/react/devsupport/RedBoxDialog;
.super Landroid/app/Dialog;
.source "RedBoxDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/RedBoxDialog$CopyToHostClipBoardTask;,
        Lcom/facebook/react/devsupport/RedBoxDialog$OpenStackFrameTask;,
        Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter;
    }
.end annotation


# instance fields
.field private isReporting:Z

.field private mCopyToClipboardButton:Landroid/widget/Button;

.field private final mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

.field private mDismissButton:Landroid/widget/Button;

.field private final mDoubleTapReloadRecognizer:Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;

.field private mLineSeparator:Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLoadingIndicator:Landroid/widget/ProgressBar;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mReloadJsButton:Landroid/widget/Button;

.field private mReportButton:Landroid/widget/Button;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mReportButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mReportCompletedListener:Lcom/facebook/react/devsupport/RedBoxHandler$ReportCompletedListener;

.field private mReportTextView:Landroid/widget/TextView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mStackView:Landroid/widget/ListView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Lcom/facebook/react/devsupport/RedBoxHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "devSupportManager"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .param p3, "redBoxHandler"    # Lcom/facebook/react/devsupport/RedBoxHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 265
    sget v0, Lcom/facebook/react/R$style;->Theme_Catalyst_RedBox:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->isReporting:Z

    .line 65
    new-instance v1, Lcom/facebook/react/devsupport/RedBoxDialog$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/RedBoxDialog$1;-><init>(Lcom/facebook/react/devsupport/RedBoxDialog;)V

    iput-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReportCompletedListener:Lcom/facebook/react/devsupport/RedBoxHandler$ReportCompletedListener;

    .line 82
    new-instance v1, Lcom/facebook/react/devsupport/RedBoxDialog$2;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/RedBoxDialog$2;-><init>(Lcom/facebook/react/devsupport/RedBoxDialog;)V

    iput-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReportButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 267
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->requestWindowFeature(I)Z

    .line 269
    sget v1, Lcom/facebook/react/R$layout;->redbox_view:I

    invoke-virtual {p0, v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->setContentView(I)V

    .line 271
    iput-object p2, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 272
    new-instance v1, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;

    invoke-direct {v1}, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mDoubleTapReloadRecognizer:Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;

    .line 273
    iput-object p3, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;

    .line 275
    sget v1, Lcom/facebook/react/R$id;->rn_redbox_stack:I

    invoke-virtual {p0, v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mStackView:Landroid/widget/ListView;

    .line 276
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mStackView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 278
    sget v1, Lcom/facebook/react/R$id;->rn_redbox_reload_button:I

    invoke-virtual {p0, v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReloadJsButton:Landroid/widget/Button;

    .line 279
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReloadJsButton:Landroid/widget/Button;

    new-instance v2, Lcom/facebook/react/devsupport/RedBoxDialog$3;

    invoke-direct {v2, p0}, Lcom/facebook/react/devsupport/RedBoxDialog$3;-><init>(Lcom/facebook/react/devsupport/RedBoxDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    sget v1, Lcom/facebook/react/R$id;->rn_redbox_dismiss_button:I

    invoke-virtual {p0, v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mDismissButton:Landroid/widget/Button;

    .line 286
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mDismissButton:Landroid/widget/Button;

    new-instance v2, Lcom/facebook/react/devsupport/RedBoxDialog$4;

    invoke-direct {v2, p0}, Lcom/facebook/react/devsupport/RedBoxDialog$4;-><init>(Lcom/facebook/react/devsupport/RedBoxDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    sget v1, Lcom/facebook/react/R$id;->rn_redbox_copy_button:I

    invoke-virtual {p0, v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mCopyToClipboardButton:Landroid/widget/Button;

    .line 293
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mCopyToClipboardButton:Landroid/widget/Button;

    new-instance v2, Lcom/facebook/react/devsupport/RedBoxDialog$5;

    invoke-direct {v2, p0}, Lcom/facebook/react/devsupport/RedBoxDialog$5;-><init>(Lcom/facebook/react/devsupport/RedBoxDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/facebook/react/devsupport/RedBoxHandler;->isReportEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    sget v1, Lcom/facebook/react/R$id;->rn_redbox_loading_indicator:I

    invoke-virtual {p0, v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 308
    sget v1, Lcom/facebook/react/R$id;->rn_redbox_line_separator:I

    invoke-virtual {p0, v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mLineSeparator:Landroid/view/View;

    .line 309
    sget v1, Lcom/facebook/react/R$id;->rn_redbox_report_label:I

    invoke-virtual {p0, v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReportTextView:Landroid/widget/TextView;

    .line 310
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReportTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 311
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReportTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 312
    sget v0, Lcom/facebook/react/R$id;->rn_redbox_report_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReportButton:Landroid/widget/Button;

    .line 313
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReportButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReportButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/devsupport/RedBoxDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/RedBoxDialog;

    .line 49
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->isReporting:Z

    return v0
.end method

.method static synthetic access$002(Lcom/facebook/react/devsupport/RedBoxDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/RedBoxDialog;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->isReporting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/facebook/react/devsupport/RedBoxDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/RedBoxDialog;

    .line 49
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReportButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/react/devsupport/RedBoxDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/RedBoxDialog;

    .line 49
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mLoadingIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/react/devsupport/RedBoxDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/RedBoxDialog;

    .line 49
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReportTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxHandler;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/RedBoxDialog;

    .line 49
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/react/devsupport/RedBoxDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/RedBoxDialog;

    .line 49
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mLineSeparator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/RedBoxDialog;

    .line 49
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxHandler$ReportCompletedListener;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/RedBoxDialog;

    .line 49
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReportCompletedListener:Lcom/facebook/react/devsupport/RedBoxHandler$ReportCompletedListener;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 338
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Lcom/facebook/react/devsupport/RedBoxDialog$OpenStackFrameTask;

    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/devsupport/RedBoxDialog$OpenStackFrameTask;-><init>(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Lcom/facebook/react/devsupport/RedBoxDialog$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    iget-object v3, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mStackView:Landroid/widget/ListView;

    .line 340
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/devsupport/interfaces/StackFrame;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 338
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/devsupport/RedBoxDialog$OpenStackFrameTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 341
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 345
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->showDevOptionsDialog()V

    .line 347
    const/4 v0, 0x1

    return v0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mDoubleTapReloadRecognizer:Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;

    invoke-virtual {p0}, Lcom/facebook/react/devsupport/RedBoxDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;->didDoubleTapR(ILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->handleReloadJS()V

    .line 352
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public resetReporting()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/facebook/react/devsupport/RedBoxHandler;->isReportEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->isReporting:Z

    .line 329
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReportTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 331
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mLineSeparator:Landroid/view/View;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReportButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mReportButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 334
    return-void

    .line 326
    :cond_1
    :goto_0
    return-void
.end method

.method public setExceptionDetails(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "stack"    # [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 318
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog;->mStackView:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter;

    invoke-direct {v1, p1, p2}, Lcom/facebook/react/devsupport/RedBoxDialog$StackAdapter;-><init>(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 319
    return-void
.end method
