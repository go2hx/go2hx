package stdgo._internal.math.big;
function _testGcd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _d:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Void {
        var x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        if ((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__))) {
            x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        };
        var y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        if ((_y != null && ((_y : Dynamic).__nil__ == null || !(_y : Dynamic).__nil__))) {
            y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        };
        var d = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).gCD(x, y, _a, _b);
        if (@:check2r d.cmp(_d) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("GCD(%s, %s, %s, %s): got d = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        if (((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__)) && (@:check2r x.cmp(_x) != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("GCD(%s, %s, %s, %s): got x = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
        if (((_y != null && ((_y : Dynamic).__nil__ == null || !(_y : Dynamic).__nil__)) && (@:check2r y.cmp(_y) != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("GCD(%s, %s, %s, %s): got y = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        };
        var _a2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_a);
        var _b2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_b);
        @:check2r _a2.gCD(x, y, _a2, _b2);
        if (@:check2r _a2.cmp(_d) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("aliased z = a GCD(%s, %s, %s, %s): got d = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        if (((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__)) && (@:check2r x.cmp(_x) != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("aliased z = a GCD(%s, %s, %s, %s): got x = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
        if (((_y != null && ((_y : Dynamic).__nil__ == null || !(_y : Dynamic).__nil__)) && (@:check2r y.cmp(_y) != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("aliased z = a GCD(%s, %s, %s, %s): got y = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        };
        _a2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_a);
        _b2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_b);
        @:check2r _b2.gCD(x, y, _a2, _b2);
        if (@:check2r _b2.cmp(_d) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("aliased z = b GCD(%s, %s, %s, %s): got d = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        if (((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__)) && (@:check2r x.cmp(_x) != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("aliased z = b GCD(%s, %s, %s, %s): got x = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
        if (((_y != null && ((_y : Dynamic).__nil__ == null || !(_y : Dynamic).__nil__)) && (@:check2r y.cmp(_y) != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("aliased z = b GCD(%s, %s, %s, %s): got y = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        };
        _a2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_a);
        _b2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_b);
        d = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).gCD(_a2, _b2, _a2, _b2);
        if (@:check2r d.cmp(_d) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("aliased x = a, y = b GCD(%s, %s, %s, %s): got d = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        if (((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__)) && (@:check2r _a2.cmp(_x) != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("aliased x = a, y = b GCD(%s, %s, %s, %s): got x = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
        if (((_y != null && ((_y : Dynamic).__nil__ == null || !(_y : Dynamic).__nil__)) && (@:check2r _b2.cmp(_y) != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("aliased x = a, y = b GCD(%s, %s, %s, %s): got y = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        };
        _a2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_a);
        _b2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_b);
        d = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).gCD(_b2, _a2, _a2, _b2);
        if (@:check2r d.cmp(_d) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("aliased x = b, y = a GCD(%s, %s, %s, %s): got d = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        if (((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__)) && (@:check2r _b2.cmp(_x) != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("aliased x = b, y = a GCD(%s, %s, %s, %s): got x = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
        if (((_y != null && ((_y : Dynamic).__nil__ == null || !(_y : Dynamic).__nil__)) && (@:check2r _a2.cmp(_y) != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("aliased x = b, y = a GCD(%s, %s, %s, %s): got y = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        };
    }
