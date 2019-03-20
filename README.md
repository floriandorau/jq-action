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
  args = ["-r", ".version", "package.json"]
}
```

This will result in the following command.

```bash
jq .version package.json
```

The parsed result will bee exported to `JQ_OUTPUT` so that you can use the result in succeeding actions.


### jq env variables ###

You can use the following env variables to control _jq_.


| Option        | Desc
| ------------- | ---------------------------------------
| `JQ_FILE`     | File to parse with _jq_
| `JQ_OPTIONS`  | List of options passed to _jq_. See [jq manual](https://stedolan.github.io/jq/manual/#Invokingjq) to find valid option.
| `JQ_FILTERS`  | List of filters passed to _jq_. See [jq basic filters](https://stedolan.github.io/jq/manual/#Basicfilters) for possible filers.
