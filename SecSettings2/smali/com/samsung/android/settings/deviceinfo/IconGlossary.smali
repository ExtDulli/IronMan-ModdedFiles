.class public Lcom/samsung/android/settings/deviceinfo/IconGlossary;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "IconGlossary.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 55

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/IconGlossary;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v53, 0x7f04014d

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v51

    const v53, 0x7f110441

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v53, 0x7f110446

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const v53, 0x7f110456

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v53, 0x7f110457

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v53, 0x7f110490

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    const v53, 0x7f110493

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    const v53, 0x7f110496

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/LinearLayout;

    const v53, 0x7f11045c

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v53, 0x7f1104a9

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/LinearLayout;

    const v53, 0x7f1104af

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/LinearLayout;

    const v53, 0x7f110475

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    const v53, 0x7f11047c

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    const v53, 0x7f1104a0

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    const v53, 0x7f110481

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    const v53, 0x7f11047a

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    const v53, 0x7f11048b

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/LinearLayout;

    const v53, 0x7f110461

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v53, 0x7f110466

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const v53, 0x7f110464

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const v53, 0x7f110465

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    const v53, 0x7f110463

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v53, 0x7f110440

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v53, 0x7f1104a7

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/LinearLayout;

    const v53, 0x7f1104b4

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/LinearLayout;

    const v53, 0x7f1104aa

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/LinearLayout;

    const v53, 0x7f1104ac

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/LinearLayout;

    const v53, 0x7f1104b3

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/LinearLayout;

    const v53, 0x7f1104ab

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/LinearLayout;

    const v53, 0x7f1104ad

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/LinearLayout;

    const v53, 0x7f1104a8

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/LinearLayout;

    const v53, 0x7f110492

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    const v53, 0x7f11046f

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v53, 0x7f110471

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v53, 0x7f110473

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const v53, 0x7f1104b0

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    const v53, 0x7f110479

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    const v53, 0x7f110480

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    const v53, 0x7f11048a

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/ImageView;

    const v53, 0x7f11048e

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/ImageView;

    const v53, 0x7f110491

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/ImageView;

    const v53, 0x7f110495

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    const v53, 0x7f1104a1

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    const v53, 0x7f1104a3

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    const v53, 0x7f110485

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/ImageView;

    const v53, 0x7f110487

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/ImageView;

    const v53, 0x7f110462

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v53, 0x7f1104b5

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/ImageView;

    const v53, 0x7f110458

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/IconGlossary;->getActivity()Landroid/app/Activity;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_0

    const/16 v53, 0x8

    move/from16 v0, v53

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string/jumbo v53, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_27

    if-eqz v26, :cond_1

    const/16 v53, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    if-eqz v29, :cond_2

    const/16 v53, 0x8

    move-object/from16 v0, v29

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    if-eqz v37, :cond_3

    const/16 v53, 0x8

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    if-eqz v9, :cond_4

    const/16 v53, 0x8

    move/from16 v0, v53

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    if-eqz v45, :cond_5

    const/16 v53, 0x8

    move-object/from16 v0, v45

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    if-eqz v21, :cond_6

    const/16 v53, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    if-eqz v24, :cond_7

    const/16 v53, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    if-eqz v23, :cond_8

    const/16 v53, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    if-eqz v20, :cond_9

    const/16 v53, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    if-eqz v34, :cond_a

    const v53, 0x7f0b127e

    move-object/from16 v0, v34

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_a
    if-eqz v17, :cond_b

    const v53, 0x7f0b12a2

    move-object/from16 v0, v17

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_b
    if-eqz v19, :cond_c

    const v53, 0x7f0b12a4

    move-object/from16 v0, v19

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_c
    if-eqz v18, :cond_d

    const v53, 0x7f0b12a6

    move-object/from16 v0, v18

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_d
    if-eqz v22, :cond_e

    const v53, 0x7f02041d

    move-object/from16 v0, v22

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_e
    if-eqz v25, :cond_f

    const v53, 0x7f020421

    move-object/from16 v0, v25

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_f
    if-eqz v36, :cond_10

    const v53, 0x7f020434

    move-object/from16 v0, v36

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_10
    if-eqz v30, :cond_11

    const v53, 0x7f02042e

    move-object/from16 v0, v30

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_11
    if-eqz v33, :cond_12

    const v53, 0x7f020432

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_12
    if-eqz v31, :cond_13

    const v53, 0x7f020430

    move-object/from16 v0, v31

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_13
    if-eqz v27, :cond_14

    const v53, 0x7f020426

    move-object/from16 v0, v27

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_14
    if-eqz v28, :cond_15

    const v53, 0x7f02042a

    move-object/from16 v0, v28

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_15
    if-eqz v11, :cond_16

    const v53, 0x7f0200fc

    move/from16 v0, v53

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_16
    if-eqz v38, :cond_17

    const v53, 0x7f02043a

    move-object/from16 v0, v38

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_17
    if-eqz v39, :cond_18

    const v53, 0x7f02043d

    move-object/from16 v0, v39

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_18
    if-eqz v42, :cond_19

    const v53, 0x7f02045f

    move-object/from16 v0, v42

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_19
    if-eqz v6, :cond_1a

    const v53, 0x7f0200e0

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1a
    :goto_0
    const-string/jumbo v53, "com.samsung.android.personalpage.service"

    move-object/from16 v0, v53

    invoke-static {v15, v0}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_1b

    if-eqz v45, :cond_1b

    const/16 v53, 0x8

    move-object/from16 v0, v45

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1b
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v53

    const v54, 0x7f0e002b

    invoke-virtual/range {v53 .. v54}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v53

    if-nez v53, :cond_1c

    const/16 v53, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1c
    invoke-static {v15}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_1d

    const/16 v53, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v53

    if-eqz v53, :cond_1e

    invoke-static {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_28

    :cond_1e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartBonding()Z

    move-result v53

    if-eqz v53, :cond_28

    :goto_1
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string/jumbo v54, "android.hardware.nfc"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_1f

    const/16 v53, 0x8

    move/from16 v0, v53

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1f
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string/jumbo v54, "com.sec.android.smartface.smart_stay"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_20

    const/16 v53, 0x8

    move-object/from16 v0, v47

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_20
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v53

    const-string/jumbo v54, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual/range {v53 .. v54}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_21

    const/16 v53, 0x8

    move-object/from16 v0, v46

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_21
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v53

    const-string/jumbo v54, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-virtual/range {v53 .. v54}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_22

    const/16 v53, 0x8

    move-object/from16 v0, v43

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_22
    const-string/jumbo v53, "com.samsung.android.app.advsounddetector"

    move-object/from16 v0, v53

    invoke-static {v15, v0}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_23

    const/16 v53, 0x8

    move-object/from16 v0, v48

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_23
    invoke-static {v15}, Lcom/android/settings/Utils;->isSDcardExists(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_24

    const/16 v53, 0x8

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v53, 0x8

    move/from16 v0, v53

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_24
    sget v53, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x17

    move/from16 v0, v53

    move/from16 v1, v54

    if-lt v0, v1, :cond_25

    const/16 v53, 0x8

    move/from16 v0, v53

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_25
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v53

    if-nez v53, :cond_29

    const-string/jumbo v53, "com.sec.android.app.voicenote"

    move-object/from16 v0, v53

    invoke-static {v15, v0}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_29

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v53

    if-eqz v53, :cond_26

    if-eqz v49, :cond_26

    const v53, 0x7f0b12be    # 1.8486E38f

    move-object/from16 v0, v49

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_26
    move-object/from16 v53, v51

    check-cast v53, Landroid/widget/ScrollView;

    const/16 v54, 0x1

    invoke-virtual/range {v53 .. v54}, Landroid/widget/ScrollView;->semSetGoToTopEnabled(Z)V

    return-object v51

    :cond_27
    if-eqz v35, :cond_1a

    const/16 v53, 0x8

    move-object/from16 v0, v35

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_28
    const/16 v53, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_29
    const/16 v53, 0x8

    move-object/from16 v0, v50

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method
