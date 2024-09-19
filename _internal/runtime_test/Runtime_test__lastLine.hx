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
function _lastLine(_src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _eop = (("END_OF_PROGRAM" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _l in stdgo._internal.bytes.Bytes_split.split(_src, (("\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
            if (stdgo._internal.bytes.Bytes_contains.contains(_l, _eop)) {
                return _i;
            };
        };
        return (0 : stdgo.GoInt);
    }
