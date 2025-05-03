package stdgo._internal.math.big;
function _euclidExtGCD(_a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        var _g = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _x = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _y = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var a = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_a);
        var b = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_b);
        var ua = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setInt64((1i64 : stdgo.GoInt64));
        var va = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var ub = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var vb = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setInt64((1i64 : stdgo.GoInt64));
        var _q = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _temp = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L742"
        while ((((@:checkr b ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = _q.quoRem(a, b, _r);
                _q = @:tmpset0 __tmp__._0;
                _r = @:tmpset0 __tmp__._1;
            };
            {
                final __tmp__0 = b;
                final __tmp__1 = _r;
                final __tmp__2 = a;
                a = @:binopAssign __tmp__0;
                b = @:binopAssign __tmp__1;
                _r = @:binopAssign __tmp__2;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L748"
            _temp.set(ub);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L749"
            ub.mul(ub, _q);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L750"
            ub.sub(ua, ub);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L751"
            ua.set(_temp);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L754"
            _temp.set(vb);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L755"
            vb.mul(vb, _q);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L756"
            vb.sub(va, vb);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L757"
            va.set(_temp);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L759"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : a, _1 : ua, _2 : va };
            _g = __tmp__._0;
            _x = __tmp__._1;
            _y = __tmp__._2;
            __tmp__;
        };
    }
