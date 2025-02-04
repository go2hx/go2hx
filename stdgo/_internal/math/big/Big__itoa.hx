package stdgo._internal.math.big;
function _itoa(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        if ((_base < (2 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("illegal base" : stdgo.GoString));
        } else if ((_x.length) == ((0 : stdgo.GoInt))) {
            return ((("0" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _i = ((_x._bitLen() / stdgo._internal.math.big.Big__log2._log2((_base : stdgo._internal.math.big.Big_word.Word)) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _s = (new stdgo.Slice<stdgo.GoUInt8>((_i : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _q = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._set(_x) : stdgo._internal.math.big.Big_t_nat.T_nat);
        while (((_q.length) > (0 : stdgo.GoInt) : Bool)) {
            _i--;
            var _r:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
            {
                var __tmp__ = _q._divW(_q, (_base : stdgo._internal.math.big.Big_word.Word));
                _q = @:tmpset0 __tmp__._0;
                _r = @:tmpset0 __tmp__._1;
            };
            _s[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString)[(_r : stdgo.GoInt)];
        };
        return (_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
    }
