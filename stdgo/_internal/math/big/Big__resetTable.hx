package stdgo._internal.math.big;
function _resetTable(_table:stdgo.Slice<stdgo._internal.math.big.Big_T_divisor.T_divisor>):Void {
        if (((_table != null) && (_table[(0 : stdgo.GoInt)]._bbb != null) : Bool)) {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_table.length) : Bool), _i++, {
                    _table[(_i : stdgo.GoInt)]._bbb = null;
                    _table[(_i : stdgo.GoInt)]._nbits = (0 : stdgo.GoInt);
                    _table[(_i : stdgo.GoInt)]._ndigits = (0 : stdgo.GoInt);
                });
            };
        };
    }
