.class public final Lio/github/zummarcello/imnotadeveloper/app/SettingsActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Lc/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 4
    new-instance v0, La/c;

    .line 6
    invoke-direct {v0, p0}, La/c;-><init>(Lio/github/zummarcello/imnotadeveloper/app/SettingsActivity;)V

    .line 9
    new-instance v1, Lc/c;

    .line 11
    invoke-direct {v1, v0}, Lc/c;-><init>(La/c;)V

    .line 14
    iput-object v1, p0, Lio/github/zummarcello/imnotadeveloper/app/SettingsActivity;->a:Lc/c;

    .line 16
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    :try_start_4
    const-string v0, "io.github.zummarcello.imnotadeveloper_preferences"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_a} :catch_7e

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x41800000  # 16.0f

    invoke-static {p1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 1
    iget-object p1, p0, Lio/github/zummarcello/imnotadeveloper/app/SettingsActivity;->a:Lc/c;

    invoke-virtual {p1}, Lc/c;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b;

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v4, v2, La/b;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41900000  # 18.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, v2, La/b;->b:Ljava/lang/String;

    iget-boolean v5, v2, La/b;->c:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v4, La/a;

    invoke-direct {v4, v0, v2}, La/a;-><init>(Landroid/content/SharedPreferences;La/b;)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_33

    :cond_65
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const p1, 0x106000d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void

    :catch_7e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const v0, 0x7f010006

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
