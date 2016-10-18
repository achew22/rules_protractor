load("//protractor:rules.bzl", "protractor_test_suite")

protractor_test_suite(
    name = "basic",
    browsers = [
        "@io_bazel_rules_web//browsers:chrome-native",
    ],
    configuration = "conf.js",
    srcs = glob(["*_page.js", "*_test.js"]),
)
