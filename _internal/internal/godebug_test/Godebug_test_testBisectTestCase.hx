package _internal.internal.godebug_test;
import stdgo._internal.internal.godebug.Godebug;
function testBisectTestCase(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = stdgo._internal.internal.godebug.Godebug_new_.new_(("#buggy" : stdgo.GoString));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                var _a = (_s.value() == (("1" : stdgo.GoString)) : Bool);
                var _b = (_s.value() == (("1" : stdgo.GoString)) : Bool);
                var _c = (_s.value() == (("1" : stdgo.GoString)) : Bool);
                var _d = (_s.value() == (("1" : stdgo.GoString)) : Bool);
                var _e = (_s.value() == (("1" : stdgo.GoString)) : Bool);
                if (_a) {
                    _t.log(stdgo.Go.toInterface(("ok" : stdgo.GoString)));
                };
                if (_b) {
                    _t.log(stdgo.Go.toInterface(("ok" : stdgo.GoString)));
                };
                if (_c) {
                    _t.error(stdgo.Go.toInterface(("bug" : stdgo.GoString)));
                };
                if ((_d && _e : Bool)) {
                    _t.error(stdgo.Go.toInterface(("bug" : stdgo.GoString)));
                };
            });
        };
    }
