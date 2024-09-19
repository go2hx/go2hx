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
function testStringW(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _strings = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("hello" : stdgo.GoString), ("a啦瞈b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__6 => _s in _strings) {
            var _b:stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
            for (__7 => _c in _s) {
                _b = (_b.__append__((_c : stdgo.GoUInt16)));
                if (_c != (((_c : stdgo.GoUInt16) : stdgo.GoInt32))) {
                    _t.errorf(("bad test: stringW can\'t handle >16 bit runes" : stdgo.GoString));
                };
            };
            _b = (_b.__append__((0 : stdgo.GoUInt16)));
            var _r = (stdgo._internal.runtime.Runtime_gostringW.gostringW(_b)?.__copy__() : stdgo.GoString);
            if (_r != (_s)) {
                _t.errorf(("gostringW(%v) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_s));
            };
        };
    }
