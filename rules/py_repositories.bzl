"""Definitions for handling Python Dependencies for Pod deployment py rules."""

load("@rules_python//python:repositories.bzl", "py_repositories")
load("@rules_python//python:pip.bzl", "pip_repositories")
load("@rules_python//python:pip.bzl", "pip_import")

def py_and_pip_repositories():
    py_repositories()
    pip_repositories()
    pip_import(
        name = "pip_requirements",
        requirements = "//scripts/pods:requirements.txt",
    )
    
    
