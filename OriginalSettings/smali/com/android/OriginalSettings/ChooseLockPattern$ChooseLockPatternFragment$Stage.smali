.class public final enum Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 231
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f0806dd

    sget-object v4, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 235
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const v3, 0x7f0806f0

    sget-object v4, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 238
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x2

    const v3, 0x7f0806e0

    sget-object v4, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 242
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x3

    const v3, 0x7f0806e1

    sget-object v4, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 245
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x4

    const v3, 0x7f0806e2

    sget-object v4, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 249
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x5

    const v3, 0x7f0806db

    sget-object v4, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 253
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceConfirmed"

    const/4 v2, 0x6

    const v3, 0x7f0806e3

    sget-object v4, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 229
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "headerMessage"
    .parameter "leftMode"
    .parameter "rightMode"
    .parameter "footerMessage"
    .parameter "patternEnabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
            "Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 269
    iput p3, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 270
    iput-object p4, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 271
    iput-object p5, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 272
    iput p6, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    .line 273
    iput-boolean p7, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    .line 274
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .parameter

    .prologue
    .line 229
    const-class v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
