# Copyright lowRISC contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

load("@crt//rules:repo.bzl", "http_archive_or_local")

def lowrisc_rv64imac_repos(local = None):
    http_archive_or_local(
        name = "lowrisc_rv64imac_files",
        local = local,
        url = "https://github.com/lowRISC/lowrisc-toolchains/releases/download/20230519-1/lowrisc-toolchain-rv64imac-20230519-1.tar.xz",
        sha256 = "4fc14cb841932be3fdf5403acf55f3e21c93a49ff4e210509b7ea11741c59ed1",
        strip_prefix = "lowrisc-toolchain-rv64imac-20230519-1",
        build_file = Label("//toolchains:BUILD.export_all.bazel"),
    )
