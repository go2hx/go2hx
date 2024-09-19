package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function benchmarkExpand(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("noop" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _s:stdgo.GoString = ("" : stdgo.GoString);
            _b.reportAllocs();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _s = stdgo._internal.os.Os_expand.expand(("tick tick tick tick" : stdgo.GoString), function(_0:stdgo.GoString):stdgo.GoString {
                        return stdgo.Go.str()?.__copy__();
                    })?.__copy__();
                });
            };
            _internal.os_test.Os_test__global._global = stdgo.Go.toInterface(_s);
        });
        _b.run(("multiple" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _s:stdgo.GoString = ("" : stdgo.GoString);
            _b.reportAllocs();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _s = stdgo._internal.os.Os_expand.expand(("$a $a $a $a" : stdgo.GoString), function(_0:stdgo.GoString):stdgo.GoString {
                        return ("boom" : stdgo.GoString);
                    })?.__copy__();
                });
            };
            _internal.os_test.Os_test__global._global = stdgo.Go.toInterface(_s);
        });
    }
