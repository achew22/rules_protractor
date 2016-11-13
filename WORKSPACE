git_repository(
    name = "io_bazel_rules_go",
    remote = "https://github.com/bazelbuild/rules_go.git",
    tag = "0.2.0",
)

load("@io_bazel_rules_go//go:def.bzl", "go_repositories")

go_repositories()

#git_repository(
#    name = "org_pubref_rules_node",
#    tag = "v0.3.0",
#    remote = "https://github.com/pubref/rules_node.git",
#)
local_repository(
    name = "org_pubref_rules_node",
    path = "/Users/achew22/Projects/rules_node",
)


load("@org_pubref_rules_node//node:rules.bzl", "node_repositories", "npm_repository")

node_repositories()

# NPM repos
npm_repository(
    name = "npm_protractor",
    deps = {
        "protractor": "4.0.8",

        "@types/jasmine": "^2.2.31",
        "@types/node": "^6.0.35",
        "@types/q": "^0.0.30",
        "@types/selenium-webdriver": "~2.53.31",
        "adm-zip": "0.4.7",
        "chalk": "^1.1.3",
        "glob": "^7.0.3",
        "jasmine": "2.5.2",
        "jasminewd2": "0.0.10",
        "optimist": "~0.6.0",
        "q": "1.4.1",
        "saucelabs": "~1.3.0",
        "selenium-webdriver": "2.53.3",
        "source-map-support": "~0.4.0",
        "webdriver-manager": "^10.2.2"
    },
    sha256 = "17b881c8ebe076f67da39d5cf4a70829f3fe3d2e4f9908ff4609fcbe5d47f6b7",
)

git_repository(
    name = "io_bazel_rules_webtesting",
    remote = "https://github.com/bazelbuild/rules_webtesting.git",
    #tag = "0.0.4",
		commit = "893a28c67df96cd8a480f562e5b810ff4cc9983c",
)

load("@io_bazel_rules_webtesting//web:repositories.bzl", 
    "browser_repositories",
    "web_test_repositories")

web_test_repositories(
	go = True
)

# Load repositories for example browser definitions.
# You should create your own browser definitions and link
# to the specific browser versions you are interested in
# testing with.
browser_repositories(
    chrome = True,
)

