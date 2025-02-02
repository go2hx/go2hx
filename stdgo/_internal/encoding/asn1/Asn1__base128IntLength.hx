package stdgo._internal.encoding.asn1;
function _base128IntLength(_n:stdgo.GoInt64):stdgo.GoInt {
        if (_n == ((0i64 : stdgo.GoInt64))) {
            return (1 : stdgo.GoInt);
        };
        var _l = (0 : stdgo.GoInt);
        {
            var _i = (_n : stdgo.GoInt64);
            while ((_i > (0i64 : stdgo.GoInt64) : Bool)) {
                _l++;
                _i = (_i >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            };
        };
        return _l;
    }
