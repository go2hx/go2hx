package stdgo._internal.math.big;
function _resetTable(_table:stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L436"
        if (((_table != null) && (_table[(0 : stdgo.GoInt)]._bbb != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L437"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_table.length) : Bool)) {
                    _table[(_i : stdgo.GoInt)]._bbb = null;
_table[(_i : stdgo.GoInt)]._nbits = (0 : stdgo.GoInt);
_table[(_i : stdgo.GoInt)]._ndigits = (0 : stdgo.GoInt);
                    _i++;
                };
            };
        };
    }
