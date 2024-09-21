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
function _stackGrowthRecursive(_i:stdgo.GoInt):Void {
        var _pad:stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoUInt64)]);
        _pad = _internal.runtime_test.Runtime_test__padData._padData?.__copy__();
        for (_j => _ in _pad) {
            if (_pad[(_j : stdgo.GoInt)] != ((0i64 : stdgo.GoUInt64))) {
                return;
            };
        };
        if (_i != ((0 : stdgo.GoInt))) {
            _internal.runtime_test.Runtime_test__stackGrowthRecursive._stackGrowthRecursive((_i - (1 : stdgo.GoInt) : stdgo.GoInt));
        };
    }
