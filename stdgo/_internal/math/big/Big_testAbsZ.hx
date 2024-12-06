package stdgo._internal.math.big;
function testAbsZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _zero:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
        var _zero__pointer__ = (stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _zero__pointer__ = (stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _zero__pointer__ = (stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _zero__pointer__ = (stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        for (__8 => _a in stdgo._internal.math.big.Big__sumZZ._sumZZ) {
            var _z:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
            _z.abs(_a._z);
            var _e:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
            var _e__pointer__ = (stdgo.Go.setRef(_e) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            var _e__pointer__ = (stdgo.Go.setRef(_e) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            var _e__pointer__ = (stdgo.Go.setRef(_e) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            var _e__pointer__ = (stdgo.Go.setRef(_e) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            _e.set(_a._z);
            if ((_e.cmp(_zero__pointer__) < (0 : stdgo.GoInt) : Bool)) {
                _e.sub(_zero__pointer__, _e__pointer__);
            };
            if (_z.cmp(_e__pointer__) != ((0 : stdgo.GoInt))) {
                _t.errorf(("got z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)));
            };
        };
    }
