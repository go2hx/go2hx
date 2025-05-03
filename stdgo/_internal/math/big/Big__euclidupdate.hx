package stdgo._internal.math.big;
function _euclidUpdate(a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ua:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ub:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _q:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _t:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _extended:Bool):Void {
        {
            var __tmp__ = _q.quoRem(a, b, _r);
            _q = @:tmpset0 __tmp__._0;
            _r = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (b : stdgo._internal.math.big.Big_int_.Int_)?.__copy__();
            var x = (a : stdgo._internal.math.big.Big_int_.Int_);
            x._neg = __tmp__?._neg;
            x._abs = __tmp__?._abs;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L744"
        if (_extended) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L746"
            _t.set(ub);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L747"
            _s.mul(ub, _q);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L748"
            ub.sub(ua, _s);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L749"
            ua.set(_t);
        };
    }
