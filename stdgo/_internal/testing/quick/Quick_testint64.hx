package stdgo._internal.testing.quick;
function testInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _lo:stdgo.GoInt64 = (0 : stdgo.GoInt64), _hi:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _f = (function(_x:stdgo.GoInt64):Bool {
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L314"
            if ((_x < _lo : Bool)) {
                _lo = _x;
            };
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L317"
            if ((_x > _hi : Bool)) {
                _hi = _x;
            };
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L320"
            return true;
        } : stdgo.GoInt64 -> Bool);
        var _cfg = (stdgo.Go.setRef(({ maxCount : (10000 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick_config.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>);
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L323"
        stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f), _cfg);
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L324"
        if (((((_lo : stdgo.GoUInt64) >> (62i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) || (((_hi : stdgo.GoUInt64) >> (62i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L325"
            _t.errorf(("int64 returned range %#016x,%#016x; does not look like full range" : stdgo.GoString), stdgo.Go.toInterface(_lo), stdgo.Go.toInterface(_hi));
        };
    }
