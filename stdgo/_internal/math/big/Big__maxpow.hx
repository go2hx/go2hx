package stdgo._internal.math.big;
function _maxPow(_b:stdgo._internal.math.big.Big_word.Word):{ var _0 : stdgo._internal.math.big.Big_word.Word; var _1 : stdgo.GoInt; } {
        var _p = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _n = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _b;
            final __tmp__1 = (1 : stdgo.GoInt);
            _p = @:binopAssign __tmp__0;
            _n = @:binopAssign __tmp__1;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv.go#L33"
        {
            var _max = ((-1u32 : stdgo._internal.math.big.Big_word.Word) / _b : stdgo._internal.math.big.Big_word.Word);
            while ((_p <= _max : Bool)) {
                _p = (_p * (_b) : stdgo._internal.math.big.Big_word.Word);
                //"file:///home/runner/.go/go1.21.3/src/math/big/natconv.go#L36"
                _n++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv.go#L39"
        return { _0 : _p, _1 : _n };
    }
