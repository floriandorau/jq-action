# jq-action #

Github action to use [_jq_](https://stedolan.github.io/jq/) in your workflow.

## What is jq ##

jq is a lightweight and flexible command-line JSON processor.

## Usage ##

Register the _jq-action_ in your `.github/main.workflow` according to the following.

```bash
workflow "Parse version from package.json" {
  on = "commit"
  resolves = ["jq-parse"]
}

action "jq-parse-version" {
  uses = "floriandorau/jq-action@master"
  args = [".version", "package.json"]
}
```

This will result in the following command.

```bash
jq .version package.json
```

The parsed result will bee exported to `JQ_OUTPUT` so that you can use the result in succeeding actions.
