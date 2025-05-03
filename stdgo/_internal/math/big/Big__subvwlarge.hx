package stdgo._internal.math.big;
function _subVWlarge(_z:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _y:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        _c = _y;
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith.go#L134"
        {
            var _i = (0 : stdgo.GoInt);
            while (((_i < (_z.length) : Bool) && (_i < (_x.length) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith.go#L135"
                if (_c == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/arith.go#L136"
                    (_z.__slice__(_i) : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>).__copyTo__((_x.__slice__(_i) : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>));
                    //"file:///home/runner/.go/go1.21.3/src/math/big/arith.go#L137"
                    return _c;
                };
var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub((_x[(_i : stdgo.GoInt)] : stdgo.GoUInt), (_c : stdgo.GoUInt), (0u32 : stdgo.GoUInt)), _zi:stdgo.GoUInt = __tmp__._0, _cc:stdgo.GoUInt = __tmp__._1;
_z[(_i : stdgo.GoInt)] = (_zi : stdgo._internal.math.big.Big_word.Word);
_c = (_cc : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith.go#L143"
        return _c;
    }
