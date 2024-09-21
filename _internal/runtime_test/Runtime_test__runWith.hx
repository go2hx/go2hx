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
function _runWith(_f:(stdgo.Ref<stdgo._internal.testing.Testing_B.B>, stdgo.GoInt) -> Void, _v:haxe.Rest<stdgo.GoInt>):stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void {
        var _v = new stdgo.Slice<stdgo.GoInt>(_v.length, 0, ..._v);
        return function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            for (__6 => _n in _v) {
                _b.run(stdgo._internal.strconv.Strconv_itoa.itoa(_n)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _f(_b, _n);
                });
            };
        };
    }
