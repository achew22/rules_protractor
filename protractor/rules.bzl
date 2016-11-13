load("@org_pubref_rules_node//node:rules.bzl", "node_binary")
load("@io_bazel_rules_webtesting//web:web.bzl", "web_test_suite")


def protractor_test_suite(name,
													srcs,
                          configuration,
                          browsers,
                          data=None,
                          deprecation=None,
                          shard_count=None,
                          size=None,
                          args=None,
                          tags=None,
                          timeout=None,
                          browser_overrides=None,
                          flaky=None,
                          config=None,
                          visibility=None,
                          local=None):
	"""Defines a test_suite to run.

  Args:
    name: Name; required. A unique name for this rule.
    configuration: Label; required. The protractor configuration to use for
      this test.
		srcs: File list; required. List of files to run in the test.
    test: Label; required. A single *_test or *_binary target. The test that
      web_test should run with the specified browser.
    browsers: List of labels; required. The browsers with which to run the test.
    data: Label List; optional.
    deprecation: String; optional.
    shard_count: Integer; optional; default is 1.
    size: String; optional; default is 'large'
    args: String list; optional; list of arguments to pass to test.
    tags: String list; optional.
    timeout: String; optional.
    browser_overrides: Dictionary; optional; default is an empty dictionary. A
      dictionary mapping from browser names to browser-specific web_test
      attributes, such as shard_count, flakiness, timeout, etc. For example:
      {'\\browsers:chrome-native': {'shard_count': 3, 'flaky': 1}
       '\\browsers:firefox-native': {'shard_count': 1, 'size': 'medium',
         'timeout': 100}}.
    flaky: Boolean; optional.
    config: Label; optional; default is //external:web_test_default_config.
      Configuration of web test features.
    visibility: Label List; optional.
    local: Boolean; optional.
		"""
	web_test_suite(
		name = name,
		test = "%s_test" % name,
		browsers = browsers,
	)

	native.sh_test(
		name = "%s_test" % name,
		srcs = ["%s_runner" % name],
    args = [
        "$(location %s)" % configuration,
    ],
    data = [
        configuration
    ],
	)

	node_binary(
		name = "%s_runner" % name,
		main = Label("//protractor:main.js"),
    modules = [
        "@npm_protractor//:modules",
    ],
	)	

