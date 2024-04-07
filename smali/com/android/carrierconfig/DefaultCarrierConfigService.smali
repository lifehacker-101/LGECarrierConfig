.class public Lcom/android/carrierconfig/DefaultCarrierConfigService;
.super Landroid/service/carrier/CarrierService;
.source "DefaultCarrierConfigService.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Landroid/service/carrier/CarrierService;-><init>()V

    const-string v0, "DefaultCarrierConfigService"

    const-string v1, "Service created"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    return-void
.end method

.method static checkFilters(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "ro.boot.product.vendor.sku"

    const-string v1, ""

    .line 392
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ro.boot.product.hardware.sku"

    .line 394
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 396
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_10

    .line 398
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 399
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 400
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "iccid"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v7, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "name"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v7, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v8, "imsi"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v7, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v8, "gid2"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v7, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v8, "gid1"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v7, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v8, "spn"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x7

    goto :goto_1

    :sswitch_6
    const-string v8, "sku"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x6

    goto :goto_1

    :sswitch_7
    const-string v8, "mnc"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    :cond_7
    const/4 v7, 0x5

    goto :goto_1

    :sswitch_8
    const-string v8, "mcc"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_1

    :cond_8
    const/4 v7, 0x4

    goto :goto_1

    :sswitch_9
    const-string v8, "cid"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_1

    :cond_9
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_a
    const-string v8, "hardwareSku"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_1

    :cond_a
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_b
    const-string v8, "vendorSku"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_1

    :cond_b
    move v7, v5

    goto :goto_1

    :sswitch_c
    const-string v8, "device"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_1

    :cond_c
    move v7, v2

    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown attribute "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DefaultCarrierConfigService"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move v5, v2

    goto/16 :goto_2

    .line 429
    :pswitch_0
    invoke-static {v6, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->matchOnIccid(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto/16 :goto_2

    :pswitch_1
    if-eqz p1, :cond_e

    .line 417
    invoke-static {v6, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->matchOnImsi(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto/16 :goto_2

    :pswitch_2
    if-eqz p1, :cond_e

    .line 411
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_2

    :pswitch_3
    if-eqz p1, :cond_e

    .line 408
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_2

    :pswitch_4
    if-eqz p1, :cond_e

    .line 414
    invoke-static {v6, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->matchOnSP(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_2

    .line 439
    :pswitch_5
    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    goto :goto_2

    :pswitch_6
    if-eqz p1, :cond_e

    .line 405
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_2

    :pswitch_7
    if-eqz p1, :cond_e

    .line 402
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_2

    :pswitch_8
    if-eqz p1, :cond_e

    .line 432
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getCarrierId()I

    move-result v7

    if-eq v4, v7, :cond_e

    .line 433
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getSpecificCarrierId()I

    move-result v6

    if-ne v4, v6, :cond_d

    goto :goto_2

    .line 426
    :pswitch_9
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    goto :goto_2

    .line 423
    :pswitch_a
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    goto :goto_2

    .line 420
    :pswitch_b
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    :cond_e
    :goto_2
    :pswitch_c
    if-nez v5, :cond_f

    return v2

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_10
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x4f94e1aa -> :sswitch_c
        -0x40bac54b -> :sswitch_b
        -0x15d349eb -> :sswitch_a
        0x180be -> :sswitch_9
        0x1a58d -> :sswitch_8
        0x1a6e2 -> :sswitch_7
        0x1bd1d -> :sswitch_6
        0x1bdb1 -> :sswitch_5
        0x3068af -> :sswitch_4
        0x3068b0 -> :sswitch_3
        0x31627a -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x5f62564 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_c
        :pswitch_0
    .end packed-switch
.end method

.method static matchOnIccid(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z
    .locals 5

    .line 502
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getIccid()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    .line 503
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 504
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    move v1, v2

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, ","

    .line 508
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 509
    array-length v0, p0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    .line 510
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return v1
.end method

.method static matchOnImsi(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z
    .locals 1

    .line 466
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 469
    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 470
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 471
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static matchOnSP(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z
    .locals 1

    .line 487
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    .line 488
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 493
    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 494
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 495
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 334
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 343
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 344
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-static {p0, p1, p2}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->checkFilters(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method loadConfig(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 120
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f010000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v3, :cond_0

    .line 127
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v7, "carrier_config_no_sim.xml"

    invoke-virtual {v3, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v7, "utf-8"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 129
    invoke-static {v2, v6, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 134
    invoke-static {v1, v6, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 135
    invoke-virtual {v4, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "DefaultCarrierConfigService"

    const-string v3, "Failed to load config for no SIM"

    .line 138
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v4

    :cond_0
    const/4 v8, -0x1

    .line 145
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getCarrierId()I

    move-result v9

    if-eq v9, v8, :cond_7

    .line 146
    new-instance v9, Landroid/os/PersistableBundle;

    invoke-direct {v9}, Landroid/os/PersistableBundle;-><init>()V

    .line 147
    new-instance v10, Landroid/os/PersistableBundle;

    invoke-direct {v10}, Landroid/os/PersistableBundle;-><init>()V

    .line 148
    new-instance v11, Landroid/os/PersistableBundle;

    invoke-direct {v11}, Landroid/os/PersistableBundle;-><init>()V

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-class v13, Landroid/telephony/TelephonyManager;

    .line 150
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 151
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/telephony/TelephonyManager;->getCarrierIdFromMccMnc(Ljava/lang/String;)I

    move-result v12

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_4

    aget-object v7, v13, v15

    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v6, "carrier_config_carrierid_"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getSpecificCarrierId()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v6, :cond_1

    .line 155
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v6, 0x0

    .line 156
    :try_start_4
    invoke-static {v2, v6, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v6, 0x0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    goto/16 :goto_6

    .line 158
    :cond_1
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "carrier_config_carrierid_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getCarrierId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v6, :cond_3

    .line 159
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v6, 0x0

    .line 160
    :try_start_7
    invoke-static {v2, v6, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v7
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3

    move-object v9, v7

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 161
    :cond_3
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "carrier_config_carrierid_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v6, 0x0

    .line 163
    :try_start_9
    invoke-static {v2, v6, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v7

    move-object v11, v7

    :goto_2
    add-int/lit8 v15, v15, 0x1

    const/4 v8, -0x1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_5

    .line 168
    :cond_4
    :goto_3
    invoke-virtual {v10}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    move-object v4, v10

    goto :goto_4

    .line 170
    :cond_5
    invoke-virtual {v9}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    move-object v4, v9

    goto :goto_4

    .line 172
    :cond_6
    invoke-virtual {v11}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    move-object v4, v11

    .line 176
    :cond_7
    :goto_4
    invoke-virtual {v4}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "carrier_config_mccmnc_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-virtual {v4, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v7, "utf-8"

    invoke-interface {v2, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 180
    invoke-static {v2, v3, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 182
    :cond_8
    sget-boolean v2, Lcom/android/carrierconfig/DefaultCarrierConfigService;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "DefaultCarrierConfigService"

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsing default xml : config : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    :goto_5
    move-object v2, v0

    :goto_6
    const-string v4, "DefaultCarrierConfigService"

    .line 187
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 193
    :cond_9
    :goto_7
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 196
    :try_start_a
    monitor-enter p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_6

    .line 197
    :try_start_b
    iget-object v7, v1, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v7, :cond_a

    .line 198
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    iput-object v7, v1, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 200
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 202
    :try_start_c
    iget-object v7, v1, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getCarrierId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_12

    .line 204
    new-instance v8, Landroid/os/PersistableBundle;

    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    .line 205
    new-instance v9, Landroid/os/PersistableBundle;

    invoke-direct {v9}, Landroid/os/PersistableBundle;-><init>()V

    .line 206
    new-instance v10, Landroid/os/PersistableBundle;

    invoke-direct {v10}, Landroid/os/PersistableBundle;-><init>()V

    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Landroid/telephony/TelephonyManager;

    .line 208
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 209
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/telephony/TelephonyManager;->getCarrierIdFromMccMnc(Ljava/lang/String;)I

    move-result v11

    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string v13, "lge"

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_6

    move-object v14, v10

    move-object v10, v8

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v13, :cond_e

    :try_start_d
    aget-object v15, v12, v8

    move-object/from16 p1, v2

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_5

    move-object/from16 v16, v6

    :try_start_e
    const-string v6, "carrier_config_lge_carrierid_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getSpecificCarrierId()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lge/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_4

    .line 214
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v8, "utf-8"

    invoke-interface {v7, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 215
    invoke-static {v7, v3, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v9
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_a

    .line 217
    :cond_b
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "carrier_config_lge_carrierid_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getCarrierId()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lge/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_4

    .line 219
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v10, "utf-8"

    invoke-interface {v7, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 220
    invoke-static {v7, v3, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_6

    move-object v10, v2

    goto :goto_9

    .line 221
    :cond_c
    :try_start_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "carrier_config_lge_carrierid_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lge/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_4

    .line 223
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v14, "utf-8"

    invoke-interface {v7, v2, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 224
    invoke-static {v7, v3, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    move-object v14, v2

    goto :goto_9

    :cond_d
    move-object/from16 v6, v16

    :goto_9
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v16

    goto/16 :goto_d

    :catch_5
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_c

    :cond_e
    move-object/from16 p1, v2

    move-object/from16 v16, v6

    .line 229
    :goto_a
    invoke-virtual {v9}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    move-object v2, v9

    goto :goto_b

    .line 231
    :cond_f
    invoke-virtual {v10}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    move-object v2, v10

    goto :goto_b

    .line 233
    :cond_10
    invoke-virtual {v14}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    move-object v2, v14

    goto :goto_b

    :cond_11
    move-object/from16 v2, p1

    goto :goto_b

    :cond_12
    move-object/from16 p1, v2

    .line 237
    :goto_b
    invoke-virtual {v2}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lge/carrier_config_lge_mccmnc_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 239
    invoke-virtual {v2, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v8, "utf-8"

    invoke-interface {v7, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 241
    invoke-static {v7, v3, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 242
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lge/carrier_config_lge_mccmnc_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 245
    :cond_13
    sget-boolean v7, Lcom/android/carrierconfig/DefaultCarrierConfigService;->DEBUG:Z

    if-eqz v7, :cond_14

    const-string v7, "DefaultCarrierConfigService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsing lge xml : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", lgeConfig : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_14
    invoke-virtual {v4, v2}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_6

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 200
    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    throw v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_6

    :catch_6
    move-exception v0

    :goto_c
    move-object v2, v0

    :goto_d
    const-string v7, "DefaultCarrierConfigService"

    .line 251
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not founded \n"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catch_7
    move-exception v0

    move-object v2, v0

    const-string v6, "DefaultCarrierConfigService"

    .line 249
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gpri/carrier_config_gpri_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".xml"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    :try_start_16
    monitor-enter p0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_8

    .line 259
    :try_start_17
    iget-object v6, v1, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v6, :cond_15

    .line 260
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    iput-object v6, v1, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 262
    :cond_15
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 264
    :try_start_18
    iget-object v6, v1, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 266
    invoke-static {v6, v3, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 268
    sget-boolean v7, Lcom/android/carrierconfig/DefaultCarrierConfigService;->DEBUG:Z

    if-eqz v7, :cond_16

    const-string v7, "DefaultCarrierConfigService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsing gpri xml : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", gpriConfig : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_16
    invoke-virtual {v4, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_8

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object v6, v0

    .line 262
    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :try_start_1a
    throw v6
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_8

    :catch_8
    move-exception v0

    move-object v6, v0

    const-string v7, "DefaultCarrierConfigService"

    .line 274
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not founded \n"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :catch_9
    move-exception v0

    move-object v2, v0

    const-string v6, "DefaultCarrierConfigService"

    .line 272
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f020000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 280
    :try_start_1b
    invoke-static {v1, v3, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 281
    invoke-virtual {v4, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    move-object v1, v0

    const-string v2, "DefaultCarrierConfigService"

    .line 284
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_10
    sget-boolean v1, Lcom/android/carrierconfig/DefaultCarrierConfigService;->DEBUG:Z

    if-eqz v1, :cond_17

    const-string v1, "DefaultCarrierConfigService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check final config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-object v4
.end method

.method public onLoadConfig(Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;
    .locals 3

    const-string v0, "DefaultCarrierConfigService"

    const-string v1, "Config being fetched"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-boolean v0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DefaultCarrierConfigService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start parsing with : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v0, :cond_1

    .line 105
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 107
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    iget-object v0, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->loadConfig(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object p0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 107
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "DefaultCarrierConfigService"

    const-string v0, "Failed to load config"

    .line 114
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    return-object p0
.end method
