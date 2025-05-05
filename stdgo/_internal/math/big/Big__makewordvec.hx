package stdgo._internal.math.big;
function _makeWordVec(_e:stdgo._internal.math.big.Big_word.Word, _n:stdgo.GoInt):stdgo.Slice<stdgo._internal.math.big.Big_word.Word> {
        var _v = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L237"
        for (_i => _ in _v) {
            _v[(_i : stdgo.GoInt)] = _e;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L240"
        return _v;
    }
