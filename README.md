How to setup a bazel project:

1. Add WORKSPACE file in the root dir, it's bazel workspace dir
In this we setup some git repos for bazel to fetch the basic rule

2. .bazelrc
It's optional. If we want to add some commands that will be passed to when we run "bazel build"

3. Setup BUILD file

Setup for target such as App, framework. In this example, setup for Kumon framework:
Look at Kumon/BUILD