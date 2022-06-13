
#!/bin/bash --norc

PROG=$(basename "$0")
DRIVER_DIR=$(dirname "$0")
MXE="gcc_mxe_mingw64_files"
VERSION="11.3.0"
PREFIX="x86_64-w64-mingw32.shared"
export COMPILER_PATH="external/${MXE}/libexec/gcc/${PREFIX}/${VERSION}:external/${MXE}/bin:${DRIVER_DIR}"
export LIBRARY_PATH="external/${MXE}/${PREFIX}/lib:external/${MXE}/lib/gcc/${PREFIX}/${VERSION}"

ARGS=()
POSTARGS=()
case "${PROG}" in
    gcc)
        ARGS+=("-B" "external/${MXE}/bin/${PREFIX}-")
        ;;
esac

exec "external/${MXE}/bin/${PREFIX}-${PROG}" \
    "${ARGS[@]}" \
    "$@"\
    "${POSTARGS[@]}"