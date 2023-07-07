# Copyright lowRISC contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

load("//config:device.bzl", "device_config")

DEVICES = [
    device_config(
        name = "opentitan",
        architecture = "rv64imac",
        feature_set = "//platforms/riscv64/features:rv64imac",
        constraints = [
            "@platforms//cpu:riscv64",
            "@platforms//os:none",
        ],
        substitutions = {
            "ARCHITECTURE": "rv64imac",
            "ABI": "lp64",
            "CMODEL": "medany",
            "ENDIAN": "little",
            "[STACK_PROTECTOR]": "",
        },
    ),
]
