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
function testNumGoroutine(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("NumGoroutine" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _want = ("1\n" : stdgo.GoString);
        if (_output != (_want)) {
            _t.fatalf(("want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(true, _i++, {
                stdgo._internal.runtime.Runtime_gosched.gosched();
                var _n = (stdgo._internal.runtime.Runtime_numGoroutine.numGoroutine() : stdgo.GoInt);
                _buf = (_buf.__slice__(0, stdgo._internal.runtime.Runtime_stack.stack(_buf, true)) : stdgo.Slice<stdgo.GoUInt8>);
                var _output = (stdgo._internal.strings.Strings_replaceAll.replaceAll((_buf : stdgo.GoString)?.__copy__(), ("in goroutine" : stdgo.GoString), stdgo.Go.str()?.__copy__())?.__copy__() : stdgo.GoString);
                var _nstk = (stdgo._internal.strings.Strings_count.count(_output?.__copy__(), ("goroutine " : stdgo.GoString)) : stdgo.GoInt);
                if (_n == (_nstk)) {
                    break;
                };
                if ((_i >= (10 : stdgo.GoInt) : Bool)) {
                    _t.fatalf(("NumGoroutine=%d, but found %d goroutines in stack dump: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_nstk), stdgo.Go.toInterface(_buf));
                };
            });
        };
    }
