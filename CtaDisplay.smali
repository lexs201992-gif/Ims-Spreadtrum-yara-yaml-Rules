.class public Lglance/content/sdk/model/CtaDisplay;
.super Ljava/lang/Object;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field ctaDisplayImage:Lglance/content/sdk/model/CtaDisplayImage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ctaDisplayImage"
    .end annotation
.end field

.field ctaDisplayText:Lglance/content/sdk/model/CtaDisplayText;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ctaDisplayText"
    .end annotation
.end field

.field displayType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lglance/content/sdk/model/CtaDisplayImage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lglance/content/sdk/model/CtaDisplay;->displayType:I

    iput-object p1, p0, Lglance/content/sdk/model/CtaDisplay;->ctaDisplayImage:Lglance/content/sdk/model/CtaDisplayImage;

    return-void
.end method

.method public constructor <init>(Lglance/content/sdk/model/CtaDisplayText;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lglance/content/sdk/model/CtaDisplay;->displayType:I

    iput-object p1, p0, Lglance/content/sdk/model/CtaDisplay;->ctaDisplayText:Lglance/content/sdk/model/CtaDisplayText;

    return-void
.end method


# virtual methods
.method public clone()Lglance/content/sdk/model/CtaDisplay;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lglance/content/sdk/model/CtaDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lglance/content/sdk/model/CtaDisplay;->clone()Lglance/content/sdk/model/CtaDisplay;

    move-result-object p0

    return-object p0
.end method

.method public getCtaDisplayImage()Lglance/content/sdk/model/CtaDisplayImage;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/CtaDisplay;->ctaDisplayImage:Lglance/content/sdk/model/CtaDisplayImage;

    return-object p0
.end method

.method public getCtaDisplayText()Lglance/content/sdk/model/CtaDisplayText;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/CtaDisplay;->ctaDisplayText:Lglance/content/sdk/model/CtaDisplayText;

    return-object p0
.end method

.method public getDisplayType()I
    .locals 0

    iget p0, p0, Lglance/content/sdk/model/CtaDisplay;->displayType:I

    return p0
.end method

.method public setCtaDisplayImage(Lglance/content/sdk/model/CtaDisplayImage;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/CtaDisplay;->ctaDisplayImage:Lglance/content/sdk/model/CtaDisplayImage;

    return-void
.end method

.method public setCtaDisplayText(Lglance/content/sdk/model/CtaDisplayText;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/CtaDisplay;->ctaDisplayText:Lglance/content/sdk/model/CtaDisplayText;

    return-void
.end method

.method public setDisplayType(I)V
    .locals 0

    iput p1, p0, Lglance/content/sdk/model/CtaDisplay;->displayType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CtaDisplay{displayType=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lglance/content/sdk/model/CtaDisplay;->displayType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\', ctaDisplayText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/CtaDisplay;->ctaDisplayText:Lglance/content/sdk/model/CtaDisplayText;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', ctaDisplayImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lglance/content/sdk/model/CtaDisplay;->ctaDisplayImage:Lglance/content/sdk/model/CtaDisplayImage;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
