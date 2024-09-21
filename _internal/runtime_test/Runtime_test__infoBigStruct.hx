package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function _infoBigStruct():stdgo.Slice<stdgo.GoUInt8> {
        {
            final __value__ = ("wasm" : stdgo.GoString);
            if (__value__ == (("386" : stdgo.GoString)) || __value__ == (("arm" : stdgo.GoString)) || __value__ == (("mips" : stdgo.GoString)) || __value__ == (("mipsle" : stdgo.GoString))) {
                return (new stdgo.Slice<stdgo.GoUInt8>(15, 15, ...[
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            } else if (__value__ == (("arm64" : stdgo.GoString)) || __value__ == (("amd64" : stdgo.GoString)) || __value__ == (("loong64" : stdgo.GoString)) || __value__ == (("mips64" : stdgo.GoString)) || __value__ == (("mips64le" : stdgo.GoString)) || __value__ == (("ppc64" : stdgo.GoString)) || __value__ == (("ppc64le" : stdgo.GoString)) || __value__ == (("riscv64" : stdgo.GoString)) || __value__ == (("s390x" : stdgo.GoString)) || __value__ == (("wasm" : stdgo.GoString))) {
                return (new stdgo.Slice<stdgo.GoUInt8>(12, 12, ...[
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                throw stdgo.Go.toInterface(("unknown arch" : stdgo.GoString));
            };
        };
    }
