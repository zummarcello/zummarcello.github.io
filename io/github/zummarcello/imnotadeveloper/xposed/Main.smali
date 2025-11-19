.class public final Lio/github/zummarcello/imnotadeveloper/xposed/Main;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# instance fields
.field public final a:Lde/robv/android/xposed/XSharedPreferences;

.field public final b:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x5

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v3, Lde/robv/android/xposed/XSharedPreferences;

    .line 9
    const-string v4, "io.github.zummarcello.imnotadeveloper"

    .line 11
    invoke-direct {v3, v4}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object v3, p0, Lio/github/zummarcello/imnotadeveloper/xposed/Main;->a:Lde/robv/android/xposed/XSharedPreferences;

    .line 16
    new-instance v3, Lc/b;

    .line 18
    const-string v4, "sys.usb.ffs.ready"

    .line 20
    const-string v5, "0"

    .line 22
    invoke-direct {v3, v4, v5}, Lc/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v4, Lc/b;

    .line 27
    const-string v5, "sys.usb.config"

    .line 29
    const-string v6, "mtp"

    .line 31
    invoke-direct {v4, v5, v6}, Lc/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v5, Lc/b;

    .line 36
    const-string v7, "persist.sys.usb.config"

    .line 38
    invoke-direct {v5, v7, v6}, Lc/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v7, Lc/b;

    .line 43
    const-string v8, "sys.usb.state"

    .line 45
    invoke-direct {v7, v8, v6}, Lc/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v6, Lc/b;

    .line 50
    const-string v8, "init.svc.adbd"

    .line 52
    const-string v9, "stopped"

    .line 54
    invoke-direct {v6, v8, v9}, Lc/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-array v8, v2, [Lc/b;

    .line 59
    aput-object v3, v8, v1

    .line 61
    aput-object v4, v8, v0

    .line 63
    const/4 v3, 0x2

    .line 64
    aput-object v5, v8, v3

    .line 66
    const/4 v3, 0x3

    .line 67
    aput-object v7, v8, v3

    .line 69
    const/4 v3, 0x4

    .line 70
    aput-object v6, v8, v3

    .line 72
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 74
    int-to-float v4, v2

    .line 75
    const/high16 v5, 0x3f400000  # 0.75f

    .line 77
    div-float/2addr v4, v5

    .line 78
    const/high16 v5, 0x3f800000  # 1.0f

    .line 80
    add-float/2addr v4, v5

    .line 81
    float-to-int v4, v4

    .line 82
    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 85
    :goto_54
    if-ge v1, v2, :cond_61

    .line 87
    aget-object v4, v8, v1

    .line 89
    iget-object v5, v4, Lc/b;->a:Ljava/lang/Object;

    .line 91
    iget-object v4, v4, Lc/b;->b:Ljava/lang/Object;

    .line 93
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/2addr v1, v0

    .line 97
    goto :goto_54

    .line 98
    :cond_61
    iput-object v3, p0, Lio/github/zummarcello/imnotadeveloper/xposed/Main;->b:Ljava/util/LinkedHashMap;

    .line 100
    return-void
.end method

.method public static final a(Lio/github/zummarcello/imnotadeveloper/xposed/Main;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 19

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    const-string v2, "null cannot be cast to non-null type java.lang.reflect.Method"

    invoke-static {v1, v2}, Lc/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/reflect/Method;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hooked "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    invoke-interface {v4}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const-string v3, "args"

    invoke-static {v0, v3}, Lc/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_59
    if-ge v5, v3, :cond_fb

    aget-object v7, v0, v5

    add-int/lit8 v8, v6, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "    "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    instance-of v6, v7, Ljava/util/List;

    const/4 v10, 0x1

    const-string v11, "joinTo(StringBuilder(), …ed, transform).toString()"

    const-string v12, "<this>"

    const-string v13, ", "

    const-string v14, "]"

    const-string v15, "["

    if-eqz v6, :cond_ae

    check-cast v7, Ljava/lang/Iterable;

    .line 3
    invoke-static {v7, v12}, Lc/a;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v12, 0x0

    :goto_8f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/2addr v12, v10

    if-le v12, v10, :cond_9f

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_9f
    invoke-static {v6, v15}, Lc/a;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_8f

    :cond_a3
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Lc/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e7

    .line 6
    :cond_ae
    instance-of v6, v7, [Ljava/lang/Object;

    if-eqz v6, :cond_e3

    check-cast v7, [Ljava/lang/Object;

    .line 7
    invoke-static {v7, v12}, Lc/a;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v12, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_c3
    if-ge v15, v12, :cond_d8

    aget-object v4, v7, v15

    add-int/lit8 v1, v16, 0x1

    if-le v1, v10, :cond_ce

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_ce
    invoke-static {v6, v4}, Lc/a;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v1

    const/16 v1, 0xa

    goto :goto_c3

    :cond_d8
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Lc/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e7

    .line 10
    :cond_e3
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 11
    :goto_e7
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto/16 :goto_59

    :cond_fb
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lc/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-string v1, "ImNotADeveloper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final b(Lio/github/zummarcello/imnotadeveloper/xposed/Main;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    .line 6
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 8
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    .line 10
    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/github/zummarcello/imnotadeveloper/xposed/Main;->a:Lde/robv/android/xposed/XSharedPreferences;

    .line 3
    invoke-virtual {v0}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p1, v1}, Lde/robv/android/xposed/XSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 12

    const-string v0, "param"

    invoke-static {p1, v0}, Lc/a;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v1, "classLoader"

    invoke-static {v0, v1}, Lc/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "hide_developer_mode"

    invoke-virtual {p0, v3}, Lio/github/zummarcello/imnotadeveloper/xposed/Main;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "development_settings_enabled"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    const-string v3, "hide_usb_debug"

    invoke-virtual {p0, v3}, Lio/github/zummarcello/imnotadeveloper/xposed/Main;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v3, "adb_enabled"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    const-string v3, "hide_wireless_debug"

    invoke-virtual {p0, v3}, Lio/github/zummarcello/imnotadeveloper/xposed/Main;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    const-string v3, "adb_wifi_enabled"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v3, :cond_41

    goto :goto_63

    :cond_41
    const-string v3, "android.provider.Settings.Global"

    const-string v6, "android.provider.Settings.NameValueCache"

    const-string v7, "android.provider.Settings.Secure"

    const-string v8, "android.provider.Settings.System"

    filled-new-array {v7, v8, v3, v6}, [Ljava/lang/String;

    move-result-object v3

    move v6, v5

    :goto_4e
    if-ge v6, v4, :cond_63

    aget-object v7, v3, v6

    invoke-static {v7, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    new-instance v8, Lb/b;

    invoke-direct {v8, p0, v2}, Lb/b;-><init>(Lio/github/zummarcello/imnotadeveloper/xposed/Main;Ljava/util/ArrayList;)V

    const-string v9, "getStringForUser"

    invoke-static {v7, v9, v8}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 2
    :cond_63
    :goto_63
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lc/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-string v2, "hide_debug_properties"

    invoke-virtual {p0, v2}, Lio/github/zummarcello/imnotadeveloper/xposed/Main;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_71

    goto :goto_92

    :cond_71
    const-string v3, "native_get_long"

    const-string v6, "native_get_boolean"

    const-string v7, "native_get"

    const-string v8, "native_get_int"

    filled-new-array {v7, v8, v3, v6}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "android.os.SystemProperties"

    invoke-static {v6, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    :goto_83
    if-ge v5, v4, :cond_92

    aget-object v6, v3, v5

    new-instance v7, Lb/c;

    invoke-direct {v7, p0}, Lb/c;-><init>(Lio/github/zummarcello/imnotadeveloper/xposed/Main;)V

    invoke-static {v0, v6, v7}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    add-int/lit8 v5, v5, 0x1

    goto :goto_83

    .line 4
    :cond_92
    :goto_92
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1, v1}, Lc/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v2}, Lio/github/zummarcello/imnotadeveloper/xposed/Main;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto :goto_b9

    :cond_9e
    new-instance v0, Lb/a;

    invoke-direct {v0, p0}, Lb/a;-><init>(Lio/github/zummarcello/imnotadeveloper/xposed/Main;)V

    const-string v1, "java.lang.ProcessImpl"

    invoke-static {v1, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "start"

    invoke-static {v1, v2, v0}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    const-string v1, "java.lang.ProcessManager"

    invoke-static {v1, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "exec"

    invoke-static {p1, v1, v0}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 6
    :goto_b9
    const-string p1, "ImNotADeveloper"

    const-string v0, "hide_debug_properties_in_native"

    invoke-virtual {p0, v0}, Lio/github/zummarcello/imnotadeveloper/xposed/Main;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c4

    goto :goto_db

    :cond_c4
    :try_start_c4
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v0, Lio/github/zummarcello/imnotadeveloper/xposed/NativeFun;->a:Lio/github/zummarcello/imnotadeveloper/xposed/NativeFun;

    iget-object v1, p0, Lio/github/zummarcello/imnotadeveloper/xposed/Main;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Lio/github/zummarcello/imnotadeveloper/xposed/NativeFun;->setProps(Ljava/util/Map;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_ce} :catch_cf

    goto :goto_db

    :catch_cf
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_db
    return-void
.end method
