package stdgo._internal.math.big;
function leafSizeHelper(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _base:stdgo.GoInt, _size:stdgo.GoInt):Void {
        _b.stopTimer();
        var _originalLeafSize = (stdgo._internal.math.big.Big__leafSize._leafSize : stdgo.GoInt);
        stdgo._internal.math.big.Big__resetTable._resetTable((stdgo._internal.math.big.Big__cacheBase10._cacheBase10._table.__slice__(0) : stdgo.Slice<stdgo._internal.math.big.Big_T_divisor.T_divisor>));
        stdgo._internal.math.big.Big__leafSize._leafSize = _size;
        _b.startTimer();
        {
            var _d = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_d <= (10000 : stdgo.GoInt) : Bool), _d = (_d * ((10 : stdgo.GoInt)) : stdgo.GoInt), {
                _b.stopTimer();
                var _z:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
                _z = _z._expWW((_base : stdgo._internal.math.big.Big_Word.Word), (_d : stdgo._internal.math.big.Big_Word.Word));
                var __blank__ = _z._utoa(_base);
                _b.startTimer();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var __blank__ = _z._utoa(_base);
                    });
                };
            });
        };
        _b.stopTimer();
        stdgo._internal.math.big.Big__resetTable._resetTable((stdgo._internal.math.big.Big__cacheBase10._cacheBase10._table.__slice__(0) : stdgo.Slice<stdgo._internal.math.big.Big_T_divisor.T_divisor>));
        stdgo._internal.math.big.Big__leafSize._leafSize = _originalLeafSize;
        _b.startTimer();
    }