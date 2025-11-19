.class public final Lio/github/zummarcello/imnotadeveloper/xposed/NativeFun;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/github/zummarcello/imnotadeveloper/xposed/NativeFun;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/github/zummarcello/imnotadeveloper/xposed/NativeFun;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lio/github/zummarcello/imnotadeveloper/xposed/NativeFun;->a:Lio/github/zummarcello/imnotadeveloper/xposed/NativeFun;

    .line 8
    return-void
.end method


# virtual methods
.method public final native setProps(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
