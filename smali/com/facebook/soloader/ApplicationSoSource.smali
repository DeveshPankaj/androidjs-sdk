.class public Lcom/facebook/soloader/ApplicationSoSource;
.super Lcom/facebook/soloader/SoSource;
.source "ApplicationSoSource.java"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private flags:I

.field private soSource:Lcom/facebook/soloader/DirectorySoSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I

    .line 34
    invoke-direct {p0}, Lcom/facebook/soloader/SoSource;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/soloader/ApplicationSoSource;->applicationContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/facebook/soloader/ApplicationSoSource;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "SoLoader"

    const-string v1, "context.getApplicationContext returned null, holding reference to original context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput-object p1, p0, Lcom/facebook/soloader/ApplicationSoSource;->applicationContext:Landroid/content/Context;

    .line 42
    :cond_0
    iput p2, p0, Lcom/facebook/soloader/ApplicationSoSource;->flags:I

    .line 43
    new-instance v0, Lcom/facebook/soloader/DirectorySoSource;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/soloader/ApplicationSoSource;->applicationContext:Landroid/content/Context;

    .line 45
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lcom/facebook/soloader/ApplicationSoSource;->soSource:Lcom/facebook/soloader/DirectorySoSource;

    .line 46
    return-void
.end method


# virtual methods
.method public addToLdLibraryPath(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/soloader/ApplicationSoSource;->soSource:Lcom/facebook/soloader/DirectorySoSource;

    invoke-virtual {v0, p1}, Lcom/facebook/soloader/DirectorySoSource;->addToLdLibraryPath(Ljava/util/Collection;)V

    .line 98
    return-void
.end method

.method public checkAndMaybeUpdate()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/facebook/soloader/ApplicationSoSource;->soSource:Lcom/facebook/soloader/DirectorySoSource;

    iget-object v0, v0, Lcom/facebook/soloader/DirectorySoSource;->soDirectory:Ljava/io/File;

    .line 57
    .local v0, "nativeLibDir":Ljava/io/File;
    iget-object v1, p0, Lcom/facebook/soloader/ApplicationSoSource;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/soloader/ApplicationSoSource;->applicationContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 59
    .local v1, "updatedContext":Landroid/content/Context;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "updatedNativeLibDir":Ljava/io/File;
    invoke-virtual {v0, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    const-string v3, "SoLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Native library directory updated from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget v3, p0, Lcom/facebook/soloader/ApplicationSoSource;->flags:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, p0, Lcom/facebook/soloader/ApplicationSoSource;->flags:I

    .line 67
    new-instance v3, Lcom/facebook/soloader/DirectorySoSource;

    iget v5, p0, Lcom/facebook/soloader/ApplicationSoSource;->flags:I

    invoke-direct {v3, v2, v5}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    iput-object v3, p0, Lcom/facebook/soloader/ApplicationSoSource;->soSource:Lcom/facebook/soloader/DirectorySoSource;

    .line 68
    iget-object v3, p0, Lcom/facebook/soloader/ApplicationSoSource;->soSource:Lcom/facebook/soloader/DirectorySoSource;

    iget v5, p0, Lcom/facebook/soloader/ApplicationSoSource;->flags:I

    invoke-virtual {v3, v5}, Lcom/facebook/soloader/DirectorySoSource;->prepare(I)V

    .line 69
    iput-object v1, p0, Lcom/facebook/soloader/ApplicationSoSource;->applicationContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return v4

    .line 72
    :cond_0
    return v3

    .line 73
    .end local v0    # "nativeLibDir":Ljava/io/File;
    .end local v1    # "updatedContext":Landroid/content/Context;
    .end local v2    # "updatedNativeLibDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I
    .locals 1
    .param p1, "soName"    # Ljava/lang/String;
    .param p2, "loadFlags"    # I
    .param p3, "threadPolicy"    # Landroid/os/StrictMode$ThreadPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/facebook/soloader/ApplicationSoSource;->soSource:Lcom/facebook/soloader/DirectorySoSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/soloader/DirectorySoSource;->loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I

    move-result v0

    return v0
.end method

.method protected prepare(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/facebook/soloader/ApplicationSoSource;->soSource:Lcom/facebook/soloader/DirectorySoSource;

    invoke-virtual {v0, p1}, Lcom/facebook/soloader/DirectorySoSource;->prepare(I)V

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/facebook/soloader/ApplicationSoSource;->soSource:Lcom/facebook/soloader/DirectorySoSource;

    invoke-virtual {v0}, Lcom/facebook/soloader/DirectorySoSource;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpackLibrary(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "soName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/facebook/soloader/ApplicationSoSource;->soSource:Lcom/facebook/soloader/DirectorySoSource;

    invoke-virtual {v0, p1}, Lcom/facebook/soloader/DirectorySoSource;->unpackLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
