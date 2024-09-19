package stdgo._internal.math.big;
function _lehmerUpdate(a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _q:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _r:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _s:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _t:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _u0:stdgo._internal.math.big.Big_Word.Word, _u1:stdgo._internal.math.big.Big_Word.Word, _v0:stdgo._internal.math.big.Big_Word.Word, _v1:stdgo._internal.math.big.Big_Word.Word, _even:Bool):Void {
        _t._abs = _t._abs._setWord(_u0);
        _s._abs = _s._abs._setWord(_v0);
        _t._neg = !_even;
        _s._neg = _even;
        _t.mul(a, _t);
        _s.mul(b, _s);
        _r._abs = _r._abs._setWord(_u1);
        _q._abs = _q._abs._setWord(_v1);
        _r._neg = _even;
        _q._neg = !_even;
        _r.mul(a, _r);
        _q.mul(b, _q);
        a.add(_t, _s);
        b.add(_r, _q);
    }
