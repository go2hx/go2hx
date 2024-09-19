package _internal.vendor.golang_dot_org.x.net.idna;
function _madd(_a:stdgo.GoInt32, _b:stdgo.GoInt32, _c:stdgo.GoInt32):{ var _0 : stdgo.GoInt32; var _1 : Bool; } {
        var _next = (0 : stdgo.GoInt32), _overflow = false;
        var _p = ((_b : stdgo.GoInt64) * (_c : stdgo.GoInt64) : stdgo.GoInt64);
        if ((_p > ((2147483647i64 : stdgo.GoInt64) - (_a : stdgo.GoInt64) : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt32), _1 : true };
        };
        return { _0 : (_a + (_p : stdgo.GoInt32) : stdgo.GoInt32), _1 : false };
    }
