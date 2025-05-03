package stdgo._internal.image;
function _mul3NonNeg(_x:stdgo.GoInt, _y:stdgo.GoInt, _z:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L288"
        if (((((_x < (0 : stdgo.GoInt) : Bool)) || ((_y < (0 : stdgo.GoInt) : Bool)) : Bool) || ((_z < (0 : stdgo.GoInt) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L289"
            return (-1 : stdgo.GoInt);
        };
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64((_x : stdgo.GoUInt64), (_y : stdgo.GoUInt64)), _hi:stdgo.GoUInt64 = __tmp__._0, _lo:stdgo.GoUInt64 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L292"
        if (_hi != ((0i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L293"
            return (-1 : stdgo.GoInt);
        };
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_lo, (_z : stdgo.GoUInt64));
            _hi = @:tmpset0 __tmp__._0;
            _lo = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L296"
        if (_hi != ((0i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L297"
            return (-1 : stdgo.GoInt);
        };
        var _a = (_lo : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L300"
        if ((((_a < (0 : stdgo.GoInt) : Bool)) || ((_a : stdgo.GoUInt64) != _lo) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L301"
            return (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L303"
        return _a;
    }
