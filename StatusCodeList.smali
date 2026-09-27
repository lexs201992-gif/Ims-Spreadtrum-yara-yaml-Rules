.class public Lfr/bmartel/protocol/http/constants/StatusCodeList;
.super Ljava/lang/Object;
.source "StatusCodeList.java"


# static fields
.field public static final ACCEPTED:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final BAD_GATEWAY:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final BAD_REQUEST:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final CONFLICT:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final CONTINUE:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final CREATED:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final EXPECTATION_FAILED:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final FORBIDDEN:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final FOUND:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final GATEWAY_TIME_OUT:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final GONE:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final HTTP_VERSION_NOT_SUPPORTED:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final INTERNAL_SERVER_ERROR:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final LENGTH_REQUIRED:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final METHOD_NOT_ALLOWED:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final MOVED_PERMANENTLY:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final MULTIPLE_CHOICES:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final NON_AUTHORITATIVE_INFORMATION:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final NOT_ACCEPTABLE:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final NOT_FOUND:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final NOT_IMPLEMENTED:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final NOT_MODIFIED:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final NO_CONTENT:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final OK:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final PARTIAL_CONTENT:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final PAYMENT_REQUIRED:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final PRECONDITION_FAILED:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final PROXY_AUTHENTICATION_REQUIRED:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final REQUESTED_RANGE_NOT_SATISFIABLE:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final REQUEST_ENTITY_TOO_LARGE:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final REQUEST_TIME_OUT:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final REQUEST_URI_TOO_LARGE:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final RESET_CONTENT:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final SEE_OTHER:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final SERVICE_UNAVAILABLE:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final SWITCHING_PROTOCOL:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final TEMPORARY_REDIRECT:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final UNAUTHORIZED:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final UNSUPPORTED_MEDIA_TYPE:Lfr/bmartel/protocol/http/StatusCodeObject;

.field public static final USE_PROXY:Lfr/bmartel/protocol/http/StatusCodeObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x64

    const-string v2, "Continue"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->CONTINUE:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x65

    const-string v2, "Switching Protocols"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->SWITCHING_PROTOCOL:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0xc8

    const-string v2, "OK"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->OK:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0xc9

    const-string v2, "Created"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->CREATED:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0xca

    const-string v2, "Accepted"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->ACCEPTED:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0xcb

    const-string v2, "Non-Authoritative Information"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->NON_AUTHORITATIVE_INFORMATION:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0xcc

    const-string v2, "No Content"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->NO_CONTENT:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0xcd

    const-string v2, "Reset Content"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->RESET_CONTENT:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0xce

    const-string v2, "Partial Content"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->PARTIAL_CONTENT:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x12c

    const-string v2, "Multiple Choices"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->MULTIPLE_CHOICES:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x12d

    const-string v2, "Moved Permanently"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->MOVED_PERMANENTLY:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x12e

    const-string v2, "Found"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->FOUND:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x12f

    const-string v2, "See Other"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->SEE_OTHER:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x130

    const-string v2, "Not Modified"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->NOT_MODIFIED:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x131

    const-string v2, "Use Proxy"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->USE_PROXY:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x133

    const-string v2, "Temporary Redirect"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->TEMPORARY_REDIRECT:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x190

    const-string v2, "Bad Request"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->BAD_REQUEST:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x191

    const-string v2, "Unauthorized"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->UNAUTHORIZED:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x192

    const-string v2, "Payment Required"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->PAYMENT_REQUIRED:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x193

    const-string v2, "Forbidden"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->FORBIDDEN:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x194

    const-string v2, "Not Found"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->NOT_FOUND:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x195

    const-string v2, "Method Not Allowed"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->METHOD_NOT_ALLOWED:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x196

    const-string v2, "Not Acceptable"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->NOT_ACCEPTABLE:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x197

    const-string v2, "Proxy Authentication Required"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->PROXY_AUTHENTICATION_REQUIRED:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x198

    const-string v2, "Request Time-out"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->REQUEST_TIME_OUT:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x199

    const-string v2, "Conflict"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->CONFLICT:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x19a

    const-string v2, "Gone"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->GONE:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x19b

    const-string v2, "Length Required"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->LENGTH_REQUIRED:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x19c

    const-string v2, "Precondition Failed"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->PRECONDITION_FAILED:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x19d

    const-string v2, "Request Entity Too Large"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->REQUEST_ENTITY_TOO_LARGE:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x19e

    const-string v2, "Request-URI Too Large"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->REQUEST_URI_TOO_LARGE:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x19f

    const-string v2, "Unsupported Media Type"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->UNSUPPORTED_MEDIA_TYPE:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x1a0

    const-string v2, "Requested range not satisfiable"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->REQUESTED_RANGE_NOT_SATISFIABLE:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x1a1

    const-string v2, "Expectation Failed"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->EXPECTATION_FAILED:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x1f4

    const-string v2, "Internal Server Error"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->INTERNAL_SERVER_ERROR:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x1f5

    const-string v2, "Not Implemented"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->NOT_IMPLEMENTED:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x1f6

    const-string v2, "Bad Gateway"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->BAD_GATEWAY:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x1f7

    const-string v2, "Service Unavailable"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->SERVICE_UNAVAILABLE:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x1f8

    const-string v2, "Gateway Time-out"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->GATEWAY_TIME_OUT:Lfr/bmartel/protocol/http/StatusCodeObject;

    new-instance v0, Lfr/bmartel/protocol/http/StatusCodeObject;

    const/16 v1, 0x1f9

    const-string v2, "HTTP Version not supported"

    invoke-direct {v0, v1, v2}, Lfr/bmartel/protocol/http/StatusCodeObject;-><init>(ILjava/lang/String;)V

    sput-object v0, Lfr/bmartel/protocol/http/constants/StatusCodeList;->HTTP_VERSION_NOT_SUPPORTED:Lfr/bmartel/protocol/http/StatusCodeObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
