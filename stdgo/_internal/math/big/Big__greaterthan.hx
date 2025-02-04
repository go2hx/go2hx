package stdgo._internal.math.big;
function _greaterThan(_x1:stdgo._internal.math.big.Big_word.Word, _x2:stdgo._internal.math.big.Big_word.Word, _y1:stdgo._internal.math.big.Big_word.Word, _y2:stdgo._internal.math.big.Big_word.Word):Bool {
        return ((_x1 > _y1 : Bool) || (_x1 == (_y1) && (_x2 > _y2 : Bool) : Bool) : Bool);
    }
