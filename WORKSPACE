git_repository(
    name = "org_pubref_rules_node",
    tag = "v0.3.0",
    remote = "https://github.com/pubref/rules_node.git",
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
    sha256 = "a2f907d1f5b1ed5bb6a4e9605b225a6b31a1bbc6629667406d771ef4a98ab233",
)

