package stdgo._internal.crypto.subtle;
function constantTimeCompare(_x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        if ((_x.length) != ((_y.length))) {
            return (0 : stdgo.GoInt);
        };
        var _v:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_x.length) : Bool), _i++, {
                _v = (_v | ((_x[(_i : stdgo.GoInt)] ^ _y[(_i : stdgo.GoInt)] : stdgo.GoUInt8)) : stdgo.GoUInt8);
            });
        };
        return stdgo._internal.crypto.subtle.Subtle_constantTimeByteEq.constantTimeByteEq(_v, (0 : stdgo.GoUInt8));
    }