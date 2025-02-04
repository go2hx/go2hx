package stdgo._internal.testing.quick;
function testInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __0:stdgo.GoInt64 = (0 : stdgo.GoInt64), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _hi = __1, _lo = __0;
        var _f = (function(_x:stdgo.GoInt64):Bool {
            if ((_x < _lo : Bool)) {
                _lo = _x;
            };
            if ((_x > _hi : Bool)) {
                _hi = _x;
            };
            return true;
        } : stdgo.GoInt64 -> Bool);
        var _cfg = (stdgo.Go.setRef(({ maxCount : (10000 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick_config.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>);
        stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f), _cfg);
        if (((((_lo : stdgo.GoUInt64) >> (62i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) || (((_hi : stdgo.GoUInt64) >> (62i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) : Bool)) {
            @:check2r _t.errorf(("int64 returned range %#016x,%#016x; does not look like full range" : stdgo.GoString), stdgo.Go.toInterface(_lo), stdgo.Go.toInterface(_hi));
        };
    }
