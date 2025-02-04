package stdgo._internal.math.big;
function testFloatCmpSpecialValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _zero = (0 : stdgo.GoFloat64);
        var _args = (new stdgo.Slice<stdgo.GoFloat64>(8, 8, ...[stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), (-2.71828 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64), -_zero, _zero, (1 : stdgo.GoFloat64), (2.71828 : stdgo.GoFloat64), stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        var _xx = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _yy = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (4 : stdgo.GoInt) : Bool)) {
                for (__8 => _x in _args) {
                    @:check2r _xx.setFloat64(_x);
                    {
                        var __tmp__ = @:check2r _xx.float64(), _got:stdgo.GoFloat64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                        if (((_got != _x) || (_acc != (0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : Bool)) {
                            @:check2r _t.errorf(("Float(%g) == %g (%s)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)));
                        };
                    };
                    for (__9 => _y in _args) {
                        @:check2r _yy.setFloat64(_y);
                        var _got = (@:check2r _xx.cmp(_yy) : stdgo.GoInt);
                        var _want = (0 : stdgo.GoInt);
                        if ((_x < _y : Bool)) {
                            _want = (-1 : stdgo.GoInt);
                        } else if ((_x > _y : Bool)) {
                            _want = (1 : stdgo.GoInt);
                        };
                        if (_got != (_want)) {
                            @:check2r _t.errorf(("(%g).Cmp(%g) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                        };
                    };
                };
                _i++;
            };
        };
    }
