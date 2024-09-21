package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testLargeWriteToConsole(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (!_internal.os_test.Os_test__testLargeWrite._testLargeWrite.value) {
            _t.skip(stdgo.Go.toInterface(("skipping console-flooding test; enable with -large_write" : stdgo.GoString)));
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((32000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _b) {
            _b[(_i : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
        };
        _b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
        var __tmp__ = stdgo._internal.os.Os_stdout.stdout.write(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Write to os.Stdout failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((_b.length))) {
            _t.errorf(("Write to os.Stdout should return %d; got %d" : stdgo.GoString), stdgo.Go.toInterface((_b.length)), stdgo.Go.toInterface(_n));
        };
        {
            var __tmp__ = stdgo._internal.os.Os_stderr.stderr.write(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("Write to os.Stderr failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((_b.length))) {
            _t.errorf(("Write to os.Stderr should return %d; got %d" : stdgo.GoString), stdgo.Go.toInterface((_b.length)), stdgo.Go.toInterface(_n));
        };
    }
