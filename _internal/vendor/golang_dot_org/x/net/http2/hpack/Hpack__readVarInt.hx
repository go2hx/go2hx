package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function _readVarInt(_n:stdgo.GoUInt8, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _i = (0 : stdgo.GoUInt64), _remain = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if (((_n < (1 : stdgo.GoUInt8) : Bool) || (_n > (8 : stdgo.GoUInt8) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("bad n" : stdgo.GoString));
        };
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : _p, _2 : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__errNeedMore._errNeedMore };
        };
        _i = (_p[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        if ((_n < (8 : stdgo.GoUInt8) : Bool)) {
            _i = (_i & (((((1i64 : stdgo.GoUInt64) << (_n : stdgo.GoUInt64) : stdgo.GoUInt64)) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        if ((_i < ((((1i64 : stdgo.GoUInt64) << (_n : stdgo.GoUInt64) : stdgo.GoUInt64)) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool)) {
            return { _0 : _i, _1 : (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        var _origP = _p;
        _p = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _m:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            var _b = (_p[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            _p = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _i = (_i + ((((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _m : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                return { _0 : _i, _1 : _p, _2 : (null : stdgo.Error) };
            };
            _m = (_m + ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if ((_m >= (63i64 : stdgo.GoUInt64) : Bool)) {
                return { _0 : (0i64 : stdgo.GoUInt64), _1 : _origP, _2 : stdgo.Go.asInterface(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__errVarintOverflow._errVarintOverflow) };
            };
        };
        return { _0 : (0i64 : stdgo.GoUInt64), _1 : _origP, _2 : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__errNeedMore._errNeedMore };
    }
