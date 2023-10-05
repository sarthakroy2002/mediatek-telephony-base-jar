.class public Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;
.super Ljava/lang/Object;
.source "MtkPhoneNumberFormatUtil.java"


# static fields
.field public static final AUSTRALIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final BRAZIL_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final DEBUG:Z = false

.field public static final FORMAT_AUSTRALIA:I = 0x15

.field public static final FORMAT_BRAZIL:I = 0x17

.field public static final FORMAT_CHINA_HONGKONG:I = 0x4

.field public static final FORMAT_CHINA_MACAU:I = 0x5

.field public static final FORMAT_CHINA_MAINLAND:I = 0x3

.field public static FORMAT_COUNTRY_CODES:[Ljava/lang/String; = null

.field public static final FORMAT_COUNTRY_NAMES:[Ljava/lang/String;

.field public static final FORMAT_ENGLAND:I = 0x7

.field public static final FORMAT_FRANCE:I = 0x8

.field public static final FORMAT_GERMANY:I = 0xa

.field public static final FORMAT_INDIA:I = 0xc

.field public static final FORMAT_INDONESIA:I = 0x10

.field public static final FORMAT_ITALY:I = 0x9

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_MALAYSIA:I = 0xe

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_NEW_ZEALAND:I = 0x16

.field public static final FORMAT_POLAND:I = 0x14

.field public static final FORMAT_PORTUGAL:I = 0x13

.field public static final FORMAT_RUSSIAN:I = 0xb

.field public static final FORMAT_SINGAPORE:I = 0xf

.field public static final FORMAT_SPAIN:I = 0xd

.field public static final FORMAT_TAIWAN:I = 0x6

.field public static final FORMAT_THAILAND:I = 0x11

.field public static final FORMAT_TURKEY:I = 0x18

.field public static final FORMAT_UNKNOWN:I = 0x0

.field public static final FORMAT_VIETNAM:I = 0x12

.field public static final FRANCE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field private static final Germany_FOUR_PART_REGION_CODES:[I

.field private static final Germany_THREE_PART_REGION_CODES:[I

.field public static final HONGKONG_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field private static final INDIA_THREE_DIGIG_AREA_CODES:[I

.field public static final INDONESIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field private static final ITALY_MOBILE_PREFIXS:[I

.field public static final JAPAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field public static final NANP_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final SINGAPORE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "MtkPhoneNumberFormatUtil"

.field public static final TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final THAILAND_INTERNATIONAL_PREFIXS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 89
    const-string v0, "US"

    const-string v1, "CA"

    const-string v2, "AS"

    const-string v3, "AI"

    const-string v4, "AG"

    const-string v5, "BS"

    const-string v6, "BB"

    const-string v7, "BM"

    const-string v8, "VG"

    const-string v9, "KY"

    const-string v10, "DM"

    const-string v11, "DO"

    const-string v12, "GD"

    const-string v13, "GU"

    const-string v14, "JM"

    const-string v15, "PR"

    const-string v16, "MS"

    const-string v17, "MP"

    const-string v18, "KN"

    const-string v19, "LC"

    const-string v20, "VC"

    const-string v21, "TT"

    const-string v22, "TC"

    const-string v23, "VI"

    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 120
    const-string v0, "011"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->NANP_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 123
    const-string v0, "010"

    const-string v1, "001"

    const-string v2, "0041"

    const-string v3, "0061"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->JAPAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 136
    const-string v0, "0080"

    const-string v2, "0082"

    const-string v3, "009"

    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->HONGKONG_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 150
    const-string v4, "002"

    const-string v5, "005"

    const-string v6, "006"

    const-string v7, "007"

    const-string v8, "009"

    const-string v9, "019"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 158
    const-string v0, "00"

    const-string v2, "40"

    const-string v4, "50"

    const-string v5, "70"

    const-string v6, "90"

    filled-new-array {v0, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->FRANCE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 179
    const-string v4, "001"

    const-string v5, "002"

    const-string v6, "008"

    const-string v7, "012"

    const-string v8, "013"

    const-string v9, "018"

    const-string v10, "019"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->SINGAPORE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 186
    const-string v0, "007"

    const-string v2, "008"

    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->INDONESIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 193
    const-string v1, "001"

    const-string v2, "004"

    const-string v3, "005"

    const-string v4, "006"

    const-string v5, "007"

    const-string v6, "008"

    const-string v7, "009"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->THAILAND_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 206
    const-string v1, "0011"

    const-string v2, "0014"

    const-string v3, "0015"

    const-string v4, "0016"

    const-string v5, "0018"

    const-string v6, "0019"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->AUSTRALIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 216
    const-string v1, "0012"

    const-string v2, "0014"

    const-string v3, "0015"

    const-string v4, "0021"

    const-string v5, "0023"

    const-string v6, "0025"

    const-string v7, "0031"

    const-string v8, "0041"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->BRAZIL_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 225
    const-string v1, "1"

    const-string v2, "81"

    const-string v3, "86"

    const-string v4, "852"

    const-string v5, "853"

    const-string v6, "886"

    const-string v7, "44"

    const-string v8, "33"

    const-string v9, "39"

    const-string v10, "49"

    const-string v11, "7"

    const-string v12, "91"

    const-string v13, "34"

    const-string v14, "60"

    const-string v15, "65"

    const-string v16, "62"

    const-string v17, "66"

    const-string v18, "84"

    const-string v19, "351"

    const-string v20, "48"

    const-string v21, "61"

    const-string v22, "64"

    const-string v23, "55"

    const-string v24, "90"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->FORMAT_COUNTRY_CODES:[Ljava/lang/String;

    .line 239
    const-string v1, "US"

    const-string v2, "JP"

    const-string v3, "CN"

    const-string v4, "HK"

    const-string v5, "MO"

    const-string v6, "TW"

    const-string v7, "GB"

    const-string v8, "FR"

    const-string v9, "IT"

    const-string v10, "DE"

    const-string v11, "RU"

    const-string v12, "IN"

    const-string v13, "ES"

    const-string v14, "MY"

    const-string v15, "SG"

    const-string v16, "ID"

    const-string v17, "TH"

    const-string v18, "VN"

    const-string v19, "PT"

    const-string v20, "PL"

    const-string v21, "AU"

    const-string v22, "NZ"

    const-string v23, "BR"

    const-string v24, "TR"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->FORMAT_COUNTRY_NAMES:[Ljava/lang/String;

    .line 1688
    const/16 v0, 0x9f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->INDIA_THREE_DIGIG_AREA_CODES:[I

    .line 1912
    const/16 v0, 0x2e

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->Germany_THREE_PART_REGION_CODES:[I

    .line 1922
    const/16 v0, 0xcc

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->Germany_FOUR_PART_REGION_CODES:[I

    .line 2077
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->ITALY_MOBILE_PREFIXS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x78
        0x79
        0x7a
        0x7c
        0x81
        0x82
        0x83
        0x84
        0x87
        0x8d
        0x90
        0x91
        0x97
        0x9a
        0xa0
        0xa1
        0xa4
        0xab
        0xac
        0xaf
        0xb1
        0xb4
        0xb5
        0xb7
        0xb8
        0xba
        0xbf
        0xc2
        0xd4
        0xd7
        0xd9
        0xe6
        0xe7
        0xe9
        0xf0
        0xf1
        0xfa
        0xfb
        0xfd
        0x101
        0x104
        0x105
        0x109
        0x10c
        0x116
        0x119
        0x11d
        0x11e
        0x120
        0x123
        0x126
        0x146
        0x155
        0x156
        0x157
        0x161
        0x162
        0x168
        0x169
        0x16c
        0x170
        0x171
        0x172
        0x174
        0x175
        0x176
        0x178
        0x17d
        0x181
        0x185
        0x19d
        0x1a0
        0x1a5
        0x1a6
        0x1a7
        0x1a8
        0x1ab
        0x1af
        0x1b3
        0x1c3
        0x1c4
        0x1cd
        0x1ce
        0x1d4
        0x1d5
        0x1d6
        0x1d7
        0x1da
        0x1db
        0x1dc
        0x1dd
        0x1de
        0x1df
        0x1e0
        0x1e1
        0x1e3
        0x1e4
        0x1e5
        0x1e7
        0x1ea
        0x1eb
        0x1ee
        0x1ef
        0x1f0
        0x1f1
        0x200
        0x203
        0x20a
        0x214
        0x217
        0x21e
        0x224
        0x227
        0x232
        0x235
        0x23b
        0x245
        0x24f
        0x253
        0x264
        0x26d
        0x277
        0x281
        0x28b
        0x291
        0x295
        0x297
        0x29f
        0x2a2
        0x2a8
        0x2c8
        0x2d1
        0x2d4
        0x2db
        0x2dd
        0x2de
        0x2e8
        0x2eb
        0x2ef
        0x2f3
        0x2f9
        0x303
        0x314
        0x330
        0x334
        0x335
        0x338
        0x33f
        0x340
        0x344
        0x35d
        0x35f
        0x362
        0x366
        0x36d
        0x36e
        0x373
        0x374
        0x37b
    .end array-data

    :array_1
    .array-data 4
        0xca
        0xcb
        0xd0
        0xd1
        0xd4
        0xd6
        0xdd
        0xe4
        0xea
        0xf9
        0x136
        0x14f
        0x154
        0x159
        0x16d
        0x177
        0x181
        0x18b
        0x1c9
        0x1ca
        0x1cb
        0x2bc
        0x2c5
        0x2c6
        0x2d8
        0x2d9
        0x2ed
        0x2f7
        0x301
        0x30a
        0x30b
        0x312
        0x313
        0x314
        0x315
        0x318
        0x31e
        0x31f
        0x320
        0x368
        0x36b
        0x36f
        0x384
        0x386
        0x387
        0x38a
    .end array-data

    :array_2
    .array-data 4
        0xce5
        0xce6
        0xce7
        0xce8
        0xcea
        0xceb
        0xcf9
        0xcfa
        0xcff
        0xd00
        0xd01
        0xd03
        0xd04
        0xd06
        0xd07
        0xd09
        0xd0a
        0xd0d
        0xd0e
        0xd10
        0xd12
        0xd21
        0xd22
        0xd24
        0xd26
        0xd2b
        0xd2c
        0xd2f
        0xd31
        0xd32
        0xd33
        0xd35
        0xd36
        0xd39
        0xd3a
        0xd3f
        0xd42
        0xd43
        0xd5d
        0xd5f
        0xd61
        0xd67
        0xd69
        0xd6b
        0xd6d
        0xd71
        0xd73
        0xd75
        0xd77
        0xd78
        0xd85
        0xd86
        0xd88
        0xd8a
        0xd8f
        0xd91
        0xd93
        0xd94
        0xda3
        0xda5
        0xda6
        0xda8
        0xdad
        0xdb0
        0xdc1
        0xdc2
        0xdc3
        0xdc5
        0xdc8
        0xdc9
        0xdcb
        0xdcd
        0xdd1
        0xdd5
        0xdd6
        0xdd8
        0xdda
        0xde9
        0xdea
        0xdeb
        0xdec
        0xdf3
        0xdf5
        0xdf6
        0xdf8
        0xdfa
        0xdfd
        0xdff
        0xe01
        0xe02
        0xe04
        0xe07
        0xe08
        0xe0a
        0xe0c
        0xe11
        0xe13
        0xe15
        0xe16
        0xe25
        0xe26
        0xe27
        0xe28
        0xe2a
        0xe2b
        0xe2c
        0xe2d
        0xe2f
        0xe30
        0xe32
        0xe33
        0xe34
        0xe39
        0xe3b
        0xe3c
        0xe3f
        0xe4d
        0xe4f
        0xe57
        0xe58
        0xe5b
        0xe5d
        0xe5f
        0xe60
        0xe61
        0xe62
        0xe63
        0xe65
        0xe66
        0xe6b
        0xe6d
        0xe6f
        0xe89
        0xe8a
        0xe8b
        0xe8c
        0xe8d
        0xe8e
        0xe8f
        0xe93
        0xe95
        0xe97
        0xe99
        0xe9d
        0xea0
        0xea1
        0xeb1
        0xeb2
        0xeb3
        0xeb4
        0xeb5
        0xebb
        0xebc
        0xebd
        0xebe
        0xeed
        0xef7
        0xefa
        0xefe
        0xf01
        0xf03
        0xf04
        0xf07
        0xf1f
        0xf22
        0xf24
        0xf25
        0xf29
        0xf2b
        0xf2e
        0xf3d
        0xf51
        0xf53
        0xf55
        0xf58
        0xf5b
        0xf5d
        0xf5f
        0xf61
        0xf65
        0xf66
        0xf67
        0xf68
        0xf6a
        0xf6b
        0xf6d
        0xf79
        0xf7a
        0xf7b
        0xf7c
        0xf7d
        0xf7e
        0xf7f
        0xf80
        0xf81
        0xf83
        0xf85
        0xf88
        0xf8d
        0xf90
        0xf97
        0xf9a
        0xf9c
        0xf9d
    .end array-data

    :array_3
    .array-data 4
        0x148
        0x149
        0x14a
        0x14d
        0x14e
        0x14f
        0x150
        0x151
        0x152
        0x153
        0x15b
        0x15c
        0x15d
        0x168
        0x170
        0x17c
        0x184
        0x185
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIndiaNumber(CCCC)I
    .locals 16
    .param p0, "c1"    # C
    .param p1, "c2"    # C
    .param p2, "c3"    # C
    .param p3, "c4"    # C

    .line 1717
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, -0x1

    .line 1718
    .local v3, "result":I
    add-int/lit8 v4, v2, -0x30

    const/16 v5, 0xa

    mul-int/2addr v4, v5

    add-int/lit8 v6, p3, -0x30

    add-int/2addr v4, v6

    .line 1719
    .local v4, "temp":I
    const/16 v8, 0x39

    const/16 v9, 0x31

    const/16 v10, 0x37

    const/16 v11, 0x38

    const/16 v12, 0x32

    const/16 v13, 0x30

    if-ne v0, v8, :cond_0

    .line 1720
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1721
    :cond_0
    const/16 v15, 0x1d

    const/16 v6, 0x3c

    const/16 v7, 0x5a

    const/16 v8, 0x14

    const/16 v14, 0x27

    if-ne v0, v11, :cond_a

    .line 1722
    if-ne v1, v13, :cond_2

    if-lt v4, v8, :cond_9

    if-lt v4, v12, :cond_1

    if-le v4, v6, :cond_9

    :cond_1
    const/16 v6, 0x50

    if-ge v4, v6, :cond_9

    :cond_2
    if-ne v1, v9, :cond_4

    if-lt v4, v5, :cond_9

    if-lt v4, v8, :cond_3

    if-le v4, v15, :cond_9

    :cond_3
    const/16 v6, 0x28

    if-lt v4, v6, :cond_4

    if-le v4, v9, :cond_9

    :cond_4
    if-ne v1, v10, :cond_5

    if-ge v4, v7, :cond_9

    const/16 v6, 0x45

    if-eq v4, v6, :cond_9

    :cond_5
    if-ne v1, v11, :cond_7

    if-lt v4, v5, :cond_9

    const/16 v6, 0x11

    if-eq v4, v6, :cond_9

    const/16 v6, 0x19

    if-lt v4, v6, :cond_6

    const/16 v6, 0x1c

    if-le v4, v6, :cond_9

    :cond_6
    const/16 v6, 0x2c

    if-eq v4, v6, :cond_9

    const/16 v6, 0x35

    if-eq v4, v6, :cond_9

    if-ge v4, v7, :cond_9

    :cond_7
    const/16 v6, 0x39

    if-ne v2, v6, :cond_1e

    if-lt v4, v5, :cond_9

    const/16 v6, 0x17

    if-eq v4, v6, :cond_9

    if-eq v4, v14, :cond_9

    if-lt v4, v12, :cond_8

    const/16 v6, 0x3e

    if-le v4, v6, :cond_9

    :cond_8
    const/16 v6, 0x43

    if-eq v4, v6, :cond_9

    const/16 v6, 0x44

    if-eq v4, v6, :cond_9

    const/16 v6, 0x46

    if-lt v4, v6, :cond_1e

    .line 1727
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1729
    :cond_a
    if-ne v0, v10, :cond_1e

    .line 1731
    if-eq v1, v13, :cond_1d

    const/4 v13, 0x4

    const/16 v7, 0x9

    if-ne v1, v12, :cond_d

    if-eqz v4, :cond_1d

    if-lt v4, v13, :cond_b

    if-le v4, v7, :cond_1d

    :cond_b
    if-eq v4, v12, :cond_1d

    const/16 v11, 0x3b

    if-eq v4, v11, :cond_1d

    const/16 v11, 0x4b

    if-lt v4, v11, :cond_c

    const/16 v11, 0x4e

    if-le v4, v11, :cond_1d

    :cond_c
    const/16 v11, 0x5d

    if-eq v4, v11, :cond_1d

    if-eq v4, v7, :cond_1d

    :cond_d
    const/16 v11, 0x4d

    const/16 v6, 0x4c

    const/16 v7, 0x33

    if-ne v1, v7, :cond_e

    const/16 v7, 0x49

    if-eq v4, v7, :cond_1d

    if-eq v4, v6, :cond_1d

    if-eq v4, v11, :cond_1d

    const/16 v7, 0x60

    if-eq v4, v7, :cond_1d

    const/16 v7, 0x62

    if-eq v4, v7, :cond_1d

    const/16 v7, 0x63

    if-eq v4, v7, :cond_1d

    :cond_e
    const/16 v7, 0x34

    if-ne v1, v7, :cond_10

    if-lt v4, v5, :cond_1d

    const/16 v7, 0xb

    if-eq v4, v7, :cond_1d

    const/16 v7, 0xf

    if-lt v4, v7, :cond_f

    const/16 v7, 0x13

    if-le v4, v7, :cond_1d

    :cond_f
    const/16 v7, 0x1c

    if-eq v4, v7, :cond_1d

    if-eq v4, v15, :cond_1d

    if-eq v4, v14, :cond_1d

    const/16 v7, 0x53

    if-eq v4, v7, :cond_1d

    const/16 v7, 0x58

    if-eq v4, v7, :cond_1d

    const/16 v7, 0x59

    if-eq v4, v7, :cond_1d

    const/16 v7, 0x62

    if-eq v4, v7, :cond_1d

    const/16 v7, 0x63

    if-eq v4, v7, :cond_1d

    :cond_10
    const/16 v7, 0x4f

    const/16 v15, 0x35

    if-ne v1, v15, :cond_13

    if-le v4, v13, :cond_1d

    if-eq v4, v9, :cond_1d

    if-eq v4, v12, :cond_1d

    const/16 v13, 0x42

    if-lt v4, v13, :cond_11

    const/16 v13, 0x45

    if-le v4, v13, :cond_1d

    :cond_11
    if-eq v4, v7, :cond_1d

    const/16 v13, 0x57

    if-lt v4, v13, :cond_12

    const/16 v13, 0x59

    if-le v4, v13, :cond_1d

    :cond_12
    const/16 v13, 0x61

    if-ge v4, v13, :cond_1d

    :cond_13
    const/16 v13, 0x36

    if-ne v1, v13, :cond_16

    if-eqz v4, :cond_1d

    const/4 v15, 0x2

    if-eq v4, v15, :cond_1d

    const/4 v15, 0x7

    if-eq v4, v15, :cond_1d

    if-eq v4, v8, :cond_1d

    const/16 v8, 0x1f

    if-eq v4, v8, :cond_1d

    if-eq v4, v14, :cond_1d

    if-eq v4, v13, :cond_1d

    if-eq v4, v10, :cond_1d

    const/16 v8, 0x41

    if-lt v4, v8, :cond_14

    const/16 v8, 0x45

    if-le v4, v8, :cond_1d

    :cond_14
    if-lt v4, v6, :cond_15

    if-le v4, v7, :cond_1d

    :cond_15
    const/16 v6, 0x60

    if-ge v4, v6, :cond_1d

    :cond_16
    if-ne v1, v10, :cond_18

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1d

    const/16 v6, 0x8

    if-eq v4, v6, :cond_1d

    const/16 v6, 0x9

    if-eq v4, v6, :cond_1d

    const/16 v6, 0x23

    if-lt v4, v6, :cond_17

    if-le v4, v14, :cond_1d

    :cond_17
    const/16 v6, 0x2a

    if-eq v4, v6, :cond_1d

    const/16 v6, 0x3c

    if-eq v4, v6, :cond_1d

    if-eq v4, v11, :cond_1d

    const/16 v6, 0x5f

    if-ge v4, v6, :cond_1d

    :cond_18
    const/16 v6, 0x38

    if-ne v1, v6, :cond_1b

    if-gt v4, v14, :cond_1b

    if-eqz v4, :cond_1d

    const/4 v6, 0x7

    if-lt v4, v6, :cond_19

    const/16 v6, 0x9

    if-le v4, v6, :cond_1d

    :cond_19
    const/16 v6, 0xe

    if-eq v4, v6, :cond_1d

    const/16 v6, 0x1b

    if-lt v4, v6, :cond_1a

    const/16 v6, 0x1e

    if-le v4, v6, :cond_1d

    :cond_1a
    const/16 v6, 0x25

    if-lt v4, v6, :cond_1b

    if-le v4, v14, :cond_1d

    :cond_1b
    const/16 v6, 0x38

    if-ne v1, v6, :cond_1e

    if-le v4, v14, :cond_1e

    const/16 v6, 0x2a

    if-eq v4, v6, :cond_1d

    const/16 v6, 0x2d

    if-eq v4, v6, :cond_1d

    const/16 v6, 0x3c

    if-eq v4, v6, :cond_1d

    const/16 v6, 0x45

    if-lt v4, v6, :cond_1c

    if-le v4, v7, :cond_1d

    :cond_1c
    const/16 v6, 0x5a

    if-lt v4, v6, :cond_1e

    .line 1740
    :cond_1d
    const/4 v3, 0x0

    .line 1743
    :cond_1e
    :goto_0
    if-nez v3, :cond_1f

    .line 1744
    return v3

    .line 1746
    :cond_1f
    if-ne v0, v9, :cond_20

    if-eq v1, v9, :cond_25

    :cond_20
    if-ne v0, v12, :cond_21

    const/16 v6, 0x30

    if-eq v1, v6, :cond_25

    if-eq v1, v12, :cond_25

    :cond_21
    const/16 v6, 0x33

    if-ne v0, v6, :cond_22

    if-eq v1, v6, :cond_25

    :cond_22
    const/16 v6, 0x34

    if-ne v0, v6, :cond_23

    const/16 v7, 0x30

    if-eq v1, v7, :cond_25

    if-eq v1, v6, :cond_25

    :cond_23
    if-ne v0, v10, :cond_24

    const/16 v6, 0x39

    if-eq v1, v6, :cond_25

    :cond_24
    const/16 v6, 0x38

    if-ne v0, v6, :cond_26

    const/16 v6, 0x30

    if-ne v1, v6, :cond_26

    .line 1752
    :cond_25
    const/4 v3, 0x2

    goto :goto_1

    .line 1754
    :cond_26
    add-int/lit8 v6, v0, -0x30

    mul-int/lit8 v6, v6, 0x64

    add-int/lit8 v7, v1, -0x30

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v2, -0x30

    add-int/2addr v6, v5

    .line 1755
    .local v6, "key":I
    sget-object v5, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->INDIA_THREE_DIGIG_AREA_CODES:[I

    invoke-static {v5, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-ltz v5, :cond_27

    .line 1756
    const/4 v3, 0x3

    goto :goto_1

    .line 1758
    :cond_27
    const/4 v3, 0x4

    .line 1761
    .end local v6    # "key":I
    :goto_1
    return v3
.end method

.method static checkInputNormalNumber(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 392
    const/4 v0, 0x1

    .line 394
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 395
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 396
    .local v2, "c":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_1

    :cond_0
    const/16 v3, 0x2a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x23

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    .line 397
    const/4 v0, 0x0

    .line 398
    goto :goto_1

    .line 394
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    .end local v1    # "index":I
    .end local v2    # "c":C
    :cond_2
    :goto_1
    return v0
.end method

.method private static formatAustraliaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1258
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1262
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1263
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1264
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 1266
    .local v3, "phoneNumPosition":I
    :goto_0
    const/16 v4, 0x30

    if-gtz v3, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_1

    .line 1294
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(I)V

    .line 1295
    add-int/lit8 v4, v3, 0x8

    if-ne v0, v4, :cond_8

    .line 1296
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x4

    aput v5, v1, v2

    move v2, v4

    goto :goto_3

    .line 1267
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2
    :goto_1
    move v5, v3

    .line 1268
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_3

    .line 1269
    add-int/lit8 v5, v5, 0x1

    .line 1272
    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v6, 0x34

    if-ne v4, v6, :cond_5

    .line 1274
    add-int/lit8 v4, v5, 0x5

    if-le v0, v4, :cond_4

    .line 1275
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x3

    aput v6, v1, v2

    move v2, v4

    .line 1278
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_4
    add-int/lit8 v4, v5, 0x8

    if-le v0, v4, :cond_7

    .line 1279
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x6

    aput v6, v1, v2

    move v2, v4

    goto :goto_2

    .line 1283
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_5
    add-int/lit8 v4, v5, 0x4

    if-le v0, v4, :cond_6

    .line 1284
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x1

    aput v6, v1, v2

    move v2, v4

    .line 1287
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_6
    add-int/lit8 v4, v5, 0x6

    if-le v0, v4, :cond_7

    .line 1288
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x5

    aput v6, v1, v2

    move v2, v4

    .line 1291
    .end local v4    # "numDashes":I
    .end local v5    # "index":I
    .restart local v2    # "numDashes":I
    :cond_7
    :goto_2
    nop

    .line 1300
    :cond_8
    :goto_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v2, :cond_9

    .line 1301
    aget v5, v1, v4

    .line 1302
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1304
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatBrazilNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1161
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1165
    .local v0, "length":I
    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 1166
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1167
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 1169
    .local v3, "phoneNumPosition":I
    :goto_0
    const/16 v4, 0x30

    if-gtz v3, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_2

    .line 1184
    :cond_1
    add-int/lit8 v4, v3, 0x5

    if-le v0, v4, :cond_2

    .line 1185
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x4

    aput v5, v1, v2

    move v2, v4

    goto :goto_3

    .line 1184
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2
    :goto_1
    goto :goto_3

    .line 1170
    :cond_3
    :goto_2
    move v5, v3

    .line 1171
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_4

    .line 1172
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v3, 0x1

    aput v6, v1, v2

    .line 1173
    add-int/lit8 v5, v5, 0x1

    move v2, v4

    .line 1175
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_4
    add-int/lit8 v4, v5, 0x3

    if-le v0, v4, :cond_5

    .line 1176
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x2

    aput v6, v1, v2

    move v2, v4

    .line 1178
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_5
    add-int/lit8 v4, v5, 0x7

    if-le v0, v4, :cond_6

    add-int/lit8 v4, v5, 0xa

    if-gt v0, v4, :cond_6

    .line 1179
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x6

    aput v6, v1, v2

    move v2, v4

    goto :goto_1

    .line 1180
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_6
    add-int/lit8 v4, v5, 0xa

    if-le v0, v4, :cond_2

    .line 1181
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x4

    aput v6, v1, v2

    .line 1182
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v6, v5, 0x8

    aput v6, v1, v4

    goto :goto_1

    .line 1188
    .end local v5    # "index":I
    :goto_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v2, :cond_7

    .line 1189
    aget v5, v1, v4

    .line 1190
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1192
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatChinaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 812
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 816
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 817
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 818
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 820
    .local v3, "phoneNumPosition":I
    :goto_0
    const/16 v4, 0x32

    const/16 v5, 0x31

    const/16 v6, 0x30

    if-gtz v3, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1

    goto :goto_1

    .line 845
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 846
    .local v7, "c1":C
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 847
    .local v8, "c2":C
    if-ne v7, v5, :cond_3

    if-eq v8, v6, :cond_3

    .line 850
    add-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_2

    .line 851
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    .line 854
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2
    add-int/lit8 v4, v3, 0x8

    if-le v0, v4, :cond_e

    .line 855
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x7

    aput v5, v1, v2

    move v2, v4

    goto/16 :goto_3

    .line 857
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_3
    if-ne v7, v5, :cond_4

    if-ne v8, v6, :cond_4

    .line 859
    add-int/lit8 v4, v3, 0x3

    if-le v0, v4, :cond_e

    .line 860
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x2

    aput v5, v1, v2

    move v2, v4

    goto :goto_3

    .line 864
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_4
    add-int/lit8 v5, v3, 0x8

    if-le v0, v5, :cond_e

    .line 865
    if-ne v7, v4, :cond_5

    .line 866
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x2

    aput v5, v1, v2

    move v2, v4

    goto :goto_3

    .line 868
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_5
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    goto :goto_3

    .line 821
    .end local v4    # "numDashes":I
    .end local v7    # "c1":C
    .end local v8    # "c2":C
    .restart local v2    # "numDashes":I
    :cond_6
    :goto_1
    move v7, v3

    .line 822
    .local v7, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_7

    .line 823
    add-int/lit8 v7, v7, 0x1

    .line 825
    :cond_7
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 826
    .local v8, "c1":C
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 829
    .local v9, "c2":C
    if-ne v8, v5, :cond_8

    if-eq v9, v6, :cond_9

    :cond_8
    if-ne v8, v4, :cond_a

    .line 830
    :cond_9
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x2

    aput v5, v1, v2

    move v2, v4

    goto :goto_2

    .line 831
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_a
    if-ne v8, v5, :cond_c

    .line 834
    add-int/lit8 v4, v7, 0x4

    if-le v0, v4, :cond_b

    .line 835
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x3

    aput v5, v1, v2

    move v2, v4

    .line 838
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_b
    add-int/lit8 v4, v7, 0x8

    if-le v0, v4, :cond_d

    .line 839
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x7

    aput v5, v1, v2

    move v2, v4

    goto :goto_2

    .line 842
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_c
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x3

    aput v5, v1, v2

    move v2, v4

    .line 844
    .end local v4    # "numDashes":I
    .end local v7    # "index":I
    .end local v8    # "c1":C
    .end local v9    # "c2":C
    .restart local v2    # "numDashes":I
    :cond_d
    :goto_2
    nop

    .line 873
    :cond_e
    :goto_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v2, :cond_f

    .line 874
    aget v5, v1, v4

    .line 875
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .end local v5    # "pos":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 877
    .end local v4    # "i":I
    :cond_f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatEnglandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 12
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 2284
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2288
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2289
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 2290
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 2291
    .local v3, "phoneNumPosition":I
    :goto_0
    const/16 v4, 0x30

    if-gtz v3, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_1

    .line 2355
    :cond_1
    add-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_2

    add-int/lit8 v4, v3, 0x8

    if-ge v0, v4, :cond_2

    .line 2356
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    goto/16 :goto_6

    .line 2357
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2
    add-int/lit8 v4, v3, 0x8

    if-lt v0, v4, :cond_13

    .line 2358
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x4

    aput v5, v1, v2

    move v2, v4

    goto/16 :goto_6

    .line 2292
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_3
    :goto_1
    move v5, v3

    .line 2293
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_4

    .line 2294
    add-int/lit8 v5, v5, 0x1

    .line 2296
    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 2297
    .local v4, "c1":C
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 2298
    .local v6, "c2":C
    add-int/lit8 v7, v5, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 2300
    .local v7, "c3":C
    const/16 v8, 0x37

    if-ne v4, v8, :cond_5

    .line 2302
    add-int/lit8 v8, v5, 0x5

    if-le v0, v8, :cond_12

    .line 2303
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .local v8, "numDashes":I
    add-int/lit8 v9, v5, 0x4

    aput v9, v1, v2

    move v2, v8

    goto/16 :goto_5

    .line 2305
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_5
    const/16 v8, 0x32

    if-ne v4, v8, :cond_7

    .line 2307
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x2

    aput v9, v1, v2

    .line 2309
    add-int/lit8 v2, v5, 0x7

    if-le v0, v2, :cond_6

    .line 2310
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v9, v5, 0x6

    aput v9, v1, v8

    goto/16 :goto_5

    .line 2309
    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_6
    move v2, v8

    goto/16 :goto_5

    .line 2312
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_7
    const/16 v8, 0x31

    if-ne v4, v8, :cond_d

    .line 2313
    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 2314
    .local v9, "c4":C
    add-int/lit8 v10, v4, -0x30

    mul-int/lit16 v10, v10, 0x3e8

    add-int/lit8 v11, v6, -0x30

    mul-int/lit8 v11, v11, 0x64

    add-int/2addr v10, v11

    add-int/lit8 v11, v7, -0x30

    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v10, v11

    add-int/2addr v10, v9

    .line 2315
    .local v10, "key":I
    if-eq v6, v8, :cond_a

    if-ne v7, v8, :cond_8

    goto :goto_2

    .line 2324
    :cond_8
    const/16 v8, 0x56b

    if-eq v10, v8, :cond_9

    const/16 v8, 0x603

    if-eq v10, v8, :cond_9

    const/16 v8, 0x6a1

    if-eq v10, v8, :cond_9

    const/16 v8, 0x6e8

    if-eq v10, v8, :cond_9

    const/16 v8, 0x79a

    if-eq v10, v8, :cond_9

    .line 2327
    add-int/lit8 v8, v5, 0x5

    if-le v0, v8, :cond_c

    .line 2328
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v5, 0x4

    aput v11, v1, v2

    move v2, v8

    goto :goto_3

    .line 2332
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_9
    add-int/lit8 v8, v5, 0x6

    if-le v0, v8, :cond_c

    .line 2333
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v5, 0x5

    aput v11, v1, v2

    move v2, v8

    goto :goto_3

    .line 2317
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_a
    :goto_2
    add-int/lit8 v8, v5, 0x4

    if-le v0, v8, :cond_b

    .line 2318
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v5, 0x3

    aput v11, v1, v2

    move v2, v8

    .line 2321
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_b
    add-int/lit8 v8, v5, 0x7

    if-le v0, v8, :cond_c

    .line 2322
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v5, 0x6

    aput v11, v1, v2

    move v2, v8

    .line 2336
    .end local v8    # "numDashes":I
    .end local v9    # "c4":C
    .end local v10    # "key":I
    .restart local v2    # "numDashes":I
    :cond_c
    :goto_3
    goto :goto_5

    :cond_d
    const/16 v8, 0x33

    if-eq v4, v8, :cond_10

    const/16 v8, 0x38

    if-eq v4, v8, :cond_10

    const/16 v8, 0x39

    if-ne v4, v8, :cond_e

    goto :goto_4

    .line 2348
    :cond_e
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x2

    aput v9, v1, v2

    .line 2350
    add-int/lit8 v2, v5, 0x7

    if-le v0, v2, :cond_f

    .line 2351
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v9, v5, 0x6

    aput v9, v1, v8

    goto :goto_5

    .line 2350
    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_f
    move v2, v8

    goto :goto_5

    .line 2338
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_10
    :goto_4
    add-int/lit8 v8, v5, 0x4

    if-le v0, v8, :cond_11

    .line 2339
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x3

    aput v9, v1, v2

    move v2, v8

    .line 2342
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_11
    add-int/lit8 v8, v5, 0x7

    if-le v0, v8, :cond_12

    .line 2343
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x6

    aput v9, v1, v2

    move v2, v8

    .line 2354
    .end local v4    # "c1":C
    .end local v5    # "index":I
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_12
    :goto_5
    nop

    .line 2362
    :cond_13
    :goto_6
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    if-ge v4, v2, :cond_14

    .line 2363
    aget v5, v1, v4

    .line 2364
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2362
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2366
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatFranceNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 2207
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2211
    .local v0, "length":I
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 2212
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 2213
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 2214
    .local v3, "phoneNumPosition":I
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 2215
    .local v4, "c":I
    const/16 v5, 0x39

    const/16 v6, 0x37

    const/16 v7, 0x35

    const/16 v8, 0x34

    const/16 v9, 0x30

    if-gtz v3, :cond_1

    if-eq v4, v9, :cond_1

    if-eq v4, v8, :cond_1

    if-eq v4, v7, :cond_1

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_7

    .line 2216
    :cond_1
    move v10, v3

    .line 2217
    .local v10, "index":I
    if-nez v3, :cond_2

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_3

    if-eq v4, v5, :cond_3

    :cond_2
    if-lez v3, :cond_4

    if-ne v4, v9, :cond_4

    .line 2218
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 2221
    :cond_4
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "numDashes":I
    .local v5, "numDashes":I
    add-int/lit8 v6, v10, 0x1

    aput v6, v1, v2

    .line 2223
    add-int/lit8 v2, v10, 0x4

    if-le v0, v2, :cond_5

    .line 2224
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v6, v10, 0x3

    aput v6, v1, v5

    move v5, v2

    .line 2227
    .end local v2    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_5
    add-int/lit8 v2, v10, 0x6

    if-le v0, v2, :cond_6

    .line 2228
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v6, v10, 0x5

    aput v6, v1, v5

    goto :goto_1

    .line 2227
    .end local v2    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_6
    move v2, v5

    .line 2231
    .end local v5    # "numDashes":I
    .restart local v2    # "numDashes":I
    :goto_1
    add-int/lit8 v5, v10, 0x8

    if-le v0, v5, :cond_7

    .line 2232
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v6, v10, 0x7

    aput v6, v1, v2

    move v2, v5

    .line 2236
    .end local v5    # "numDashes":I
    .end local v10    # "index":I
    .restart local v2    # "numDashes":I
    :cond_7
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_8

    .line 2237
    aget v6, v1, v5

    .line 2238
    .local v6, "pos":I
    add-int v7, v6, v5

    add-int v8, v6, v5

    const-string v9, "-"

    invoke-virtual {p0, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2240
    .end local v5    # "i":I
    .end local v6    # "pos":I
    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static formatGermanyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 17
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1984
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1988
    .local v2, "length":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1989
    .local v3, "dashPositions":[I
    const/4 v4, 0x0

    .line 1990
    .local v4, "numDashes":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v1, 0x1

    .line 1992
    .local v5, "phoneNumPosition":I
    :goto_0
    const/16 v6, 0x30

    if-gtz v5, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1

    goto :goto_1

    .line 2060
    :cond_1
    add-int/lit8 v6, v5, 0x6

    if-lt v2, v6, :cond_14

    add-int/lit8 v6, v5, 0x8

    if-gt v2, v6, :cond_14

    .line 2061
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .local v6, "numDashes":I
    add-int/lit8 v7, v5, 0x3

    aput v7, v3, v4

    move v4, v6

    goto/16 :goto_5

    .line 1993
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_2
    :goto_1
    move v7, v5

    .line 1994
    .local v7, "index":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_3

    .line 1995
    add-int/lit8 v7, v7, 0x1

    .line 1997
    :cond_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 1998
    .local v8, "c1":C
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 2000
    .local v9, "c2":C
    const/16 v10, 0x36

    const/16 v11, 0x31

    if-ne v8, v11, :cond_6

    .line 2002
    add-int/lit8 v6, v7, 0x4

    if-le v2, v6, :cond_4

    .line 2003
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v11, v7, 0x3

    aput v11, v3, v4

    move v4, v6

    .line 2006
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_4
    const/16 v6, 0x35

    if-eq v9, v6, :cond_5

    if-eq v9, v10, :cond_5

    const/16 v6, 0x37

    if-ne v9, v6, :cond_14

    .line 2008
    :cond_5
    add-int/lit8 v6, v7, 0xa

    if-le v2, v6, :cond_14

    .line 2009
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v10, v7, 0x9

    aput v10, v3, v4

    move v4, v6

    goto/16 :goto_4

    .line 2013
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_6
    const/16 v12, 0x33

    if-ne v8, v12, :cond_7

    if-eq v9, v6, :cond_a

    :cond_7
    const/16 v13, 0x34

    if-ne v8, v13, :cond_8

    if-eq v9, v6, :cond_a

    :cond_8
    const/16 v6, 0x39

    if-ne v8, v10, :cond_9

    if-eq v9, v6, :cond_a

    :cond_9
    const/16 v10, 0x38

    if-ne v8, v10, :cond_c

    if-ne v9, v6, :cond_c

    .line 2016
    :cond_a
    add-int/lit8 v6, v7, 0x4

    if-le v2, v6, :cond_b

    .line 2017
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v10, v7, 0x2

    aput v10, v3, v4

    move v4, v6

    .line 2020
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_b
    add-int/lit8 v6, v7, 0x6

    if-le v2, v6, :cond_14

    .line 2021
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v10, v7, 0x5

    aput v10, v3, v4

    move v4, v6

    goto/16 :goto_4

    .line 2023
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_c
    add-int/lit8 v10, v7, 0x3

    if-le v2, v10, :cond_14

    .line 2024
    add-int/lit8 v10, v7, 0x2

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    .line 2025
    .local v10, "c3":C
    add-int/lit8 v13, v7, 0x3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    .line 2026
    .local v13, "c4":C
    add-int/lit8 v14, v8, -0x30

    mul-int/lit8 v14, v14, 0x64

    add-int/lit8 v15, v9, -0x30

    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v14, v15

    add-int/lit8 v15, v10, -0x30

    add-int/2addr v14, v15

    .line 2027
    .local v14, "key3":I
    mul-int/lit8 v15, v14, 0xa

    add-int/lit8 v16, v13, -0x30

    add-int v15, v15, v16

    .line 2029
    .local v15, "key4":I
    if-eq v10, v11, :cond_12

    sget-object v11, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->Germany_THREE_PART_REGION_CODES:[I

    invoke-static {v11, v14}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    if-ltz v11, :cond_d

    const/16 v11, 0xd4

    if-ne v14, v11, :cond_12

    if-ne v14, v11, :cond_d

    if-eq v13, v6, :cond_d

    goto :goto_3

    .line 2039
    :cond_d
    if-ne v8, v12, :cond_10

    if-ne v8, v12, :cond_e

    sget-object v6, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->Germany_FOUR_PART_REGION_CODES:[I

    invoke-static {v6, v15}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-ltz v6, :cond_e

    goto :goto_2

    .line 2051
    :cond_e
    add-int/lit8 v6, v7, 0x6

    if-le v2, v6, :cond_f

    .line 2052
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v11, v7, 0x5

    aput v11, v3, v4

    move v4, v6

    .line 2055
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_f
    add-int/lit8 v6, v7, 0x9

    if-le v2, v6, :cond_14

    .line 2056
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v11, v7, 0x8

    aput v11, v3, v4

    move v4, v6

    goto :goto_4

    .line 2041
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_10
    :goto_2
    add-int/lit8 v6, v7, 0x5

    if-le v2, v6, :cond_11

    .line 2042
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v11, v7, 0x4

    aput v11, v3, v4

    move v4, v6

    .line 2045
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_11
    add-int/lit8 v6, v7, 0x8

    if-le v2, v6, :cond_14

    .line 2046
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v11, v7, 0x7

    aput v11, v3, v4

    move v4, v6

    goto :goto_4

    .line 2031
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_12
    :goto_3
    add-int/lit8 v6, v7, 0x4

    if-le v2, v6, :cond_13

    .line 2032
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v11, v7, 0x3

    aput v11, v3, v4

    move v4, v6

    .line 2035
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_13
    add-int/lit8 v6, v7, 0x7

    if-le v2, v6, :cond_14

    .line 2036
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v11, v7, 0x6

    aput v11, v3, v4

    move v4, v6

    .line 2060
    .end local v6    # "numDashes":I
    .end local v7    # "index":I
    .end local v8    # "c1":C
    .end local v9    # "c2":C
    .end local v10    # "c3":C
    .end local v13    # "c4":C
    .end local v14    # "key3":I
    .end local v15    # "key4":I
    .restart local v4    # "numDashes":I
    :cond_14
    :goto_4
    nop

    .line 2064
    :goto_5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v4, :cond_15

    .line 2065
    aget v7, v3, v6

    .line 2066
    .local v7, "pos":I
    add-int v8, v7, v6

    add-int v9, v7, v6

    const-string v10, "-"

    invoke-virtual {v0, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2068
    .end local v6    # "i":I
    .end local v7    # "pos":I
    :cond_15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 8
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1020
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1021
    .local v0, "dashPositions":[I
    const/4 v1, 0x0

    .line 1023
    .local v1, "numDashes":I
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 1025
    .local v2, "phoneNumPosition":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v4, v2, 0x6

    if-lt v3, v4, :cond_1

    .line 1026
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "numDashes":I
    .local v3, "numDashes":I
    add-int/lit8 v4, v2, 0x4

    aput v4, v0, v1

    move v1, v3

    .line 1028
    .end local v3    # "numDashes":I
    .restart local v1    # "numDashes":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 1029
    aget v4, v0, v3

    .line 1030
    .local v4, "pos":I
    add-int v5, v4, v3

    add-int v6, v4, v3

    const-string v7, "-"

    invoke-virtual {p0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    .end local v4    # "pos":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1032
    .end local v3    # "i":I
    :cond_2
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->removeTrailingDashes(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static formatIndiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 13
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1786
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1790
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 1791
    .local v2, "dashPositions":[I
    const/4 v3, 0x0

    .line 1792
    .local v3, "numDashes":I
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v4, p1, 0x1

    .line 1795
    .local v4, "phoneNumPosition":I
    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 1796
    .local v5, "c":C
    const/16 v6, 0x30

    if-lez v4, :cond_1

    if-ne v5, v6, :cond_2

    :cond_1
    if-ne v5, v6, :cond_8

    add-int/lit8 v7, v4, 0x4

    if-le v0, v7, :cond_8

    .line 1798
    :cond_2
    move v7, v4

    .line 1799
    .local v7, "index":I
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_3

    .line 1800
    add-int/lit8 v7, v7, 0x1

    .line 1802
    :cond_3
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 1803
    .local v6, "c1":C
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 1804
    .local v8, "c2":C
    add-int/lit8 v9, v7, 0x2

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 1805
    .local v9, "c3":C
    add-int/lit8 v10, v7, 0x3

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    .line 1807
    .local v10, "c4":C
    invoke-static {v6, v8, v9, v10}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->checkIndiaNumber(CCCC)I

    move-result v11

    .line 1809
    .local v11, "type":I
    if-nez v11, :cond_5

    .line 1810
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "numDashes":I
    .local v1, "numDashes":I
    add-int/lit8 v12, v7, 0x2

    aput v12, v2, v3

    .line 1812
    add-int/lit8 v3, v7, 0x7

    if-le v0, v3, :cond_4

    .line 1813
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "numDashes":I
    .restart local v3    # "numDashes":I
    add-int/lit8 v12, v7, 0x4

    aput v12, v2, v1

    goto :goto_1

    .line 1812
    .end local v3    # "numDashes":I
    .restart local v1    # "numDashes":I
    :cond_4
    move v3, v1

    goto :goto_1

    .line 1815
    .end local v1    # "numDashes":I
    .restart local v3    # "numDashes":I
    :cond_5
    if-ne v11, v1, :cond_6

    .line 1817
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "numDashes":I
    .restart local v1    # "numDashes":I
    add-int/lit8 v12, v7, 0x2

    aput v12, v2, v3

    move v3, v1

    goto :goto_1

    .line 1818
    .end local v1    # "numDashes":I
    .restart local v3    # "numDashes":I
    :cond_6
    const/4 v1, 0x3

    if-ne v11, v1, :cond_7

    .line 1820
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "numDashes":I
    .restart local v1    # "numDashes":I
    add-int/lit8 v12, v7, 0x3

    aput v12, v2, v3

    move v3, v1

    goto :goto_1

    .line 1823
    .end local v1    # "numDashes":I
    .restart local v3    # "numDashes":I
    :cond_7
    add-int/lit8 v1, v7, 0x5

    if-le v0, v1, :cond_9

    .line 1824
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "numDashes":I
    .restart local v1    # "numDashes":I
    add-int/lit8 v12, v7, 0x4

    aput v12, v2, v3

    move v3, v1

    goto :goto_1

    .line 1827
    .end local v1    # "numDashes":I
    .end local v6    # "c1":C
    .end local v7    # "index":I
    .end local v8    # "c2":C
    .end local v9    # "c3":C
    .end local v10    # "c4":C
    .end local v11    # "type":I
    .restart local v3    # "numDashes":I
    :cond_8
    add-int/lit8 v1, v4, 0x8

    if-le v0, v1, :cond_9

    .line 1829
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "numDashes":I
    .restart local v1    # "numDashes":I
    add-int/lit8 v6, v4, 0x2

    aput v6, v2, v3

    .line 1830
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "numDashes":I
    .restart local v3    # "numDashes":I
    add-int/lit8 v6, v4, 0x4

    aput v6, v2, v1

    goto :goto_2

    .line 1827
    :cond_9
    :goto_1
    nop

    .line 1833
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v3, :cond_a

    .line 1834
    aget v6, v2, v1

    .line 1835
    .local v6, "pos":I
    add-int v7, v6, v1

    add-int v8, v6, v1

    const-string v9, "-"

    invoke-virtual {p0, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1837
    .end local v1    # "i":I
    .end local v6    # "pos":I
    :cond_a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatIndonesiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1474
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1478
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1479
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1480
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 1482
    .local v3, "phoneNumPosition":I
    :goto_0
    const/16 v4, 0x38

    const/16 v5, 0x30

    if-gtz v3, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1

    goto :goto_1

    .line 1529
    :cond_1
    add-int/lit8 v5, v3, 0x7

    if-ne v0, v5, :cond_2

    .line 1530
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    goto/16 :goto_3

    .line 1531
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2
    add-int/lit8 v5, v3, 0x8

    if-ne v0, v5, :cond_3

    .line 1533
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x4

    aput v5, v1, v2

    move v2, v4

    goto/16 :goto_3

    .line 1534
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_11

    .line 1535
    add-int/lit8 v4, v3, 0x8

    if-le v0, v4, :cond_4

    add-int/lit8 v4, v3, 0xa

    if-gt v0, v4, :cond_4

    .line 1536
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    .line 1537
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v5, v3, 0x6

    aput v5, v1, v4

    goto/16 :goto_3

    .line 1538
    :cond_4
    add-int/lit8 v4, v3, 0xa

    if-le v0, v4, :cond_11

    .line 1539
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    .line 1540
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v5, v3, 0x7

    aput v5, v1, v4

    goto/16 :goto_3

    .line 1483
    :cond_5
    :goto_1
    move v6, v3

    .line 1484
    .local v6, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_6

    .line 1485
    add-int/lit8 v6, v6, 0x1

    .line 1487
    :cond_6
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 1488
    .local v5, "c1":C
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 1489
    .local v7, "c2":C
    add-int/lit8 v8, v6, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 1491
    .local v8, "c3":C
    if-ne v5, v4, :cond_9

    .line 1493
    add-int/lit8 v4, v6, 0x5

    if-le v0, v4, :cond_7

    .line 1494
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v9, v6, 0x3

    aput v9, v1, v2

    move v2, v4

    .line 1497
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_7
    add-int/lit8 v4, v6, 0x8

    if-lt v0, v4, :cond_8

    add-int/lit8 v4, v6, 0xa

    if-gt v0, v4, :cond_8

    .line 1498
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v9, v6, 0x6

    aput v9, v1, v2

    move v2, v4

    .line 1501
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_8
    add-int/lit8 v4, v6, 0xa

    if-le v0, v4, :cond_10

    .line 1502
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v9, v6, 0x7

    aput v9, v1, v2

    move v2, v4

    goto :goto_2

    .line 1504
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_9
    const/16 v4, 0x32

    const/16 v9, 0x31

    if-ne v5, v4, :cond_a

    if-eq v7, v9, :cond_c

    if-eq v7, v4, :cond_c

    const/16 v4, 0x34

    if-eq v7, v4, :cond_c

    :cond_a
    const/16 v4, 0x33

    if-ne v5, v4, :cond_b

    if-eq v7, v9, :cond_c

    :cond_b
    const/16 v4, 0x36

    if-ne v5, v4, :cond_e

    if-ne v7, v9, :cond_e

    const/16 v4, 0x39

    if-eq v8, v4, :cond_e

    .line 1509
    :cond_c
    add-int/lit8 v4, v6, 0x3

    if-le v0, v4, :cond_d

    .line 1510
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v9, v6, 0x2

    aput v9, v1, v2

    move v2, v4

    .line 1513
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_d
    add-int/lit8 v4, v6, 0x7

    if-le v0, v4, :cond_10

    .line 1514
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v9, v6, 0x6

    aput v9, v1, v2

    move v2, v4

    goto :goto_2

    .line 1519
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_e
    add-int/lit8 v4, v6, 0x4

    if-le v0, v4, :cond_f

    .line 1520
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v9, v6, 0x3

    aput v9, v1, v2

    move v2, v4

    .line 1523
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_f
    add-int/lit8 v4, v6, 0x7

    if-le v0, v4, :cond_10

    .line 1524
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v9, v6, 0x6

    aput v9, v1, v2

    move v2, v4

    .line 1527
    .end local v4    # "numDashes":I
    .end local v5    # "c1":C
    .end local v6    # "index":I
    .end local v7    # "c2":C
    .end local v8    # "c3":C
    .restart local v2    # "numDashes":I
    :cond_10
    :goto_2
    nop

    .line 1545
    :cond_11
    :goto_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v2, :cond_12

    .line 1546
    aget v5, v1, v4

    .line 1547
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1549
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_12
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatItalyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 2108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2112
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2113
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 2114
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 2115
    .local v3, "phoneNumPosition":I
    :goto_0
    const/16 v4, 0x30

    if-gtz v3, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_1

    .line 2157
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 2158
    .local v4, "c1":C
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 2159
    .local v5, "c2":C
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 2160
    .local v6, "c3":C
    add-int/lit8 v7, v4, -0x30

    mul-int/lit8 v7, v7, 0x64

    add-int/lit8 v8, v5, -0x30

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v7, v8

    add-int/lit8 v8, v6, -0x30

    add-int/2addr v7, v8

    .line 2161
    .local v7, "key":I
    sget-object v8, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->ITALY_MOBILE_PREFIXS:[I

    invoke-static {v8, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    if-ltz v8, :cond_c

    .line 2163
    add-int/lit8 v8, v3, 0x5

    if-le v0, v8, :cond_2

    .line 2164
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .local v8, "numDashes":I
    add-int/lit8 v9, v3, 0x3

    aput v9, v1, v2

    move v2, v8

    .line 2167
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2
    add-int/lit8 v8, v3, 0x7

    if-le v0, v8, :cond_c

    .line 2168
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v3, 0x6

    aput v9, v1, v2

    move v2, v8

    goto/16 :goto_5

    .line 2116
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    .end local v6    # "c3":C
    .end local v7    # "key":I
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_3
    :goto_1
    move v5, v3

    .line 2117
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_4

    .line 2118
    add-int/lit8 v5, v5, 0x1

    .line 2120
    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 2121
    .local v6, "c1":C
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 2122
    .local v7, "c2":C
    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 2123
    .local v8, "c3":C
    add-int/lit8 v9, v6, -0x30

    mul-int/lit8 v9, v9, 0x64

    add-int/lit8 v10, v7, -0x30

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v9, v10

    add-int/lit8 v10, v8, -0x30

    add-int/2addr v9, v10

    .line 2125
    .local v9, "key":I
    sget-object v10, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->ITALY_MOBILE_PREFIXS:[I

    invoke-static {v10, v9}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v10

    if-ltz v10, :cond_6

    .line 2127
    add-int/lit8 v4, v5, 0x5

    if-le v0, v4, :cond_5

    .line 2128
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v10, v5, 0x3

    aput v10, v1, v2

    move v2, v4

    .line 2131
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_5
    add-int/lit8 v4, v5, 0x8

    if-le v0, v4, :cond_b

    .line 2132
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v10, v5, 0x6

    aput v10, v1, v2

    move v2, v4

    goto :goto_4

    .line 2134
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_6
    const/16 v10, 0x32

    if-eq v6, v10, :cond_a

    const/16 v10, 0x36

    if-ne v6, v10, :cond_7

    goto :goto_3

    .line 2138
    :cond_7
    if-eq v7, v4, :cond_9

    const/16 v4, 0x31

    if-eq v7, v4, :cond_9

    const/16 v4, 0x35

    if-eq v7, v4, :cond_9

    const/16 v4, 0x39

    if-ne v7, v4, :cond_8

    goto :goto_2

    .line 2152
    :cond_8
    add-int/lit8 v4, v5, 0x5

    if-le v0, v4, :cond_b

    .line 2153
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v10, v5, 0x3

    aput v10, v1, v2

    move v2, v4

    goto :goto_4

    .line 2147
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_9
    :goto_2
    add-int/lit8 v4, v5, 0x4

    if-le v0, v4, :cond_b

    .line 2148
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v10, v5, 0x2

    aput v10, v1, v2

    move v2, v4

    goto :goto_4

    .line 2137
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_a
    :goto_3
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v10, v5, 0x1

    aput v10, v1, v2

    move v2, v4

    .line 2156
    .end local v4    # "numDashes":I
    .end local v5    # "index":I
    .end local v6    # "c1":C
    .end local v7    # "c2":C
    .end local v8    # "c3":C
    .end local v9    # "key":I
    .restart local v2    # "numDashes":I
    :cond_b
    :goto_4
    nop

    .line 2173
    :cond_c
    :goto_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    if-ge v4, v2, :cond_d

    .line 2174
    aget v5, v1, v4

    .line 2175
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2173
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2177
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatMacauNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 992
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 994
    .local v0, "phoneNumPosition":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_1

    .line 995
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v0, 0x2

    const-string v3, " "

    invoke-virtual {p0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    add-int/lit8 v1, p1, 0x3

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 998
    :cond_1
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatMalaysiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1575
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1579
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1580
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1581
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 1583
    .local v3, "phoneNumPosition":I
    :goto_0
    const/16 v4, 0x31

    const/16 v5, 0x32

    const/16 v6, 0x30

    if-gtz v3, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1

    goto :goto_1

    .line 1620
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_2

    add-int/lit8 v5, v3, 0x8

    if-le v0, v5, :cond_2

    .line 1622
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x1

    aput v5, v1, v2

    .line 1624
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v5, v3, 0x5

    aput v5, v1, v4

    goto/16 :goto_3

    .line 1625
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_d

    add-int/lit8 v4, v3, 0x8

    if-le v0, v4, :cond_d

    .line 1627
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x2

    aput v5, v1, v2

    .line 1628
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v5, v3, 0x5

    aput v5, v1, v4

    goto/16 :goto_3

    .line 1584
    :cond_3
    :goto_1
    move v7, v3

    .line 1585
    .local v7, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_4

    .line 1586
    add-int/lit8 v7, v7, 0x1

    .line 1588
    :cond_4
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 1590
    .local v6, "c1":C
    const/16 v8, 0x33

    if-lt v6, v8, :cond_5

    const/16 v8, 0x37

    if-le v6, v8, :cond_6

    :cond_5
    const/16 v8, 0x39

    if-ne v6, v8, :cond_7

    .line 1592
    :cond_6
    add-int/lit8 v4, v7, 0x4

    if-le v0, v4, :cond_c

    .line 1593
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x1

    aput v5, v1, v2

    move v2, v4

    goto :goto_2

    .line 1595
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_7
    const/16 v8, 0x38

    if-ne v6, v8, :cond_8

    .line 1597
    add-int/lit8 v4, v7, 0x4

    if-le v0, v4, :cond_c

    .line 1598
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x2

    aput v5, v1, v2

    move v2, v4

    goto :goto_2

    .line 1600
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_8
    if-ne v6, v4, :cond_a

    .line 1603
    add-int/lit8 v4, v7, 0x4

    if-le v0, v4, :cond_9

    .line 1604
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x2

    aput v5, v1, v2

    move v2, v4

    .line 1607
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_9
    add-int/lit8 v4, v7, 0x6

    if-le v0, v4, :cond_c

    .line 1608
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x5

    aput v5, v1, v2

    move v2, v4

    goto :goto_2

    .line 1610
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_a
    if-ne v6, v5, :cond_c

    .line 1612
    add-int/lit8 v4, v7, 0x4

    if-le v0, v4, :cond_b

    .line 1613
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x1

    aput v5, v1, v2

    move v2, v4

    .line 1616
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_b
    add-int/lit8 v4, v7, 0x7

    if-le v0, v4, :cond_c

    .line 1617
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x5

    aput v5, v1, v2

    move v2, v4

    .line 1620
    .end local v4    # "numDashes":I
    .end local v6    # "c1":C
    .end local v7    # "index":I
    .restart local v2    # "numDashes":I
    :cond_c
    :goto_2
    nop

    .line 1631
    :cond_d
    :goto_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v2, :cond_e

    .line 1632
    aget v5, v1, v4

    .line 1633
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1635
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatNewZealandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1322
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1326
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1327
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1328
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 1330
    .local v3, "phoneNumPosition":I
    :goto_0
    const/16 v4, 0x30

    if-gtz v3, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_1

    .line 1358
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(I)V

    .line 1359
    add-int/lit8 v4, v3, 0x7

    if-ne v0, v4, :cond_8

    .line 1360
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    goto :goto_3

    .line 1331
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2
    :goto_1
    move v5, v3

    .line 1332
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_3

    .line 1333
    add-int/lit8 v5, v5, 0x1

    .line 1336
    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v6, 0x32

    if-ne v4, v6, :cond_5

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v6, 0x34

    if-eq v4, v6, :cond_5

    .line 1338
    add-int/lit8 v4, v5, 0x4

    if-le v0, v4, :cond_4

    .line 1339
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x2

    aput v6, v1, v2

    move v2, v4

    .line 1342
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_4
    add-int/lit8 v4, v5, 0x6

    if-le v0, v4, :cond_7

    .line 1343
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x5

    aput v6, v1, v2

    move v2, v4

    goto :goto_2

    .line 1347
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_5
    add-int/lit8 v4, v5, 0x3

    if-le v0, v4, :cond_6

    .line 1348
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x1

    aput v6, v1, v2

    move v2, v4

    .line 1351
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_6
    add-int/lit8 v4, v5, 0x6

    if-le v0, v4, :cond_7

    .line 1352
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x4

    aput v6, v1, v2

    move v2, v4

    .line 1355
    .end local v4    # "numDashes":I
    .end local v5    # "index":I
    .restart local v2    # "numDashes":I
    :cond_7
    :goto_2
    nop

    .line 1364
    :cond_8
    :goto_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v2, :cond_9

    .line 1365
    aget v5, v1, v4

    .line 1366
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1368
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;

    .line 339
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 340
    .local v0, "sCachedLocale":Ljava/util/Locale;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MTK Format Number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->log(Ljava/lang/String;)V

    .line 412
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->checkInputNormalNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abnormal Number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", do nothing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->log(Ljava/lang/String;)V

    .line 414
    return-object p0

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 417
    const/4 v0, 0x1

    if-nez p1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p1

    .line 418
    .local v1, "formatType":I
    :goto_0
    move-object v2, p0

    .line 419
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_5

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2b

    if-ne v3, v5, :cond_5

    .line 420
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x31

    if-ne v3, v5, :cond_2

    .line 421
    const/4 v1, 0x1

    goto :goto_1

    .line 422
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x3

    if-lt v3, v6, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x38

    if-ne v3, v6, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    .line 423
    const/4 v1, 0x2

    goto :goto_1

    .line 424
    :cond_3
    if-eq v1, v0, :cond_4

    if-ne v1, v4, :cond_5

    .line 425
    :cond_4
    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->mtkFormatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 426
    .end local v2    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    return-object v0

    .line 429
    .end local v0    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "formatNumber:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->log(Ljava/lang/String;)V

    .line 430
    if-eq v1, v0, :cond_6

    if-eq v1, v4, :cond_6

    .line 436
    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->mtkFormatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .end local v2    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_2

    .line 433
    .end local v0    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_6
    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 434
    .end local v2    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    nop

    .line 439
    :goto_2
    return-object v0
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 8
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 358
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 359
    .local v1, "oldIndex":I
    move v2, v1

    .line 360
    .local v2, "digitCount":I
    const/4 v3, 0x0

    .line 362
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x2d

    const/16 v5, 0x20

    if-ge v3, v1, :cond_2

    .line 363
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .line 364
    .local v6, "c":C
    if-eq v6, v5, :cond_0

    if-ne v6, v4, :cond_1

    .line 365
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 362
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    .end local v6    # "c":C
    :cond_2
    const/4 v6, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {p0, v6, v7, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 372
    const/4 v6, 0x0

    .line 373
    .local v6, "count":I
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    if-ge v6, v2, :cond_4

    .line 374
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    .line 375
    .local v7, "c":C
    if-eq v7, v5, :cond_3

    if-eq v7, v4, :cond_3

    .line 376
    add-int/lit8 v6, v6, 0x1

    .line 373
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 379
    .end local v7    # "c":C
    :cond_4
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 383
    .end local v1    # "oldIndex":I
    .end local v2    # "digitCount":I
    .end local v3    # "i":I
    .end local v6    # "count":I
    :cond_5
    return-void
.end method

.method private static formatPolandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1208
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1212
    .local v0, "length":I
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 1213
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1214
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 1216
    .local v3, "phoneNumPosition":I
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x35

    if-lt v4, v5, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x38

    if-gt v4, v5, :cond_3

    .line 1217
    add-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_1

    .line 1218
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x2

    aput v5, v1, v2

    move v2, v4

    .line 1220
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_1
    add-int/lit8 v4, v3, 0x6

    if-le v0, v4, :cond_2

    .line 1221
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x5

    aput v5, v1, v2

    move v2, v4

    .line 1223
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2
    add-int/lit8 v4, v3, 0x8

    if-le v0, v4, :cond_5

    .line 1224
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x7

    aput v5, v1, v2

    move v2, v4

    goto :goto_1

    .line 1227
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_3
    add-int/lit8 v4, v3, 0x5

    if-le v0, v4, :cond_4

    .line 1228
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    .line 1230
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_4
    add-int/lit8 v4, v3, 0x8

    if-le v0, v4, :cond_5

    .line 1231
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x6

    aput v5, v1, v2

    move v2, v4

    .line 1235
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_5
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_6

    .line 1236
    aget v5, v1, v4

    .line 1237
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1239
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatPortugalNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1128
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1129
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1130
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 1131
    .local v3, "phoneNumPosition":I
    :goto_0
    add-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_1

    .line 1132
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x2

    aput v5, v1, v2

    move v2, v4

    .line 1134
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_1
    add-int/lit8 v4, v3, 0x8

    if-le v0, v4, :cond_2

    .line 1135
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x5

    aput v5, v1, v2

    move v2, v4

    .line 1137
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 1138
    aget v5, v1, v4

    .line 1139
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    .end local v5    # "pos":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1141
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatRussianNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1859
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1863
    .local v0, "length":I
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 1864
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1865
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 1867
    .local v3, "phoneNumPosition":I
    :goto_0
    if-lez v3, :cond_3

    .line 1869
    add-int/lit8 v4, v3, 0x5

    if-le v0, v4, :cond_1

    .line 1870
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    .line 1873
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_1
    add-int/lit8 v4, v3, 0x7

    if-le v0, v4, :cond_2

    .line 1874
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x6

    aput v5, v1, v2

    move v2, v4

    .line 1877
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2
    add-int/lit8 v4, v3, 0x9

    if-le v0, v4, :cond_6

    .line 1878
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x8

    aput v5, v1, v2

    move v2, v4

    goto :goto_1

    .line 1880
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_3
    add-int/lit8 v4, v3, 0x6

    if-ne v0, v4, :cond_4

    .line 1882
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x2

    aput v5, v1, v2

    .line 1883
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v5, v3, 0x4

    aput v5, v1, v4

    goto :goto_1

    .line 1884
    :cond_4
    add-int/lit8 v4, v3, 0x7

    if-ne v0, v4, :cond_5

    .line 1886
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    .line 1887
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v5, v3, 0x5

    aput v5, v1, v4

    goto :goto_1

    .line 1888
    :cond_5
    add-int/lit8 v4, v3, 0x8

    if-lt v0, v4, :cond_6

    .line 1890
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    .line 1891
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v5, v3, 0x6

    aput v5, v1, v4

    .line 1893
    add-int/lit8 v4, v3, 0x9

    if-le v0, v4, :cond_6

    .line 1894
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x8

    aput v5, v1, v2

    move v2, v4

    .line 1898
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_6
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_7

    .line 1899
    aget v5, v1, v4

    .line 1900
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1902
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatSpainNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1652
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1656
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1657
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1658
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 1660
    .local v3, "phoneNumPosition":I
    :goto_0
    add-int/lit8 v4, v3, 0x5

    if-le v0, v4, :cond_1

    .line 1661
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    .line 1664
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_1
    add-int/lit8 v4, v3, 0x7

    if-le v0, v4, :cond_2

    .line 1665
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x6

    aput v5, v1, v2

    move v2, v4

    .line 1668
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 1669
    aget v5, v1, v4

    .line 1670
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1672
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatTaiwanNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 13
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 907
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 911
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 912
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 913
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 915
    .local v3, "phoneNumPosition":I
    :goto_0
    const/16 v4, 0x30

    if-gtz v3, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_1

    .line 965
    :cond_1
    add-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_2

    add-int/lit8 v4, v3, 0x8

    if-ge v0, v4, :cond_2

    .line 966
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    goto/16 :goto_3

    .line 967
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2
    add-int/lit8 v4, v3, 0x8

    if-lt v0, v4, :cond_15

    .line 968
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x4

    aput v5, v1, v2

    move v2, v4

    goto/16 :goto_3

    .line 916
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_3
    :goto_1
    move v5, v3

    .line 917
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_4

    .line 918
    add-int/lit8 v5, v5, 0x1

    .line 920
    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 921
    .local v4, "c1":C
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 922
    .local v6, "c2":C
    add-int/lit8 v7, v5, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 924
    .local v7, "c3":C
    const/16 v8, 0x39

    if-ne v4, v8, :cond_6

    .line 930
    add-int/lit8 v8, v5, 0x4

    if-le v0, v8, :cond_5

    .line 931
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .local v8, "numDashes":I
    add-int/lit8 v9, v5, 0x3

    aput v9, v1, v2

    move v2, v8

    .line 933
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_5
    add-int/lit8 v8, v5, 0x7

    if-le v0, v8, :cond_14

    .line 934
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x6

    aput v9, v1, v2

    move v2, v8

    goto/16 :goto_2

    .line 936
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_6
    const/16 v9, 0x36

    const/16 v10, 0x32

    const/16 v11, 0x38

    if-ne v4, v11, :cond_7

    if-ne v6, v10, :cond_7

    if-eq v7, v9, :cond_8

    :cond_7
    const/16 v12, 0x33

    if-ne v4, v11, :cond_a

    if-ne v6, v12, :cond_a

    if-ne v7, v9, :cond_a

    .line 938
    :cond_8
    add-int/lit8 v8, v5, 0x4

    if-le v0, v8, :cond_9

    .line 939
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x3

    aput v9, v1, v2

    move v2, v8

    .line 942
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_9
    add-int/lit8 v8, v5, 0x7

    if-le v0, v8, :cond_14

    .line 943
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x6

    aput v9, v1, v2

    move v2, v8

    goto :goto_2

    .line 945
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_a
    if-ne v4, v12, :cond_b

    const/16 v9, 0x37

    if-eq v6, v9, :cond_e

    :cond_b
    const/16 v9, 0x34

    if-ne v4, v9, :cond_c

    if-eq v6, v8, :cond_e

    :cond_c
    if-ne v4, v11, :cond_d

    if-eq v6, v8, :cond_e

    :cond_d
    if-ne v4, v11, :cond_11

    if-ne v6, v10, :cond_11

    .line 947
    :cond_e
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x2

    aput v9, v1, v2

    .line 949
    add-int/lit8 v2, v5, 0x6

    if-le v0, v2, :cond_f

    add-int/lit8 v2, v5, 0xa

    if-ge v0, v2, :cond_f

    .line 950
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v9, v5, 0x5

    aput v9, v1, v8

    goto :goto_2

    .line 951
    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_f
    add-int/lit8 v2, v5, 0xa

    if-lt v0, v2, :cond_10

    .line 952
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v9, v5, 0x6

    aput v9, v1, v8

    goto :goto_2

    .line 951
    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_10
    move v2, v8

    goto :goto_2

    .line 956
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_11
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x1

    aput v9, v1, v2

    .line 958
    add-int/lit8 v2, v5, 0x6

    if-le v0, v2, :cond_12

    add-int/lit8 v2, v5, 0x9

    if-ge v0, v2, :cond_12

    .line 959
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v9, v5, 0x4

    aput v9, v1, v8

    goto :goto_2

    .line 960
    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_12
    add-int/lit8 v2, v5, 0x9

    if-lt v0, v2, :cond_13

    .line 961
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v9, v5, 0x5

    aput v9, v1, v8

    goto :goto_2

    .line 960
    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_13
    move v2, v8

    .line 964
    .end local v4    # "c1":C
    .end local v5    # "index":I
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_14
    :goto_2
    nop

    .line 971
    :cond_15
    :goto_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v2, :cond_16

    .line 972
    aget v5, v1, v4

    .line 973
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .end local v5    # "pos":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 975
    .end local v4    # "i":I
    :cond_16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatThailandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1388
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1392
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1393
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1394
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 1396
    .local v3, "phoneNumPosition":I
    :goto_0
    const/16 v4, 0x30

    if-gtz v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_8

    .line 1397
    :cond_1
    move v5, v3

    .line 1398
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_2

    .line 1399
    add-int/lit8 v5, v5, 0x1

    .line 1402
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v6, 0x38

    if-ne v4, v6, :cond_4

    .line 1404
    add-int/lit8 v4, v5, 0x4

    if-le v0, v4, :cond_3

    .line 1405
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v6, v5, 0x2

    aput v6, v1, v2

    move v2, v4

    .line 1408
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_3
    add-int/lit8 v4, v5, 0x6

    if-le v0, v4, :cond_8

    .line 1409
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x5

    aput v6, v1, v2

    move v2, v4

    goto :goto_1

    .line 1411
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v6, 0x32

    if-ne v4, v6, :cond_6

    .line 1413
    add-int/lit8 v4, v5, 0x3

    if-le v0, v4, :cond_5

    .line 1414
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x1

    aput v6, v1, v2

    move v2, v4

    .line 1417
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_5
    add-int/lit8 v4, v5, 0x6

    if-le v0, v4, :cond_8

    .line 1418
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x4

    aput v6, v1, v2

    move v2, v4

    goto :goto_1

    .line 1422
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_6
    add-int/lit8 v4, v5, 0x4

    if-le v0, v4, :cond_7

    .line 1423
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x2

    aput v6, v1, v2

    move v2, v4

    .line 1426
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_7
    add-int/lit8 v4, v5, 0x6

    if-le v0, v4, :cond_8

    .line 1427
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x5

    aput v6, v1, v2

    move v2, v4

    .line 1441
    .end local v4    # "numDashes":I
    .end local v5    # "index":I
    .restart local v2    # "numDashes":I
    :cond_8
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_9

    .line 1442
    aget v5, v1, v4

    .line 1443
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1445
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatTurkeyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 2383
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2387
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2388
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 2389
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 2390
    .local v3, "phoneNumPosition":I
    :goto_0
    const/16 v4, 0x30

    if-gtz v3, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_1

    .line 2405
    :cond_1
    add-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_6

    .line 2406
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    goto :goto_2

    .line 2391
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2
    :goto_1
    move v5, v3

    .line 2392
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_3

    .line 2393
    add-int/lit8 v5, v5, 0x1

    .line 2396
    :cond_3
    add-int/lit8 v4, v5, 0x4

    if-le v0, v4, :cond_4

    .line 2397
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x3

    aput v6, v1, v2

    move v2, v4

    .line 2400
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_4
    add-int/lit8 v4, v5, 0x7

    if-le v0, v4, :cond_5

    .line 2401
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x6

    aput v6, v1, v2

    move v2, v4

    .line 2403
    .end local v4    # "numDashes":I
    .end local v5    # "index":I
    .restart local v2    # "numDashes":I
    :cond_5
    nop

    .line 2410
    :cond_6
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_7

    .line 2411
    aget v5, v1, v4

    .line 2412
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2410
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2414
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatVietnamNubmer(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 12
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1056
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1060
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1061
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1062
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    .line 1064
    .local v3, "phoneNumPosition":I
    :goto_0
    const/16 v4, 0x30

    if-gtz v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_e

    .line 1065
    :cond_1
    move v5, v3

    .line 1066
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_2

    .line 1067
    add-int/lit8 v5, v5, 0x1

    .line 1069
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 1070
    .local v4, "c1":C
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 1072
    .local v6, "c2":C
    const/16 v7, 0x34

    if-eq v4, v7, :cond_d

    const/16 v8, 0x38

    if-ne v4, v8, :cond_3

    goto/16 :goto_1

    .line 1074
    :cond_3
    const/16 v9, 0x33

    const/16 v10, 0x32

    const/16 v11, 0x31

    if-ne v4, v10, :cond_4

    if-eq v6, v11, :cond_7

    if-eq v6, v9, :cond_7

    if-eq v6, v7, :cond_7

    if-eq v6, v8, :cond_7

    :cond_4
    const/16 v7, 0x35

    if-ne v4, v9, :cond_5

    if-eq v6, v10, :cond_7

    if-eq v6, v7, :cond_7

    :cond_5
    const/16 v9, 0x36

    if-ne v4, v9, :cond_6

    if-eq v6, v7, :cond_7

    :cond_6
    const/16 v7, 0x37

    if-ne v4, v7, :cond_8

    if-eq v6, v11, :cond_7

    if-ne v6, v8, :cond_8

    .line 1079
    :cond_7
    add-int/lit8 v7, v5, 0x4

    if-le v0, v7, :cond_e

    .line 1080
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "numDashes":I
    .local v7, "numDashes":I
    add-int/lit8 v8, v5, 0x3

    aput v8, v1, v2

    move v2, v7

    goto :goto_2

    .line 1082
    .end local v7    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_8
    const/16 v7, 0x39

    if-ne v4, v7, :cond_a

    .line 1084
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v8, v5, 0x2

    aput v8, v1, v2

    .line 1086
    add-int/lit8 v2, v5, 0x6

    if-le v0, v2, :cond_9

    .line 1087
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v8, v5, 0x5

    aput v8, v1, v7

    goto :goto_2

    .line 1086
    .end local v2    # "numDashes":I
    .restart local v7    # "numDashes":I
    :cond_9
    move v2, v7

    goto :goto_2

    .line 1089
    .end local v7    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_a
    if-ne v4, v11, :cond_c

    .line 1091
    add-int/lit8 v7, v5, 0x4

    if-le v0, v7, :cond_b

    .line 1092
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v8, v5, 0x3

    aput v8, v1, v2

    move v2, v7

    .line 1095
    .end local v7    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_b
    add-int/lit8 v7, v5, 0x7

    if-le v0, v7, :cond_e

    .line 1096
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v8, v5, 0x6

    aput v8, v1, v2

    move v2, v7

    goto :goto_2

    .line 1100
    .end local v7    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_c
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v8, v5, 0x2

    aput v8, v1, v2

    move v2, v7

    goto :goto_2

    .line 1073
    .end local v7    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_d
    :goto_1
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v8, v5, 0x1

    aput v8, v1, v2

    move v2, v7

    .line 1103
    .end local v4    # "c1":C
    .end local v5    # "index":I
    .end local v6    # "c2":C
    .end local v7    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_e
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_f

    .line 1104
    aget v5, v1, v4

    .line 1105
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .end local v5    # "pos":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1107
    .end local v4    # "i":I
    :cond_f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static getDefaultSimCountryIso()Ljava/lang/String;
    .locals 5

    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, "simId":I
    const/4 v1, 0x0

    .line 272
    .local v1, "iso":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    const/4 v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    const/4 v0, 0x2

    goto :goto_0

    .line 278
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 279
    const/4 v0, 0x3

    .line 281
    :cond_3
    :goto_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 282
    .local v2, "subId":[I
    if-eqz v2, :cond_4

    array-length v4, v2

    if-lez v4, :cond_4

    .line 283
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    aget v3, v2, v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v1

    .line 285
    :cond_4
    return-object v1
.end method

.method private static getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I
    .locals 10
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "prefixs"    # [Ljava/lang/String;

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "result":I
    const/4 v1, 0x0

    .line 631
    .local v1, "index":I
    const/4 v2, 0x0

    .line 632
    .local v2, "startIndex":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 634
    .local v3, "match":[I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_0

    .line 635
    const/4 v2, 0x1

    goto :goto_1

    .line 638
    :cond_0
    array-length v5, p1

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, p1, v6

    .line 639
    .local v7, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 640
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 641
    goto :goto_1

    .line 638
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 646
    :cond_2
    :goto_1
    if-lez v2, :cond_4

    .line 647
    sget-object v5, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->FORMAT_COUNTRY_CODES:[Ljava/lang/String;

    array-length v6, v5

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 648
    .local v8, "pattern":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 649
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 650
    move v0, v1

    .line 651
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 652
    goto :goto_3

    .line 647
    .end local v8    # "pattern":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 656
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    .line 657
    const/4 v2, 0x0

    .line 659
    :cond_5
    aput v2, v3, v4

    .line 660
    const/4 v4, 0x1

    aput v0, v3, v4

    .line 661
    return-object v3
.end method

.method private static getFormatTypeByCommonPrefix(Ljava/lang/String;)[I
    .locals 11
    .param p0, "text"    # Ljava/lang/String;

    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, "result":I
    const/4 v1, 0x0

    .line 594
    .local v1, "index":I
    const/4 v2, 0x0

    .line 595
    .local v2, "startIndex":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 597
    .local v3, "match":[I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x2b

    if-ne v4, v7, :cond_0

    .line 598
    const/4 v2, 0x1

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x30

    if-ne v4, v7, :cond_1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_1

    .line 600
    const/4 v2, 0x2

    .line 602
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 603
    sget-object v4, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->FORMAT_COUNTRY_CODES:[Ljava/lang/String;

    array-length v7, v4

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v4, v8

    .line 604
    .local v9, "pattern":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 605
    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 606
    move v0, v1

    .line 607
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 608
    goto :goto_2

    .line 603
    .end local v9    # "pattern":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 612
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 613
    const/4 v2, 0x0

    .line 615
    :cond_4
    aput v2, v3, v5

    .line 616
    aput v0, v3, v6

    .line 617
    return-object v3
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 256
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getDefaultSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "simIso":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFormatTypeForLocale Get sim sio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->log(Ljava/lang/String;)V

    .line 258
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 7
    .param p0, "country"    # Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "type":I
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatTypeFromCountryCodeInternal(Ljava/lang/String;)I

    move-result v0

    .line 313
    if-nez v0, :cond_2

    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "index":I
    sget-object v2, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->FORMAT_COUNTRY_NAMES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 316
    .local v5, "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 317
    invoke-virtual {v5, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 318
    move v0, v1

    .line 319
    goto :goto_1

    .line 315
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 323
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const-string v2, "UK"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 324
    const/4 v0, 0x7

    .line 328
    .end local v1    # "index":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get Format Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->log(Ljava/lang/String;)V

    .line 329
    return v0
.end method

.method private static getFormatTypeFromCountryCodeInternal(Ljava/lang/String;)I
    .locals 3
    .param p0, "country"    # Ljava/lang/String;

    .line 291
    sget-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v0, v0

    .line 292
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 293
    sget-object v2, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 294
    const/4 v2, 0x1

    return v2

    .line 292
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v1    # "i":I
    :cond_1
    const-string v1, "jp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 298
    const/4 v1, 0x2

    return v1

    .line 300
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private static getFormatTypeFromNumber(Ljava/lang/String;I)[I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultFormatType"    # I

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "match":[I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 722
    :pswitch_0
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->BRAZIL_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0

    .line 719
    :pswitch_1
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->AUSTRALIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 720
    goto :goto_0

    .line 716
    :pswitch_2
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->THAILAND_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 717
    goto :goto_0

    .line 713
    :pswitch_3
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->INDONESIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 714
    goto :goto_0

    .line 710
    :pswitch_4
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->SINGAPORE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 711
    goto :goto_0

    .line 707
    :pswitch_5
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->FRANCE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 708
    goto :goto_0

    .line 695
    :pswitch_6
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 696
    goto :goto_0

    .line 698
    :pswitch_7
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->HONGKONG_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 699
    goto :goto_0

    .line 692
    :pswitch_8
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatTypeByCommonPrefix(Ljava/lang/String;)[I

    move-result-object v0

    .line 693
    goto :goto_0

    .line 704
    :pswitch_9
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->JAPAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 705
    goto :goto_0

    .line 701
    :pswitch_a
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->NANP_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 702
    nop

    .line 725
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "info"    # Ljava/lang/String;

    .line 2424
    return-void
.end method

.method static mtkFormatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultFormatType"    # I

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MTK Format Number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->log(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 452
    .local v0, "length":I
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 454
    return-object p0

    .line 459
    :cond_0
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 463
    :cond_1
    move v1, p1

    .line 465
    .local v1, "formatType":I
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatTypeFromNumber(Ljava/lang/String;I)[I

    move-result-object v2

    .line 466
    .local v2, "match":[I
    const/4 v3, 0x0

    .line 467
    .local v3, "startIndex":I
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    aget v6, v2, v5

    if-eqz v6, :cond_2

    .line 468
    aget v1, v2, v5

    .line 469
    aget v3, v2, v4

    .line 473
    :cond_2
    add-int/lit8 v5, v3, 0x4

    if-ge v0, v5, :cond_3

    .line 474
    return-object p0

    .line 475
    :cond_3
    add-int/lit8 v5, v3, 0xf

    if-le v0, v5, :cond_4

    .line 476
    return-object p0

    .line 478
    :cond_4
    move-object v5, p0

    .line 479
    .local v5, "result":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v7, -0x1

    .line 482
    .local v7, "blankPosition":I
    invoke-static {v6, v3}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->removeAllDashAndFormatBlank(Ljava/lang/StringBuilder;I)I

    move-result v7

    .line 484
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v9, v3, 0x4

    if-lt v8, v9, :cond_8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v9, v3, 0x4

    if-ne v8, v9, :cond_5

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_5

    goto/16 :goto_1

    .line 488
    :cond_5
    packed-switch v1, :pswitch_data_0

    .line 579
    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .end local v5    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 575
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_0
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatTurkeyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 576
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 572
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_1
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatBrazilNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 573
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 539
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_2
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatNewZealandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 540
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 536
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_3
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatAustraliaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 537
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 533
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_4
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatPolandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 534
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 530
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_5
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatPortugalNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 531
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 527
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_6
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatVietnamNubmer(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 528
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 542
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_7
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatThailandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 543
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 545
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_8
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatIndonesiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 546
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 548
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_9
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatMalaysiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 549
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 551
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_a
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatSpainNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 552
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 560
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_b
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatIndiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 561
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 554
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_c
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatRussianNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 555
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 557
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_d
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatGermanyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 558
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 563
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_e
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatItalyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 564
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 566
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_f
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatFranceNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 567
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 569
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_10
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatEnglandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 570
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 524
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_11
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatTaiwanNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 525
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 497
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_12
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatMacauNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 498
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_0

    .line 494
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_13
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 495
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_0

    .line 490
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_14
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatChinaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 491
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_0

    .line 512
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_15
    const/4 v8, 0x0

    .line 513
    .local v8, "ssb2":Landroid/text/SpannableStringBuilder;
    if-ltz v7, :cond_6

    .line 514
    new-instance v9, Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v8, v9

    .line 515
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    .line 516
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v6, v4, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_0

    .line 518
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_6
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 519
    .end local v8    # "ssb2":Landroid/text/SpannableStringBuilder;
    .local v4, "ssb2":Landroid/text/SpannableStringBuilder;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    .line 520
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 522
    move-object v4, v5

    goto :goto_0

    .line 500
    .end local v4    # "ssb2":Landroid/text/SpannableStringBuilder;
    :pswitch_16
    const/4 v8, 0x0

    .line 501
    .local v8, "ssb":Landroid/text/SpannableStringBuilder;
    if-ltz v7, :cond_7

    .line 502
    new-instance v9, Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v8, v9

    .line 503
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 504
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v6, v4, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .end local v5    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    goto :goto_0

    .line 506
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_7
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 507
    .end local v8    # "ssb":Landroid/text/SpannableStringBuilder;
    .local v4, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 508
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 510
    move-object v4, v5

    .line 581
    .end local v5    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 485
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_8
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 460
    .end local v1    # "formatType":I
    .end local v2    # "match":[I
    .end local v3    # "startIndex":I
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "blankPosition":I
    :cond_9
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_13
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 734
    const/4 v0, 0x0

    .line 735
    .local v0, "p":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 736
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 739
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static removeAllDashAndFormatBlank(Ljava/lang/StringBuilder;I)I
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "startIndex"    # I

    .line 752
    const/4 v0, 0x0

    .line 753
    .local v0, "p":I
    const/4 v1, -0x1

    .line 754
    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 755
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 758
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 761
    :cond_2
    if-lez p1, :cond_3

    .line 763
    move v1, p1

    .line 764
    const-string v2, " "

    invoke-virtual {p0, v1, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :cond_3
    return v1
.end method

.method private static removeTrailingDashes(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 777
    .local v0, "len":I
    :goto_0
    if-lez v0, :cond_0

    .line 778
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 779
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 780
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 785
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
