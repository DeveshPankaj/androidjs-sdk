.class public Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;
.super Ljava/lang/Object;
.source "DebugOverlayTag.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final color:I

.field public final description:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "color"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;->name:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;->description:Ljava/lang/String;

    .line 26
    iput p3, p0, Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;->color:I

    .line 27
    return-void
.end method
