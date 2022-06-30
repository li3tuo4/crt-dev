# Copyright lowRISC contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

load("@crt//config:repo.bzl", "compiler_repository")

def cc65_repos():
    compiler_repository(
        name = "cc65_files",
        url = "https://github.com/cfrantz/crt/releases/download/cc65-2022-06-23/cc65-binaries.tar.xz",
        # Local dev/debug:
        #archive = Label("//prebuilt:cc65-binaries.tar.xz"),
        strip_prefix = "cc65",
    )
