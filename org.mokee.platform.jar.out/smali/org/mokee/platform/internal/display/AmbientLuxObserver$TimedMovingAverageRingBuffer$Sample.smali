.class Lorg/mokee/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;
.super Ljava/lang/Object;
.source "AmbientLuxObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sample"
.end annotation


# instance fields
.field public final mTimestamp:J

.field public final mValue:F


# direct methods
.method public constructor <init>(JF)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "value"    # F

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-wide p1, p0, Lorg/mokee/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;->mTimestamp:J

    .line 202
    iput p3, p0, Lorg/mokee/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;->mValue:F

    .line 200
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mokee/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/mokee/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;->mTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
