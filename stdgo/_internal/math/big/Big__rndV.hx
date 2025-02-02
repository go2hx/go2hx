package stdgo._internal.math.big;
function _rndV(_n:stdgo.GoInt):stdgo.Slice<stdgo._internal.math.big.Big_Word.Word> {
        var _v = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
        for (_i => _ in _v) {
            _v[(_i : stdgo.GoInt)] = stdgo._internal.math.big.Big__rndW._rndW();
        };
        return _v;
    }
