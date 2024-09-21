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
function _hwcmp(_f:stdgo.GoFloat64, _g:stdgo.GoFloat64):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _cmp = (0 : stdgo.GoInt), _isnan = false;
        if ((_f < _g : Bool)) {
            return { _0 : (-1 : stdgo.GoInt), _1 : false };
        } else if ((_f > _g : Bool)) {
            return { _0 : (1 : stdgo.GoInt), _1 : false };
        } else if (_f == (_g)) {
            return { _0 : (0 : stdgo.GoInt), _1 : false };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : true };
    }
