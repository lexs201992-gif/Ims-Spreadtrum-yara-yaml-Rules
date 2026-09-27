.class public Lcom/motorola/genie/search/payload/SectionTextPayload;
.super Lcom/motorola/genie/search/payload/Payload;
.source "SectionTextPayload.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/genie/search/payload/SectionTextPayload$Section;
    }
.end annotation


# instance fields
.field public answerCode:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public question:Ljava/lang/String;

.field public relatedQuestionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/genie/search/payload/ButtonPayload;",
            ">;"
        }
    .end annotation
.end field

.field public richText:Lcom/motorola/genie/search/payload/RichTextPayload$RichText;

.field public sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/genie/search/payload/SectionTextPayload$Section;",
            ">;"
        }
    .end annotation
.end field

.field public subintent:Ljava/lang/String;

.field public tips:Ljava/lang/String;

.field public userAction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/genie/search/payload/ButtonPayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/genie/search/payload/Payload;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/genie/search/payload/SectionTextPayload;->relatedQuestionList:Ljava/util/List;

    return-void
.end method

.method public static fromLinkedTreeMap(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/motorola/genie/search/payload/SectionTextPayload;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "linkedTreeMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/motorola/genie/search/payload/SectionTextPayload;"
        }
    .end annotation

    new-instance v0, Lcom/motorola/genie/search/payload/SectionTextPayload;

    invoke-direct {v0}, Lcom/motorola/genie/search/payload/SectionTextPayload;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/motorola/genie/search/payload/SectionTextPayload;->userAction:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/motorola/genie/search/payload/SectionTextPayload;->relatedQuestionList:Ljava/util/List;

    const-string v1, "userAction"

    invoke-virtual {p0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v3, v0, Lcom/motorola/genie/search/payload/SectionTextPayload;->userAction:Ljava/util/List;

    invoke-static {v2}, Lcom/motorola/genie/search/payload/ButtonPayload;->fromLinkedTreeMap(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/motorola/genie/search/payload/ButtonPayload;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "relatedQuestionList"

    invoke-virtual {p0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v3, v0, Lcom/motorola/genie/search/payload/SectionTextPayload;->relatedQuestionList:Ljava/util/List;

    invoke-static {v2}, Lcom/motorola/genie/search/payload/ButtonPayload;->fromLinkedTreeMap(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/motorola/genie/search/payload/ButtonPayload;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v1, "question"

    invoke-virtual {p0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/genie/search/payload/SectionTextPayload;->question:Ljava/lang/String;

    const-string v1, "domain"

    invoke-virtual {p0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/genie/search/payload/SectionTextPayload;->domain:Ljava/lang/String;

    const-string v1, "subintent"

    invoke-virtual {p0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/genie/search/payload/SectionTextPayload;->subintent:Ljava/lang/String;

    const-string v1, "answerCode"

    invoke-virtual {p0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/genie/search/payload/SectionTextPayload;->answerCode:Ljava/lang/String;

    const-string v1, "richText"

    invoke-virtual {p0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-static {p0}, Lcom/motorola/genie/search/payload/RichTextPayload$RichText;->fromLinkedTreeMap(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/motorola/genie/search/payload/RichTextPayload$RichText;

    move-result-object p0

    iput-object p0, v0, Lcom/motorola/genie/search/payload/SectionTextPayload;->richText:Lcom/motorola/genie/search/payload/RichTextPayload$RichText;

    iget-object p0, p0, Lcom/motorola/genie/search/payload/RichTextPayload$RichText;->text:Ljava/lang/String;

    new-instance v1, Lcom/motorola/genie/search/payload/SectionTextPayload$1;

    invoke-direct {v1}, Lcom/motorola/genie/search/payload/SectionTextPayload$1;-><init>()V

    invoke-static {p0, v1}, Lcom/motorola/genie/util/JsonUtils;->fromJson(Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    iput-object p0, v0, Lcom/motorola/genie/search/payload/SectionTextPayload;->sections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/genie/search/payload/SectionTextPayload$Section;

    iget-object v2, v1, Lcom/motorola/genie/search/payload/SectionTextPayload$Section;->secitonText:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/genie/search/payload/SectionTextPayload;->removeH1Header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/genie/search/payload/SectionTextPayload$Section;->secitonText:Ljava/lang/String;

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public static removeH1Header(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const-string v0, "<h1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "</h1>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SectionTextPayload{relatedQuestionList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/genie/search/payload/SectionTextPayload;->relatedQuestionList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", question=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/genie/search/payload/SectionTextPayload;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", domain=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/genie/search/payload/SectionTextPayload;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", subintent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/genie/search/payload/SectionTextPayload;->subintent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", answerCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/genie/search/payload/SectionTextPayload;->answerCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", richText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/genie/search/payload/SectionTextPayload;->richText:Lcom/motorola/genie/search/payload/RichTextPayload$RichText;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
