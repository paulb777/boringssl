// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "BoringSSL-GRPC",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v8),
        .tvOS(.v9)
    ],

  products: [
    .library(
      name: "openssl_grpc",
      targets: ["openssl_grpc"]
    )
  ],

  targets: [
    .target(
      name: "openssl_grpc",
      path: ".",
      exclude: [
        ".build/",
        ".github/",
        "util/",
        "ssl/test/",
        "ssl/span_test.cc",
        "ssl/ssl_test.cc",
        "crypto/fipsmodule/bcm.c",
        "crypto/abi_self_test.cc",
        "crypto/compiler_test.cc",
        "crypto/constant_time_test.cc",
        "crypto/cpu-arm-linux_test.cc",
        "crypto/impl_dispatch_test.cc",
        "crypto/refcount_test.cc",
        "crypto/self_test.cc",
        "crypto/thread_test.cc",
        "crypto/asn1/asn1_test.cc",
        "crypto/base64/base64_test.cc",
        "crypto/bio/bio_test.cc",
        "crypto/buf/buf_test.cc",
        "crypto/bytestring/bytestring_test.cc",
        "crypto/chacha/chacha_test.cc",
        "crypto/cipher_extra/aead_test.cc",
        "crypto/cipher_extra/cipher_test.cc",
        "crypto/cmac/cmac_test.cc",
        "crypto/curve25519/ed25519_test.cc",
        "crypto/curve25519/spake25519_test.cc",
        "crypto/curve25519/x25519_test.cc",
        "crypto/dh/dh_test.cc",
        "crypto/digest_extra/digest_test.cc",
        "crypto/dsa/dsa_test.cc",
        "crypto/ecdh_extra/ecdh_test.cc",
        "crypto/err/err_test.cc",
        "crypto/evp/evp_extra_test.cc",
        "crypto/evp/evp_test.cc",
        "crypto/evp/pbkdf_test.cc",
        "crypto/evp/scrypt_test.cc",
        "crypto/hkdf/hkdf_test.cc",
        "crypto/hmac_extra/hmac_test.cc",
        "crypto/hrss/hrss_test.cc",
        "crypto/lhash/lhash_test.cc",
        "crypto/obj/obj_test.cc",
        "crypto/pem/pem_test.cc",
        "crypto/pkcs7/pkcs7_test.cc",
        "crypto/pkcs8/pkcs12_test.cc",
        "crypto/pkcs8/pkcs8_test.cc",
        "crypto/poly1305/poly1305_test.cc",
        "crypto/pool/pool_test.cc",
        "crypto/rand_extra/rand_test.cc",
        "crypto/rsa_extra/rsa_test.cc",
        "crypto/siphash/siphash_test.cc",
        "crypto/stack/stack_test.cc",
        "crypto/test/abi_test.cc",
        "crypto/test/file_test.cc",
        "crypto/test/file_test_gtest.cc",
        "crypto/test/gtest_main.cc",
        "crypto/test/test_util.cc",
        "crypto/trust_token/trust_token_test.cc",
        "crypto/x509/x509_test.cc",
        "crypto/x509/x509_time_test.cc",
        "crypto/x509v3/tab_test.cc",
        "crypto/x509v3/v3name_test.cc",
        "ssl/test/test_config.cc",
        "ssl/test/test_state.cc",
        "crypto/fipsmodule/aes/aes_test.cc",
        "crypto/fipsmodule/bn/bn_test.cc",
        "crypto/fipsmodule/ec/ec_test.cc",
        "crypto/fipsmodule/ec/p256-x86_64_test.cc",
        "crypto/fipsmodule/ecdsa/ecdsa_test.cc",
        "crypto/fipsmodule/md5/md5_test.cc",
        "crypto/fipsmodule/modes/gcm_test.cc",
        "crypto/fipsmodule/rand/ctrdrbg_test.cc",
        "crypto/fipsmodule/rand/fork_detect_test.cc",
        "crypto/fipsmodule/rand/urandom_test.cc",
        "crypto/fipsmodule/sha/sha_test.cc",
      ],
      sources: [
        "ssl/",
        "crypto/",
        "table/",
        "third_party/fiat/",
        "include/",
      ],
      publicHeadersPath: "include",
      cSettings: [
        .define("LEVELDB_IS_BIG_ENDIAN", to: "0"),
        .define("LEVELDB_PLATFORM_POSIX", to: "1"),
        .define("HAVE_FULLFSYNC", to: "1"),
        .headerSearchPath("./"),
        .headerSearchPath("include/"),
      ]
    ),
  ],

  cxxLanguageStandard: CXXLanguageStandard.gnucxx14
)

