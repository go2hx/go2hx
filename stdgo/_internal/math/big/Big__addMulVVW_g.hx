package stdgo._internal.math.big;
function _addMulVVW_g(_z:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _y:stdgo._internal.math.big.Big_Word.Word):stdgo._internal.math.big.Big_Word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i < (_z.length) : Bool) && (_i < (_x.length) : Bool) : Bool), _i++, {
                var __tmp__ = stdgo._internal.math.big.Big__mulAddWWW_g._mulAddWWW_g(_x[(_i : stdgo.GoInt)], _y, _z[(_i : stdgo.GoInt)]), _z1:stdgo._internal.math.big.Big_Word.Word = __tmp__._0, _z0:stdgo._internal.math.big.Big_Word.Word = __tmp__._1;
                var __tmp__ = stdgo._internal.math.bits.Bits_add.add((_z0 : stdgo.GoUInt), (_c : stdgo.GoUInt), (0u32 : stdgo.GoUInt)), _lo:stdgo.GoUInt = __tmp__._0, _cc:stdgo.GoUInt = __tmp__._1;
                {
                    final __tmp__0 = (_cc : stdgo._internal.math.big.Big_Word.Word);
                    final __tmp__1 = (_lo : stdgo._internal.math.big.Big_Word.Word);
                    final __tmp__2 = _z;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    _c = __tmp__0;
                    __tmp__2[__tmp__3] = __tmp__1;
                };
                _c = (_c + (_z1) : stdgo._internal.math.big.Big_Word.Word);
            });
        };
        return _c;
    }