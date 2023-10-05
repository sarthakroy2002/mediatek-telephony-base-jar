.class public Lmediatek/telephony/MtkDisconnectCause;
.super Ljava/lang/Object;
.source "MtkDisconnectCause.java"


# static fields
.field public static final CAUSE_ADDRESS_INCOMPLETE:I = 0x5f4

.field public static final CAUSE_AMBIGUOUS:I = 0x5f5

.field public static final CAUSE_BAD_EXTENSION:I = 0x5ed

.field public static final CAUSE_BAD_GATEWAY:I = 0x5fb

.field public static final CAUSE_BAD_REQUEST:I = 0x5dd

.field public static final CAUSE_BUSY_EVERYWHERE:I = 0x600

.field public static final CAUSE_BUSY_HERE:I = 0x5f6

.field public static final CAUSE_CALL_TRANSACTION_NOT_EXIST:I = 0x5f1

.field public static final CAUSE_CONFLICT:I = 0x5e6

.field public static final CAUSE_DECLINE:I = 0x601

.field public static final CAUSE_DOES_NOT_EXIST_ANYWHERE:I = 0x602

.field public static final CAUSE_EXTENSION_REQUIRED:I = 0x5ee

.field public static final CAUSE_FORBIDDEN:I = 0x5e0

.field public static final CAUSE_GATEWAY_TIMEOUT:I = 0x5fd

.field public static final CAUSE_GONE:I = 0x5e7

.field public static final CAUSE_INTERVAL_TOO_BRIEF:I = 0x5ef

.field public static final CAUSE_LENGTH_REQUIRED:I = 0x5e8

.field public static final CAUSE_LOOP_DETECTED:I = 0x5f2

.field public static final CAUSE_MESSAGE_TOO_LONG:I = 0x5ff

.field public static final CAUSE_METHOD_NOT_ALLOWED:I = 0x5e2

.field public static final CAUSE_MOVED_PERMANENTLY:I = 0x5dc

.field public static final CAUSE_NOT_ACCEPTABLE:I = 0x5e3

.field public static final CAUSE_NOT_ACCEPTABLE_HERE:I = 0x5f8

.field public static final CAUSE_NOT_FOUND:I = 0x5e1

.field public static final CAUSE_NOT_IMPLEMENTED:I = 0x5fa

.field public static final CAUSE_PAYMENT_REQUIRED:I = 0x5df

.field public static final CAUSE_PROXY_AUTHENTICATION_REQUIRED:I = 0x5e4

.field public static final CAUSE_REQUEST_ENTRY_TOO_LONG:I = 0x5e9

.field public static final CAUSE_REQUEST_TERMINATED:I = 0x5f7

.field public static final CAUSE_REQUEST_TIMEOUT:I = 0x5e5

.field public static final CAUSE_REQUEST_URI_TOO_LONG:I = 0x5ea

.field public static final CAUSE_SERVER_INTERNAL_ERROR:I = 0x5f9

.field public static final CAUSE_SERVICE_UNAVAILABLE:I = 0x5fc

.field public static final CAUSE_SESSION_NOT_ACCEPTABLE:I = 0x603

.field public static final CAUSE_TEMPORARILY_UNAVAILABLE:I = 0x5f0

.field public static final CAUSE_TOO_MANY_HOPS:I = 0x5f3

.field public static final CAUSE_UNAUTHORIZED:I = 0x5de

.field public static final CAUSE_UNSUPPORTED_MEDIA_TYPE:I = 0x5eb

.field public static final CAUSE_UNSUPPORTED_URI_SCHEME:I = 0x5ec

.field public static final CAUSE_VERSION_NOT_SUPPORTED:I = 0x5fe

.field public static final ECC_OVER_WIFI_UNSUPPORTED:I = 0x3ea

.field public static final IMS_EMERGENCY_REREG:I = 0x17c

.field public static final INCOMING_REJECTED_FORWARD:I = 0x3f0

.field public static final INCOMING_REJECTED_LOW_BATTERY:I = 0x3f2

