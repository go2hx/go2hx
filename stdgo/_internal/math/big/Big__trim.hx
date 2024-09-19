package stdgo._internal.math.big;
function _trim(_x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal>):Void {
        var _i = (_x._mant.length : stdgo.GoInt);
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_x._mant[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _i--;
        };
        _x._mant = (_x._mant.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
        if (_i == ((0 : stdgo.GoInt))) {
            _x._exp = (0 : stdgo.GoInt);
        };
    }
