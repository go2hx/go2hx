package stdgo._internal.math.big;
function _mulAddVWW_g(_z:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _y:stdgo._internal.math.big.Big_Word.Word, _r:stdgo._internal.math.big.Big_Word.Word):stdgo._internal.math.big.Big_Word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
        _c = _r;
        {
            var _i = (0 : stdgo.GoInt);
            while (((_i < (_z.length) : Bool) && (_i < (_x.length) : Bool) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.math.big.Big__mulAddWWW_g._mulAddWWW_g(_x[(_i : stdgo.GoInt)], _y, _c);
                    _c = __tmp__._0;
                    _z[(_i : stdgo.GoInt)] = __tmp__._1;
                };
                _i++;
            };
        };
        return _c;
    }
