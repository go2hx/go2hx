package stdgo._internal.encoding.asn1;
function _appendBase128Int(_dst:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt64):stdgo.Slice<stdgo.GoUInt8> {
        var _l = (stdgo._internal.encoding.asn1.Asn1__base128intlength._base128IntLength(_n) : stdgo.GoInt);
        {
            var _i = (_l - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _o = ((_n >> ((_i * (7 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoInt64) : stdgo.GoUInt8);
_o = (_o & ((127 : stdgo.GoUInt8)) : stdgo.GoUInt8);
if (_i != ((0 : stdgo.GoInt))) {
                    _o = (_o | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
_dst = (_dst.__append__(_o));
                _i--;
            };
        };
        return _dst;
    }
