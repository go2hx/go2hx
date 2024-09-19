package stdgo._internal.math.big;
function testCmpAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _values = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>((stdgo._internal.math.big.Big__cmpAbsTests._cmpAbsTests.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>);
        var _prev:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        for (_i => _s in stdgo._internal.math.big.Big__cmpAbsTests._cmpAbsTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_s?.__copy__(), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _t.fatalf(("SetString(%s, 0) failed" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
            if ((((_prev != null) && ((_prev : Dynamic).__nil__ == null || !(_prev : Dynamic).__nil__)) && (_prev.cmp(_x) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _t.fatal(stdgo.Go.toInterface(("cmpAbsTests entries not sorted in ascending order" : stdgo.GoString)));
            };
            _values[(_i : stdgo.GoInt)] = _x;
            _prev = _x;
        };
        for (_i => _x in _values) {
            for (_j => _y in _values) {
                {
                    var _k = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_k < (4 : stdgo.GoInt) : Bool), _k++, {
                        var __0:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __1:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
var _b = __1, _a = __0;
                        _a.set(_x);
                        _b.set(_y);
                        if ((_k & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                            _a.neg((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
                        };
                        if ((_k & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                            _b.neg((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
                        };
                        var _got = (_a.cmpAbs((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) : stdgo.GoInt);
                        var _want = (0 : stdgo.GoInt);
                        if ((_i > _j : Bool)) {
                            _want = (1 : stdgo.GoInt);
                        } else if ((_i < _j : Bool)) {
                            _want = (-1 : stdgo.GoInt);
                        };
                        if (_got != (_want)) {
                            _t.errorf(("absCmp |%s|, |%s|: got %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                        };
                    });
                };
            };
        };
    }
