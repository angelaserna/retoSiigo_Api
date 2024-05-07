**Table of Contents**
- [Introduction](#introduction)
- [Testing API with Karate](#testing_api_with_karate)
- [Prerequisites](#prerequisites)
- [Run the tests locally](#run-the-tests-locally)

# Introduction

In this project the most common examples of testing with the Karate framework are applied.
To apply the test cases we will use the test website https://reqres.in/, which provides several endpoints on which you can make GET, PUT, POST and DELETE requests.

# Testing API with Karate

**Karate** is the only open-source tool to combine API test-automation, mocks, performance-testing and even UI automation into a single, unified framework. The BDD syntax popularized by Cucumber is language-neutral, and easy for even non-programmers. Powerful JSON & XML assertions are built-in, and you can run tests in parallel for speed.

Test execution and report generation feels like any standard Java project. But there's also a stand-alone executable for teams not comfortable with Java. You don't have to compile code. Just write tests in a simple, readable syntax - carefully designed for HTTP, JSON, GraphQL and XML. And you can mix API and UI test-automation within the same test script.

https://github.com/intuit/karate

### Prerequisites

The project is developed in Java with Maven so it will install the following software:

* [Oracle Java 8 SDK](https://java.oracle.com)
* [Apache Maven](https://maven.apache.org)
* Your favorite IDE, including :
    * [Eclipse IDE](http://www.eclipse.org) (or  Eclipse based IDE,  Spring ToolSuite is highly recommended)
    * [Intellij IDEA](http://www.jetbrains.com): To run features or scenarios tests it will configure:

```
[Run configuration with Cucumber Java template]
    Main class: com.intuit.karate.cli.Main    
    Glue: com.intuit.karate
```


## Run the tests locally

To try to run the demo in the local system, enter the root folder and execute the following commands to install the dependencies and start up the test runners one by one.

```
mvn clean install -DskipTests
mvn clean test -Dtest=ExamplesRunner
mvn clean test -Dtest=DemoTestParallel

```
