# Contributing Guidelines

Thank you for your interest in contributing to our project! <3 Whether it's a bug report, new feature, correction, or additional documentation, we greatly value feedback and contributions from our community. Please read through these guidelines carefully before submitting a PR or issue and let us know if it's not up-to-date (or even better, submit a PR with your corrections ;)).

- [Contributing Guidelines](#contributing-guidelines)
- [Our History and Ethos](#our-history-and-ethos)
- [Our Design](#our-design)
  - [Semantic versioning](#semantic-versioning)
    - [Semantic versioning and enumeration cases](#semantic-versioning-and-enumeration-cases)
- [Development Process](#development-process)
  - [Setting up for local development](#setting-up-for-local-development)
      - [Packages inside Amplify Flutter](#packages-inside-amplify-flutter)
    - [Platform Setup](#platform-setup)
      - [Linux](#linux)
  - [Steps towards contributions](#steps-towards-contributions)
- [Pull Requests](#pull-requests)
- [Release](#release)
  - [Finding contributions to work on](#finding-contributions-to-work-on)
  - [Related Repositories](#related-repositories)
  - [Unit Tests](#unit-tests)
  - [Integration Tests](#integration-tests)
  - [Provision Resources For Integration Tests](#provision-resources-for-integration-tests)
  - [Code of Conduct](#code-of-conduct)
  - [Security issue notifications](#security-issue-notifications)
  - [Licensing](#licensing)

# Our History and Ethos

AWS Amplify aims to enhance the development experience using JavaScript with AWS. Amplify codifies best practices through programmatic interfaces to help you effortlessly interact with cloud resources.

First and foremost Amplify exposes to you WHAT things do and then HOW best to do them. The WHAT is at a functional use case with HOW being an opinionated implementation that you can override with “escape hatches.” This will allow you to have higher velocity and build better applications by focusing less on implementation choices. Secondly, Amplify should be a manifestation of The Rule of Least Power when developing against AWS. This means it encourages architectural and programmatic best practices and the ability to start quickly. This shows by encouraging certain services (API Gateway usage vs. direct DynamoDB interaction) or certain connection patterns (Circuit breaker, retry counts and throttle up/down).

Opinionated implementations: There are many ways to interface with AWS Services. Certain service interactions are favored over others. For instance, if sending and receiving JSON, we would prefer an API Gateway endpoint to other mechanisms. Amplify will programmatically help optimize for cost and performance through library decisions.

Declarative actions: Amplify will provide you a reference to a generic client object and the ability to perform common actions. “RegisterUser”, “Login”, “SendObject”, “UpdateObject”, “StreamData”. By default you should not need to worry about AWS Service specific API operations like putItem() with a unique hash or even HTTP verbs.

Cascading service interactions: Certain actions in a declarative style can have overlapping or ambiguous AWS Service implementations. With an opinionated implementation, we can decide which Services are "primary" and which are "secondary" depending on what is configured. For instance, sending an image will prefer S3 over API Gateway.

Simple, standard data objects: Sending & receiving data to AWS Services can have many parameters, which tend to show up in the SDKs. These are abstracted and inferred, where possible, with simple JSON that the implementation can reason about. Standard parameters (bucket names, stream names, partition keys, etc.) that are part of the implementation are extracted from a simplified configuration file and dynamically generated/updated in order to further allow focus on state and data types only.

# Our Design

As more and more modules were introduced to AWS Amplify, it became necessary to modularize the library into smaller pieces so that users could avoid importing unnecessary parts into their app. The goal of this design is to make AWS Amplify modularized and also keep it backward-compatible to avoid breaking changes.

Modular import prevents unnecessary code dependencies from being included with the app, and thus decreases the bundle size while enabling added new functionality without the risk of introducing errors related to unused code.

Amplify has established the concepts of categories and plugins. A category is a collection of api calls that are exposed to the client to do things inside that category. For example, in the storage category, generally one wants to upload and download objects from storage so the apis exposed to the client will represent that functionality. Because Amplify is pluggable, a plugin of your choosing will provide the actual implementation behind that api interface. Using the same example of Storage, the plugin we choose might be AWSStoragePlugin which would then implement each api call from the category with a service call or set of service calls to S3, the underlying storage provider of the AWS plugin.

## Semantic versioning

We follow [semantic versioning](https://dart.dev/tools/pub/versioning#semantic-versions) for our releases.

### Semantic versioning and enumeration cases

When Amplify adds a new enumeration entry or sealed class subtype, we will publish a new **minor** version of the library.

Applications that use a `switch` statement to evaluate all members of an enumerated type can add a `default` clause to prevent 
new cases from causing compile warnings or errors.

# Development Process

Our work is done directly on Github and PR's are sent to the github repo by core team members and contributors. Everyone undergoes the same review process to get their changes into the repo.

## Setting up for local development

This section should get you running with **Amplify Flutter** and get you familiar with the basics of the codebase.

Start by [forking](https://help.github.com/en/github/getting-started-with-github/fork-a-repo) the main branch of [amplify-flutter](https://github.com/aws-amplify/amplify-flutter) and cloning the repo locally.

```sh
$ git clone git@github.com:[username]/amplify-flutter.git --recurse-submodules
$ cd amplify-flutter
```

> Note: If you already cloned the project and forgot `--recurse-submodules`, run `git submodule update --init --recursive`.

> Note: Make sure to always [sync your fork](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/syncing-a-fork) with main branch of amplify-flutter

Next setup Amplify Flutter Repo Tool (aft). This can be installed using the following:

```sh
$ brew install libgit2
$ dart pub global activate -spath packages/aft
```

Then, from the root of the project, run `aft bootstrap` to link local packages together and install remaining dependencies.

```sh
$ aft bootstrap
```

> The bootstrap command creates `pubspec_override.yaml` files in each of the packages, overriding dependencies to use the local version
> instead of the published one. This allows changes in one package to be instantly available in all others. It also means that commands
> like `flutter pub get` will continue to work as expected.

> The `aft` command provides useful tooling when developing within this repo. See `aft`'s [README](packages/aft/README.md) for more instructions on how to use `aft`.

#### Packages inside Amplify Flutter

- [amplify_flutter](https://github.com/aws-amplify/amplify-flutter/tree/main/packages/amplify_flutter)
- [amplify_auth_plugin_interface](https://github.com/aws-amplify/amplify-flutter/tree/main/packages/amplify_auth_plugin_interface)
- [amplify_auth_cognito](https://github.com/aws-amplify/amplify-flutter/tree/main/packages/amplify_auth_cognito)
- [amplify_analytics_plugin_interface](https://github.com/aws-amplify/amplify-flutter/tree/main/packages/amplify_analytics_plugin_interface)
- [amplify_analytics_pinpoint](https://github.com/aws-amplify/amplify-flutter/tree/main/packages/amplify_analytics_pinpoint)

### Platform Setup

Some platforms require additional setup. See below for details.

#### Linux

`libsecret` and `glib` are required for some plugins. They can be installed on Debian based linux distributions such as Ubuntu by running the command below.

```sh
sudo apt-get update && sudo apt-get install libsecret-1-dev libglib2.0-dev
```

**VS Code Remote Container**

[VS Code Remote Containers](https://code.visualstudio.com/docs/remote/containers) can be used for linux development. `/devcontainer` contains a Dockerfile that will install the required dependencies.

## Steps towards contributions

Each packages/[category] contains the following for testing:

1. `example` folder with a Dart test app for testing that specific category. In order to run these apps, you must include your own `amplifyconfiguration.dart` file in the `lib` folder.
2. `android/src/test/kotlin/.... Test.kt` file. This is where Android unit tests are written.
3. `test/ ... test.dart` file. This is where Dart unit tests are written.

The general organization of the Flutter library is as follows:

1. Each [category] has a corresponding `amplify_[category]_plugin_interface` where its public method set is defined.

2. A given [category] can have multiple plugins corresponding to different AWS services. For example Analytics will have a Pinpoint and Kinesis plugin.

3. The [category] plugins (ie. amplify_auth_cognito, amplify_storage_s3, etc.) is a Dart shell that uses the MethodChannel to communicate with native iOS and Android code which in turn calls the corresponding Amplify Android and Amplify iOS library code.

Contributing:

1. To start contributing make a fork of this repo and create a branch where you will make your changes to a particular `packages/[category]`.

2. Write unit tests in android and dart.

3. Update the example app to use your new changes (if applicable) and to build the app on iOS and Android.

4. Run the test suite

5. Submit a PR

# Pull Requests

This is mostly the same as GitHub's guide on creating a pull request.

_[Skip step 1 to 3 if you have already done this]_

1. Follow the steps in [Setting up for local development above](#setting-up-for-local-development-above)
2. Within your fork, create a new branch based on the issue (e.g. Issue #123) you're addressing - `git checkout -b "group-token/short-token-[branch-name]"` or `git checkout -b "short-token/[branch-name]"`
   - Use grouping tokens at the beginning of the branch names. \_For e.g, if you are working on changes specific to `amplify-ui-components`, then you could start the branch name as `ui-components/...`
   - short token
     - feat
     - chore
     - bug
   - use slashes to separate parts of branch names
   - Hyphenate well defined branch name
3. Once your work is committed and you're ready to share, run tests.
   **Note:** Manually test your changes in a sample app with different edge cases and also test across different native platforms
4. Then, Push your branch `git push origin -u`
5. This previous step will give you a URL to view a GitHub page in your browser. Copy-paste this, and complete the workflow in the UI. It will invite you to "create a PR" from your newly published branch. Fill out the PR template to submit a PR.
6. Finally, the Amplify team will review your PR. Add reviewers based on the core member who is tracking the issue with you or code owners.
   _In the meantime, address any automated check that fail (such as linting, unit tests, etc. in CI)_

# Release

We follow semantic versioning for our releases.

## Finding contributions to work on

Looking at the existing issues is a great way to find something to contribute on. As our projects, by default, use the default GitHub issue labels (enhancement/bug/duplicate/help wanted/invalid/question/wontfix), looking at any ['help wanted'](https://github.com/aws-amplify/amplify-flutter/labels/help%20wanted) or ['good first issue'](https://github.com/aws-amplify/amplify-flutter/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22) is a great place to start.

You could also contribute by reporting bugs, reproduction of bugs with sample code, documentation and test improvements.

## Related Repositories

The Amplify Framework runs on Android, iOS, and numerous JavaScript-based web platforms.

1. [AWS Amplify for iOS](https://github.com/aws-amplify/amplify-ios)
2. [AWS Amplify for Android](https://github.com/aws-amplify/amplify-android)
3. [AWS Amplify JS](https://github.com/aws-amplify/amplify-js)

AWS Amplify plugins are built on top of the AWS SDKs. AWS SDKs are a
toolkit for interacting with AWS backend resources.

1. [AWS SDK for Android](https://github.com/aws-amplify/aws-sdk-android)
2. [AWS SDK for iOS](https://github.com/aws-amplify/aws-sdk-ios)
3. [AWS SDK for JavaScript](https://github.com/aws/aws-sdk-js)

## Unit Tests

To run all the flutter unit tests for all plugins:

```bash
$ aft run test:unit:flutter
```

or run all unit tests for a given platform

```bash
$ aft run test:unit:android
$ aft run test:unit:ios
```

## Integration Tests

In addition to unit tests which mock Amplify API interaction, this repository has integration tests which
test functionality with real Amplify back-ends. The integration test script will execute tests in example
apps which have integration tests written (skipping those that don't). It runs on Android and iOS simulators.

**Note:** To run integration tests, you will need prerequisite Amplify resources in the example
apps where the tests run. The process for creating those is noted below. You will also need to install dependencies with `aft bootstrap`.

To run integration tests for a specific plugin, run:

```bash
$ aft exec flutter test integration_test --include <plugin-example-app>
```

For example, to run the tests for the amplify_auth_cognito plugin, run:

```bash
$ aft exec flutter test integration_test --include amplify_auth_cognito_example
```

## Provision Resources For Integration Tests

> Note: The provisioning script uses [AWS CDK](https://docs.aws.amazon.com/cdk/v2/guide/getting_started.html) and the [Amplify CLI](https://docs.amplify.aws/cli/usage/headless). You will need to have the following CLI tools installed before continuing:
>
> - [AWS CLI](https://aws.amazon.com/cli/)
> - [Amplify CLI](https://docs.amplify.aws/cli/)
> - [pnpm](https://pnpm.io/installation)
> - [jq](https://stedolan.github.io/jq/)

Any app with integration tests will have an `integration_test` folder in the example app for that package. These tests run against real AWS resources which must be deployed before running.

To create all the backend environments, run:

```bash
$ tool/provision_integration_test_resources.sh
```

This script can be re-run anytime the environments need to be updated. Further information can be found in the [infra](infra/README.md) package.

## Code of Conduct

This project has adopted the [Amazon Open Source Code of Conduct](https://aws.github.io/code-of-conduct).
For more information see the [Code of Conduct FAQ](https://aws.github.io/code-of-conduct-faq) or contact
opensource-codeofconduct@amazon.com with any additional questions or comments.

## Security issue notifications

If you discover a potential security issue in this project we ask that you notify AWS/Amazon Security via our [vulnerability reporting page](http://aws.amazon.com/security/vulnerability-reporting/). Please do **not** create a public github issue.

## Licensing

See the [LICENSE](https://github.com/aws-amplify/amplify-js/blob/main/LICENSE) file for our project's licensing. We will ask you to confirm the licensing of your contribution.

We may ask you to sign a [Contributor License Agreement (CLA)](http://en.wikipedia.org/wiki/Contributor_License_Agreement) for larger changes.
