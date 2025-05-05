package stdgo._internal.math.big;
function leafSizeHelper(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _base:stdgo.GoInt, _size:stdgo.GoInt):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L411"
        _b.stopTimer();
        var _originalLeafSize = (stdgo._internal.math.big.Big__leafsize._leafSize : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L413"
        stdgo._internal.math.big.Big__resettable._resetTable((stdgo._internal.math.big.Big__cachebase10._cacheBase10._table.__slice__(0) : stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>));
        stdgo._internal.math.big.Big__leafsize._leafSize = _size;
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L415"
        _b.startTimer();
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L417"
        {
            var _d = (1 : stdgo.GoInt);
            while ((_d <= (10000 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L418"
                _b.stopTimer();
var _z:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
_z = _z._expWW((_base : stdgo._internal.math.big.Big_word.Word), (_d : stdgo._internal.math.big.Big_word.Word));
_z._utoa(_base);
//"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L422"
                _b.startTimer();
//"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L424"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        _z._utoa(_base);
                        _i++;
                    };
                };
                _d = (_d * ((10 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L429"
        _b.stopTimer();
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L430"
        stdgo._internal.math.big.Big__resettable._resetTable((stdgo._internal.math.big.Big__cachebase10._cacheBase10._table.__slice__(0) : stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>));
        stdgo._internal.math.big.Big__leafsize._leafSize = _originalLeafSize;
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L432"
        _b.startTimer();
    }
