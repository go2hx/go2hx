package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function _appendVarInt(_dst:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoUInt8, _i:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> {
        var _k = (((((1i64 : stdgo.GoUInt64) << _n : stdgo.GoUInt64)) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        if ((_i < _k : Bool)) {
            return (_dst.__append__((_i : stdgo.GoUInt8)));
        };
        _dst = (_dst.__append__((_k : stdgo.GoUInt8)));
        _i = (_i - (_k) : stdgo.GoUInt64);
        stdgo.Go.cfor((_i >= (128i64 : stdgo.GoUInt64) : Bool), _i = (_i >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64), {
            _dst = (_dst.__append__((((128i64 : stdgo.GoUInt64) | ((_i & (127i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64) : stdgo.GoUInt8)));
        });
        return (_dst.__append__((_i : stdgo.GoUInt8)));
    }
