package stdgo._internal.math.big;
function _testGcd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _d:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Void {
        var x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L814"
        if (({
            final value = _x;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        };
        var y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L818"
        if (({
            final value = _y;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        };
        var d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).gCD(x, y, _a, _b);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L823"
        if (d.cmp(_d) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L824"
            _t.errorf(("GCD(%s, %s, %s, %s): got d = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L826"
        if ((({
            final value = _x;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (x.cmp(_x) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L827"
            _t.errorf(("GCD(%s, %s, %s, %s): got x = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L829"
        if ((({
            final value = _y;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (y.cmp(_y) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L830"
            _t.errorf(("GCD(%s, %s, %s, %s): got y = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        };
        var _a2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_a);
        var _b2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_b);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L836"
        _a2.gCD(x, y, _a2, _b2);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L837"
        if (_a2.cmp(_d) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L838"
            _t.errorf(("aliased z = a GCD(%s, %s, %s, %s): got d = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L840"
        if ((({
            final value = _x;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (x.cmp(_x) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L841"
            _t.errorf(("aliased z = a GCD(%s, %s, %s, %s): got x = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L843"
        if ((({
            final value = _y;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (y.cmp(_y) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L844"
            _t.errorf(("aliased z = a GCD(%s, %s, %s, %s): got y = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        };
        _a2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_a);
        _b2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_b);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L849"
        _b2.gCD(x, y, _a2, _b2);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L850"
        if (_b2.cmp(_d) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L851"
            _t.errorf(("aliased z = b GCD(%s, %s, %s, %s): got d = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L853"
        if ((({
            final value = _x;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (x.cmp(_x) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L854"
            _t.errorf(("aliased z = b GCD(%s, %s, %s, %s): got x = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L856"
        if ((({
            final value = _y;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (y.cmp(_y) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L857"
            _t.errorf(("aliased z = b GCD(%s, %s, %s, %s): got y = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        };
        _a2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_a);
        _b2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_b);
        d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).gCD(_a2, _b2, _a2, _b2);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L863"
        if (d.cmp(_d) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L864"
            _t.errorf(("aliased x = a, y = b GCD(%s, %s, %s, %s): got d = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L866"
        if ((({
            final value = _x;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (_a2.cmp(_x) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L867"
            _t.errorf(("aliased x = a, y = b GCD(%s, %s, %s, %s): got x = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L869"
        if ((({
            final value = _y;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (_b2.cmp(_y) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L870"
            _t.errorf(("aliased x = a, y = b GCD(%s, %s, %s, %s): got y = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        };
        _a2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_a);
        _b2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_b);
        d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).gCD(_b2, _a2, _a2, _b2);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L876"
        if (d.cmp(_d) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L877"
            _t.errorf(("aliased x = b, y = a GCD(%s, %s, %s, %s): got d = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L879"
        if ((({
            final value = _x;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (_b2.cmp(_x) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L880"
            _t.errorf(("aliased x = b, y = a GCD(%s, %s, %s, %s): got x = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L882"
        if ((({
            final value = _y;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (_a2.cmp(_y) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L883"
            _t.errorf(("aliased x = b, y = a GCD(%s, %s, %s, %s): got y = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        };
    }
