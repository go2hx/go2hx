package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testConsistentEnviron(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _e0 = stdgo._internal.os.Os_environ_.environ_();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                var _e1 = stdgo._internal.os.Os_environ_.environ_();
                if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_e0), stdgo.Go.toInterface(_e1))) {
                    _t.fatalf(("environment changed" : stdgo.GoString));
                };
            });
        };
    }
