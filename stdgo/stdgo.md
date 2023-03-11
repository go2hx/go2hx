# Library compilation and test results


| module | compile | tests | hl | interp | jvm |
| --- | --- | --- |  --- | --- | --- |
| [stdgo.bufio](./bufio/README.md) | ❌ | yes |  |  |  |
| [stdgo.bytes](./bytes/README.md) | ✅ | yes | ✅ | ❌ | ❌ |
| [stdgo.compress.zlib](./compress/zlib/README.md) | ❌ | yes |  |  |  |
| [stdgo.crypto.rand](./crypto/rand/README.md) | ❌ | yes |  |  |  |
| [stdgo.crypto.sha1](./crypto/sha1/README.md) | ❌ | yes |  |  |  |
| [stdgo.encoding](./encoding/README.md) | ✅ | no |  |  |  |
| [stdgo.encoding.base64](./encoding/base64/README.md) | ✅ | yes | ❌ | ❌ | ❌ |
| [stdgo.encoding.binary](./encoding/binary/README.md) | ✅ | yes | ❌ | ❌ | ❌ |
| [stdgo.errors](./errors/README.md) | ✅ | yes | ✅ | ✅ | ❌ |
| [stdgo.flag](./flag/README.md) | ❌ | yes |  |  |  |
| [stdgo.fmt](./fmt/README.md) | ✅ | yes | ❌ | ❌ | ❌ |
| [stdgo.go.ast](./go/ast/README.md) | ❌ | yes |  |  |  |
| [stdgo.go.constant](./go/constant/README.md) | ❌ | yes |  |  |  |
| [stdgo.go.importer](./go/importer/README.md) | ❌ | yes |  |  |  |
| [stdgo.go.internal.gccgoimporter](./go/internal/gccgoimporter/README.md) | ❌ | no |  |  |  |
| [stdgo.go.internal.srcimporter](./go/internal/srcimporter/README.md) | ❌ | no |  |  |  |
| [stdgo.go.printer](./go/printer/README.md) | ❌ | yes |  |  |  |
| [stdgo.go.token](./go/token/README.md) | ❌ | yes |  |  |  |
| [stdgo.go.types](./go/types/README.md) | ❌ | yes |  |  |  |
| [stdgo.hash](./hash/README.md) | ❌ | yes |  |  |  |
| [stdgo.internal](./internal/README.md) | ❌ | no |  |  |  |
| [stdgo.internal.buildcfg](./internal/buildcfg/README.md) | ❌ | no |  |  |  |
| [stdgo.internal.bytealg](./internal/bytealg/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.coverage.rtcov](./internal/coverage/rtcov/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.cpu](./internal/cpu/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.diff](./internal/diff/README.md) | ❌ | no |  |  |  |
| [stdgo.internal.fmtsort](./internal/fmtsort/README.md) | ❌ | yes |  |  |  |
| [stdgo.internal.goarch](./internal/goarch/README.md) | ❌ | no |  |  |  |
| [stdgo.internal.godebug](./internal/godebug/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.goexperiment](./internal/goexperiment/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.goos](./internal/goos/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.oserror](./internal/oserror/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.poll](./internal/poll/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.reflect](./internal/reflect/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.reflectlite](./internal/reflectlite/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.safefilepath](./internal/safefilepath/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.saferio](./internal/saferio/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.syscall.unix](./internal/syscall/unix/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.testenv](./internal/testenv/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.types.errors](./internal/types/errors/README.md) | ✅ | no |  |  |  |
| [stdgo.internal.xcoff](./internal/xcoff/README.md) | ❌ | no |  |  |  |
| [stdgo.io](./io/README.md) | ❌ | yes |  |  |  |
| [stdgo.io.fs](./io/fs/README.md) | ❌ | yes |  |  |  |
| [stdgo.log](./log/README.md) | ❌ | yes |  |  |  |
| [stdgo.math](./math/README.md) | ❌ | yes |  |  |  |
| [stdgo.math.big](./math/big/README.md) | ❌ | yes |  |  |  |
| [stdgo.math.bits](./math/bits/README.md) | ✅ | yes | ✅ | ✅ | ❌ |
| [stdgo.math.cmplx](./math/cmplx/README.md) | ✅ | yes | ❌ | ❌ | ❌ |
| [stdgo.math.rand](./math/rand/README.md) | ❌ | yes |  |  |  |
| [stdgo.os](./os/README.md) | ❌ | yes |  |  |  |
| [stdgo.path](./path/README.md) | ✅ | yes | ✅ | ✅ | ❌ |
| [stdgo.reflect](./reflect/README.md) | ✅ | no |  |  |  |
| [stdgo.regexp](./regexp/README.md) | ✅ | yes | ❌ | ❌ | ❌ |
| [stdgo.regexp.syntax](./regexp/syntax/README.md) | ✅ | yes | ❌ | ❌ | ❌ |
| [stdgo.runtime](./runtime/README.md) | ✅ | no |  |  |  |
| [stdgo.runtime.debug](./runtime/debug/README.md) | ✅ | no |  |  |  |
| [stdgo.sort](./sort/README.md) | ✅ | yes | ✅ | ✅ | ❌ |
| [stdgo.strconv](./strconv/README.md) | ✅ | yes | ✅ | ❌ | ❌ |
| [stdgo.strings](./strings/README.md) | ✅ | yes | ❌ | ✅ | ❌ |
| [stdgo.sync](./sync/README.md) | ❌ | yes |  |  |  |
| [stdgo.sync.atomic](./sync/atomic/README.md) | ❌ | yes |  |  |  |
| [stdgo.syscall](./syscall/README.md) | ❌ | yes |  |  |  |
| [stdgo.syscall.js](./syscall/js/README.md) | ❌ | yes |  |  |  |
| [stdgo.testing](./testing/README.md) | ✅ | no |  |  |  |
| [stdgo.testing.fstest](./testing/fstest/README.md) | ✅ | yes | ❌ | ❌ | ❌ |
| [stdgo.testing.internal.testdeps](./testing/internal/testdeps/README.md) | ✅ | no |  |  |  |
| [stdgo.testing.iotest](./testing/iotest/README.md) | ✅ | yes | ❌ | ❌ | ❌ |
| [stdgo.testing.quick](./testing/quick/README.md) | ✅ | yes | ❌ | ❌ | ❌ |
| [stdgo.time](./time/README.md) | ❌ | yes |  |  |  |
| [stdgo.unicode](./unicode/README.md) | ✅ | yes | ✅ | ✅ | ❌ |
| [stdgo.unicode.utf16](./unicode/utf16/README.md) | ✅ | yes | ✅ | ✅ | ❌ |
| [stdgo.unicode.utf8](./unicode/utf8/README.md) | ✅ | yes | ✅ | ✅ | ❌ |
| [stdgo.unsafe](./unsafe/README.md) | ✅ | no |  |  |  |

