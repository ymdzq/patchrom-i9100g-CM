.class Lcom/android/OriginalSettings/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$9;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1103
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;

    .line 1104
    .local v0, cycle:Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;
    instance-of v1, v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleChangeItem;

    if-eqz v1, :cond_0

    .line 1107
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$9;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    .line 1110
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$9;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1300(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1124
    :goto_0
    return-void

    .line 1120
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$9;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1400(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;->end:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->setVisibleRange(JJ)V

    .line 1122
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$9;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1500(Lcom/android/OriginalSettings/DataUsageSummary;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1129
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
