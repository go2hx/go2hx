package stdgo._internal.math.big;
function _euclidExtGCD(_a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } {
        var _g = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _x = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _y = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var a = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(_a);
        var b = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(_b);
        var ua = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setInt64((1i64 : stdgo.GoInt64));
        var va = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var ub = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var vb = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setInt64((1i64 : stdgo.GoInt64));
        var _q = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _temp = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        while (((b._abs.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = _q.quoRem(a, b, _r);
                _q = __tmp__._0;
                _r = __tmp__._1;
            };
            {
                final __tmp__0 = b;
                final __tmp__1 = _r;
                final __tmp__2 = a;
                a = __tmp__0;
                b = __tmp__1;
                _r = __tmp__2;
            };
            _temp.set(ub);
            ub.mul(ub, _q);
            ub.sub(ua, ub);
            ua.set(_temp);
            _temp.set(vb);
            vb.mul(vb, _q);
            vb.sub(va, vb);
            va.set(_temp);
        };
        return { _0 : a, _1 : ua, _2 : va };
    }
