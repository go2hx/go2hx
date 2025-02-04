package stdgo._internal.math.big;
function newInt(_x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        var _u = (_x : stdgo.GoUInt64);
        if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
            _u = -_u;
        };
        var _abs:stdgo.Slice<stdgo._internal.math.big.Big_word.Word> = (null : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
        if (_x == ((0i64 : stdgo.GoInt64))) {} else if ((true && ((_u >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != (0i64 : stdgo.GoUInt64)) : Bool)) {
            _abs = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(2, 2, ...[(_u : stdgo._internal.math.big.Big_word.Word), ((_u >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
        } else {
            _abs = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[(_u : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
        };
        return (stdgo.Go.setRef(({ _neg : (_x < (0i64 : stdgo.GoInt64) : Bool), _abs : _abs } : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    }
