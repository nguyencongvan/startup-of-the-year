package com.example.web.config;

public class Constants {

    public static final int PROTOCOL_VERSION = 1;

    public static final String MASTER_VERSION = "1.0.0"; // master data version
    public static final int MASTER_EXPIRED_TIME = 1000 * 60 * 60 * 24 * 5; // master data expired timeout (in milliseconds)

    public static final byte DISABLE = 0;
    public static final byte ENABLE = 1;

    public static final int PERMISSION_CANCEL = 1;
    public static final int PERMISSION_EDIT = 2;
    public static final int PERMISSION_DELETE = 3;
    public static final int PERMISSION_CONFIRM = 4;

    public static final int QUAN_TRI_HE_THONG = 1;
    public static final long CONG_TAC_VIEN = 21;
    public static final long DIEM_BAN_LE = 22;

    public static final long ROLE_CONG_TAC_VIEN = 21;
    public static final long ROLE_DIEM_BAN_LE = 22;

    public static final String IDENTITY_CARD_UPLOAD_LOCATION = "identity_card_upload_location";
    public static final String AVATAR_CARD_UPLOAD_LOCATION = "avatar_card_upload_location";
    public static final String SERVER_PATH = "server_path";
    public static final String PAYMENT_VERIFY = "PAYMENT_VERIFY";
    public static final String ACCOUNT_VERIFY = "ACCOUNT_VERIFY";

    public static final long PROGRAM_KKDBL = 37989;

    public static final long RATE_TYPE_NVBH = 1;
    public static final long RATE_TYPE_TRUONG_QH = 2;
    public static final long RATE_TYPE_GIAM_DOC_CHI_NHANH = 3;

    public static final String SHARE_LINK_PATH = "http://apps.mobifone5.vn/c2c/chiase.html";

    public static final String ADMIN = "admin";
}
