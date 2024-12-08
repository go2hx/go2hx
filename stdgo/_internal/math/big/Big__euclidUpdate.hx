package stdgo._internal.math.big;
function _euclidUpdate(a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ua:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ub:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _q:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _r:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _s:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _t:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _extended:Bool):Void {
        {
            var __tmp__ = _q.quoRem(a, b, _r);
            _q = __tmp__._0;
            _r = __tmp__._1;
        };
        {
            var __tmp__ = (b : stdgo._internal.math.big.Big_Int_.Int_)?.__copy__();
            var x = (a : stdgo._internal.math.big.Big_Int_.Int_);
            x._neg = __tmp__._neg;
            x._abs = __tmp__._abs;
        };
        if (_extended) {
            _t.set(ub);
            _s.mul(ub, _q);
            ub.sub(ua, _s);
            ua.set(_t);
        };
    }
