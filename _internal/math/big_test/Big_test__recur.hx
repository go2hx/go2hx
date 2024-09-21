package _internal.math.big_test;
function _recur(_n:stdgo.GoInt64, _lim:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        var _term = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        if ((_n % (3i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((1i64 : stdgo.GoInt64))) {
            _term.setInt64((1i64 : stdgo.GoInt64));
        } else {
            _term.setInt64(((((_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) / (3i64 : stdgo.GoInt64) : stdgo.GoInt64) * (2i64 : stdgo.GoInt64) : stdgo.GoInt64));
        };
        if ((_n > _lim : Bool)) {
            return _term;
        };
        var _frac = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).inv(_internal.math.big_test.Big_test__recur._recur((_n + (1i64 : stdgo.GoInt64) : stdgo.GoInt64), _lim));
        return _term.add(_term, _frac);
    }
