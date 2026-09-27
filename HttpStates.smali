.class public final enum Lfr/bmartel/protocol/http/states/HttpStates;
.super Ljava/lang/Enum;
.source "HttpStates.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfr/bmartel/protocol/http/states/HttpStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/bmartel/protocol/http/states/HttpStates;

.field public static final enum HTTP_BODY_PARSE_ERROR:Lfr/bmartel/protocol/http/states/HttpStates;

.field public static final enum HTTP_FRAME_OK:Lfr/bmartel/protocol/http/states/HttpStates;

.field public static final enum HTTP_READING_ERROR:Lfr/bmartel/protocol/http/states/HttpStates;

.field public static final enum HTTP_STATE_NONE:Lfr/bmartel/protocol/http/states/HttpStates;

.field public static final enum HTTP_WRONG_VERSION:Lfr/bmartel/protocol/http/states/HttpStates;

.field public static final enum MALFORMED_HTTP_FRAME:Lfr/bmartel/protocol/http/states/HttpStates;

.field public static final enum SOCKET_ERROR:Lfr/bmartel/protocol/http/states/HttpStates;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lfr/bmartel/protocol/http/states/HttpStates;

    const-string v1, "MALFORMED_HTTP_FRAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/states/HttpStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/bmartel/protocol/http/states/HttpStates;->MALFORMED_HTTP_FRAME:Lfr/bmartel/protocol/http/states/HttpStates;

    new-instance v1, Lfr/bmartel/protocol/http/states/HttpStates;

    const-string v3, "HTTP_FRAME_OK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lfr/bmartel/protocol/http/states/HttpStates;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_FRAME_OK:Lfr/bmartel/protocol/http/states/HttpStates;

    new-instance v3, Lfr/bmartel/protocol/http/states/HttpStates;

    const-string v5, "HTTP_READING_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lfr/bmartel/protocol/http/states/HttpStates;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_READING_ERROR:Lfr/bmartel/protocol/http/states/HttpStates;

    new-instance v5, Lfr/bmartel/protocol/http/states/HttpStates;

    const-string v7, "HTTP_WRONG_VERSION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lfr/bmartel/protocol/http/states/HttpStates;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_WRONG_VERSION:Lfr/bmartel/protocol/http/states/HttpStates;

    new-instance v7, Lfr/bmartel/protocol/http/states/HttpStates;

    const-string v9, "HTTP_STATE_NONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lfr/bmartel/protocol/http/states/HttpStates;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_STATE_NONE:Lfr/bmartel/protocol/http/states/HttpStates;

    new-instance v9, Lfr/bmartel/protocol/http/states/HttpStates;

    const-string v11, "SOCKET_ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lfr/bmartel/protocol/http/states/HttpStates;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lfr/bmartel/protocol/http/states/HttpStates;->SOCKET_ERROR:Lfr/bmartel/protocol/http/states/HttpStates;

    new-instance v11, Lfr/bmartel/protocol/http/states/HttpStates;

    const-string v13, "HTTP_BODY_PARSE_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lfr/bmartel/protocol/http/states/HttpStates;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_BODY_PARSE_ERROR:Lfr/bmartel/protocol/http/states/HttpStates;

    const/4 v13, 0x7

    new-array v13, v13, [Lfr/bmartel/protocol/http/states/HttpStates;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lfr/bmartel/protocol/http/states/HttpStates;->$VALUES:[Lfr/bmartel/protocol/http/states/HttpStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/bmartel/protocol/http/states/HttpStates;
    .locals 1

    const-class v0, Lfr/bmartel/protocol/http/states/HttpStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p0
.end method

.method public static values()[Lfr/bmartel/protocol/http/states/HttpStates;
    .locals 1

    sget-object v0, Lfr/bmartel/protocol/http/states/HttpStates;->$VALUES:[Lfr/bmartel/protocol/http/states/HttpStates;

    invoke-virtual {v0}, [Lfr/bmartel/protocol/http/states/HttpStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/bmartel/protocol/http/states/HttpStates;

    return-object v0
.end method
