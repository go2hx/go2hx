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
function testTracebackInlined(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_skipIfOptimizationOff.skipIfOptimizationOff(stdgo.Go.asInterface(_t));
        var _check = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _r:stdgo.Ref<_internal.runtime_test.Runtime_test_T_ttiResult.T_ttiResult>, _funcs:haxe.Rest<stdgo.GoString>):Void {
            _t.helper();
            var _frames = _internal.runtime_test.Runtime_test__parseTraceback1._parseTraceback1(_t, _r._printed?.__copy__())._frames;
            _t.log(stdgo.Go.toInterface(_r._printed));
            while ((((_frames.length) > (0 : stdgo.GoInt) : Bool) && (_frames[(0 : stdgo.GoInt)]._funcName != ("runtime_test.ttiLeaf" : stdgo.GoString)) : Bool)) {
                _frames = (_frames.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_tbFrame.T_tbFrame>>);
            };
            if ((_frames.length) == ((0 : stdgo.GoInt))) {
                _t.errorf(("missing runtime_test.ttiLeaf" : stdgo.GoString));
                return;
            };
            _frames = (_frames.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_tbFrame.T_tbFrame>>);
            for (_i => _want in _funcs) {
                var _got = ("<end>" : stdgo.GoString);
                if ((_i < (_frames.length) : Bool)) {
                    _got = _frames[(_i : stdgo.GoInt)]._funcName?.__copy__();
                    if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_want?.__copy__(), (")" : stdgo.GoString))) {
                        _got = (_got + (((("(" : stdgo.GoString) + _frames[(_i : stdgo.GoInt)]._args?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                };
                if (_got != (_want)) {
                    _t.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    return;
                };
            };
        };
        _t.run(("simple" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _r = _internal.runtime_test.Runtime_test__ttiSimple1._ttiSimple1();
            _check(_t, _r, ("runtime_test.ttiSimple3(...)" : stdgo.GoString), ("runtime_test.ttiSimple2(...)" : stdgo.GoString), ("runtime_test.ttiSimple1()" : stdgo.GoString));
        });
        _t.run(("sigpanic" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _r = _internal.runtime_test.Runtime_test__ttiSigpanic1._ttiSigpanic1();
            _check(_t, _r, ("runtime_test.ttiSigpanic1.func1()" : stdgo.GoString), ("panic" : stdgo.GoString), ("runtime_test.ttiSigpanic3(...)" : stdgo.GoString), ("runtime_test.ttiSigpanic2(...)" : stdgo.GoString), ("runtime_test.ttiSigpanic1()" : stdgo.GoString));
        });
        _t.run(("wrapper" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _r = _internal.runtime_test.Runtime_test__ttiWrapper1._ttiWrapper1();
            _check(_t, _r, ("runtime_test.ttiWrapper.m1(...)" : stdgo.GoString), ("runtime_test.ttiWrapper1()" : stdgo.GoString));
        });
        _t.run(("excluded" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _r = _internal.runtime_test.Runtime_test__ttiExcluded1._ttiExcluded1();
            _check(_t, _r, ("runtime_test.ttiExcluded3(...)" : stdgo.GoString), ("runtime_test.ttiExcluded1()" : stdgo.GoString));
        });
    }
