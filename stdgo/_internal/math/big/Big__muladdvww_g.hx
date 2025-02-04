package stdgo._internal.math.big;
function _mulAddVWW_g(_z:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _y:stdgo._internal.math.big.Big_word.Word, _r:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        _c = _r;
        {
            var _i = (0 : stdgo.GoInt);
            while (((_i < (_z.length) : Bool) && (_i < (_x.length) : Bool) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.math.big.Big__muladdwww_g._mulAddWWW_g(_x[(_i : stdgo.GoInt)], _y, _c);
                    _c = @:tmpset0 __tmp__._0;
                    _z[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        return _c;
    }