.field public static final INCOMING_REJECTED_NO_COVERAGE:I = 0x3f1

.field public static final INCOMING_REJECTED_NO_FORWARD:I = 0x3ef

.field public static final INCOMING_REJECTED_SPECIAL_HANGUP:I = 0x3f3

.field public static final MTK_DISCONNECTED_CAUSE_BASE:I = 0x3e8

.field public static final OUTGOING_CANCELED_BY_SERVICE:I = 0x3e9

.field public static final VOLTE_SS_DATA_OFF:I = 0x3ec

.field public static final WFC_CALL_DROP_BACKHAUL_CONGESTION:I = 0x3ee

.field public static final WFC_CALL_DROP_BAD_RSSI:I = 0x3ed

.field public static final WFC_HANDOVER_LTE_FAIL:I = 0x193

.field public static final WFC_HANDOVER_WIFI_FAIL:I = 0x192

.field public static final WFC_ISP_PROBLEM:I = 0x191

.field public static final WFC_UNAVAILABLE_IN_CURRENT_LOCATION:I = 0x3eb

.field public static final WFC_WIFI_SIGNAL_LOST:I = 0x190


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cause"    # I

    .line 130
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 242
    const-string v0, "UNKNOWN"

    return-object v0

    .line 227
    :pswitch_0
    const-string v0, "CAUSE_SESSION_NOT_ACCEPTABLE"

    return-object v0

    .line 225
    :pswitch_1
    const-string v0, "CAUSE_DOES_NOT_EXIST_ANYWHERE"

    return-object v0

    .line 223
    :pswitch_2
    const-string v0, "CAUSE_DECLINE"

    return-object v0

    .line 221
    :pswitch_3
    const-string v0, "CAUSE_BUSY_EVERYWHERE"

    return-object v0

    .line 219
    :pswitch_4
    const-string v0, "CAUSE_MESSAGE_TOO_LONG"

    return-object v0

    .line 217
    :pswitch_5
    const-string v0, "CAUSE_VERSION_NOT_SUPPORTED"

    return-object v0

    .line 215
    :pswitch_6
    const-string v0, "CAUSE_GATEWAY_TIMEOUT"

    return-object v0

    .line 213
    :pswitch_7
    const-string v0, "CAUSE_SERVICE_UNAVAILABLE"

    return-object v0

    .line 211
    :pswitch_8
    const-string v0, "CAUSE_BAD_GATEWAY"

    return-object v0

    .line 209
    :pswitch_9
    const-string v0, "CAUSE_NOT_IMPLEMENTED"

    return-object v0

    .line 207
    :pswitch_a
    const-string v0, "CAUSE_SERVER_INTERNAL_ERROR"

    return-object v0

    .line 205
    :pswitch_b
    const-string v0, "CAUSE_NOT_ACCEPTABLE_HERE"

    return-object v0

    .line 203
    :pswitch_c
    const-string v0, "CAUSE_REQUEST_TERMINATED"

    return-object v0

    .line 201
    :pswitch_d
    const-string v0, "CAUSE_BUSY_HERE"

    return-object v0

    .line 199
    :pswitch_e
    const-string v0, "CAUSE_AMBIGUOUS"

    return-object v0

    .line 197
    :pswitch_f
    const-string v0, "CAUSE_ADDRESS_INCOMPLETE"

    return-object v0

    .line 195
    :pswitch_10
    const-string v0, "CAUSE_TOO_MANY_HOPS"

    return-object v0

    .line 193
    :pswitch_11
    const-string v0, "CAUSE_LOOP_DETECTED"

    return-object v0

    .line 191
    :pswitch_12
    const-string v0, "CAUSE_CALL_TRANSACTION_NOT_EXIST"

    return-object v0

    .line 189
    :pswitch_13
    const-string v0, "CAUSE_TEMPORARILY_UNAVAILABLE"

    return-object v0

    .line 187
    :pswitch_14
    const-string v0, "CAUSE_INTERVAL_TOO_BRIEF"

    return-object v0

    .line 185
    :pswitch_15
    const-string v0, "CAUSE_EXTENSION_REQUIRED"

    return-object v0

    .line 183
    :pswitch_16
    const-string v0, "CAUSE_BAD_EXTENSION"

    return-object v0

    .line 181
    :pswitch_17
    const-string v0, "CAUSE_UNSUPPORTED_URI_SCHEME"

    return-object v0

    .line 179
    :pswitch_18
    const-string v0, "CAUSE_UNSUPPORTED_MEDIA_TYPE"

    return-object v0

    .line 177
    :pswitch_19
    const-string v0, "CAUSE_REQUEST_URI_TOO_LONG"

    return-object v0

    .line 175
    :pswitch_1a
    const-string v0, "CAUSE_REQUEST_ENTRY_TOO_LONG"

    return-object v0

    .line 173
    :pswitch_1b
    const-string v0, "CAUSE_LENGTH_REQUIRED"

    return-object v0

    .line 171
    :pswitch_1c
    const-string v0, "CAUSE_GONE"

    return-object v0

    .line 169
    :pswitch_1d
    const-string v0, "CAUSE_CONFLICT"

    return-object v0

    .line 167
    :pswitch_1e
    const-string v0, "CAUSE_REQUEST_TIMEOUT"

    return-object v0

    .line 165
    :pswitch_1f
    const-string v0, "CAUSE_PROXY_AUTHENTICATION_REQUIRED"

    return-object v0

    .line 163
    :pswitch_20
    const-string v0, "CAUSE_NOT_ACCEPTABLE"

    return-object v0

    .line 161
    :pswitch_21
    const-string v0, "CAUSE_METHOD_NOT_ALLOWED"

    return-object v0

    .line 159
    :pswitch_22
    const-string v0, "CAUSE_NOT_FOUND"

    return-object v0

    .line 157
    :pswitch_23
    const-string v0, "CAUSE_FORBIDDEN"

    return-object v0

    .line 155
    :pswitch_24
    const-string v0, "CAUSE_PAYMENT_REQUIRED"

    return-object v0

    .line 153
    :pswitch_25
    const-string v0, "CAUSE_UNAUTHORIZED"

    return-object v0

    .line 151
    :pswitch_26
    const-string v0, "CAUSE_BAD_REQUEST"

    return-object v0

    .line 149
    :pswitch_27
    const-string v0, "CAUSE_MOVED_PERMANENTLY"

    return-object v0

    .line 239
    :pswitch_28
    const-string v0, "INCOMING_REJECTED_SPECIAL_HANGUP"

    return-object v0

    .line 237
    :pswitch_29
    const-string v0, "INCOMING_REJECTED_LOW_BATTERY"

    return-object v0

    .line 235
    :pswitch_2a
    const-string v0, "INCOMING_REJECTED_NO_COVERAGE"

    return-object v0

    .line 233
    :pswitch_2b
    const-string v0, "INCOMING_REJECTED_FORWARD"

    return-object v0

    .line 231
    :pswitch_2c
    const-string v0, "INCOMING_REJECTED_NO_FORWARD"

    return-object v0

    .line 140
    :pswitch_2d
    const-string v0, "WFC_CALL_DROP_BACKHAUL_CONGESTION"

    return-object v0

    .line 142
    :pswitch_2e
    const-string v0, "WFC_CALL_DROP_BAD_RSSI"

    return-object v0

    .line 145
    :pswitch_2f
    const-string v0, "VOLTE_SS_DATA_OFF"

    return-object v0

    .line 138
    :pswitch_30
    const-string v0, "WFC_UNAVAILABLE_IN_CURRENT_LOCATION"

    return-object v0

    .line 136
    :pswitch_31
    const-string v0, "ECC_OVER_WIFI_UNSUPPORTED"

    return-object v0

    .line 133
    :pswitch_32
    const-string v0, "OUTGOING_CANCELED_BY_SERVICE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5dc
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
