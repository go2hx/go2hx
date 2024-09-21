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
function _windowed(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _k:_internal.runtime_test.Runtime_test_Key.Key):Void {
        if (true) {
            _t.skip(stdgo.Go.toInterface(("Too slow on wasm" : stdgo.GoString)));
        };
        if (true) {
            _t.skip(stdgo.Go.toInterface(("Flaky on 32-bit systems" : stdgo.GoString)));
        };
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("Skipping in short mode" : stdgo.GoString)));
        };
        {};
        {
            var _r = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_r < _k._bits() : Bool), _r++, {
                var _h = _internal.runtime_test.Runtime_test__newHashSet._newHashSet();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (65536 : stdgo.GoInt) : Bool), _i++, {
                        _k._clear();
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (16 : stdgo.GoInt) : Bool), _j++, {
                                if (((_i >> (_j : stdgo.GoUInt) : stdgo.GoInt) & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                                    _k._flipBit((((_j + _r : stdgo.GoInt)) % _k._bits() : stdgo.GoInt));
                                };
                            });
                        };
                        _h._add(_k._hash());
                    });
                };
                _h._check(_t);
            });
        };
    }
