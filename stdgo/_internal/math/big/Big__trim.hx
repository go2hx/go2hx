package stdgo._internal.math.big;
function _trim(_x:stdgo.Ref<stdgo._internal.math.big.Big_t_decimal.T_decimal>):Void {
        var _i = ((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoInt);
        while (((_i > (0 : stdgo.GoInt) : Bool) && ((@:checkr _x ?? throw "null pointer dereference")._mant[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _i--;
        };
        (@:checkr _x ?? throw "null pointer dereference")._mant = ((@:checkr _x ?? throw "null pointer dereference")._mant.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
        if (_i == ((0 : stdgo.GoInt))) {
            (@:checkr _x ?? throw "null pointer dereference")._exp = (0 : stdgo.GoInt);
        };
    }
