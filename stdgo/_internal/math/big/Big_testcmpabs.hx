package stdgo._internal.math.big;
function testCmpAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _values = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>((stdgo._internal.math.big.Big__cmpabstests._cmpAbsTests.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
        var _prev:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1071"
        for (_i => _s in stdgo._internal.math.big.Big__cmpabstests._cmpAbsTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_s?.__copy__(), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1073"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1074"
                _t.fatalf(("SetString(%s, 0) failed" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1076"
            if ((({
                final value = _prev;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (_prev.cmp(_x) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1077"
                _t.fatal(stdgo.Go.toInterface(("cmpAbsTests entries not sorted in ascending order" : stdgo.GoString)));
            };
            _values[(_i : stdgo.GoInt)] = _x;
            _prev = _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1083"
        for (_i => _x in _values) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1084"
            for (_j => _y in _values) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1086"
                {
                    var _k = (0 : stdgo.GoInt);
                    while ((_k < (4 : stdgo.GoInt) : Bool)) {
                        var _a:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _b:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1088"
                        _a.set(_x);
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1089"
                        _b.set(_y);
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1090"
                        if ((_k & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1091"
                            _a.neg((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
                        };
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1093"
                        if ((_k & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1094"
                            _b.neg((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
                        };
var _got = (_a.cmpAbs((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) : stdgo.GoInt);
var _want = (0 : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1099"
                        if ((_i > _j : Bool)) {
                            _want = (1 : stdgo.GoInt);
                        } else if ((_i < _j : Bool)) {
                            _want = (-1 : stdgo.GoInt);
                        };
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1105"
                        if (_got != (_want)) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1106"
                            _t.errorf(("absCmp |%s|, |%s|: got %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                        };
                        _k++;
                    };
                };
            };
        };
    }
