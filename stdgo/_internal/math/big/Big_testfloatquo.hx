package stdgo._internal.math.big;
function testFloatQuo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _preci = (200 : stdgo.GoInt);
        var _precf = (20 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                var _bits = (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(_preci - (1 : stdgo.GoInt) : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_bits.Bits);
if ((_i & (3 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _bits = (_bits.__append__((0 : stdgo.GoInt)));
                };
if ((_i & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _bits = (_bits.__append__((-1 : stdgo.GoInt)));
                };
if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _bits = (_bits.__append__(-_precf));
                };
var _z = _bits.float_();
var _y = stdgo._internal.math.big.Big_newfloat.newFloat((3.141592653589793e+123 : stdgo.GoFloat64));
var _x = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((@:check2r _z.prec() + @:check2r _y.prec() : stdgo.GoUInt)).setMode((2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode));
@:check2r _x.mul(_z, _y);
{
                    var _got = (@:check2r _x.acc() : stdgo._internal.math.big.Big_accuracy.Accuracy);
                    if (_got != ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy))) {
                        @:check2r _t.errorf(("got acc = %s; want exact" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)));
                    };
                };
for (__8 => _mode in (new stdgo.GoArray<stdgo._internal.math.big.Big_roundingmode.RoundingMode>(3, 3, ...[(2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)]).__setNumber32__() : stdgo.GoArray<stdgo._internal.math.big.Big_roundingmode.RoundingMode>)) {
                    {
                        var _d = (-5 : stdgo.GoInt);
                        while ((_d < (5 : stdgo.GoInt) : Bool)) {
                            var _prec = ((_preci + _d : stdgo.GoInt) : stdgo.GoUInt);
var _got = @:check2r @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setMode(_mode).quo(_x, _y);
var _want = _bits._round(_prec, _mode);
if (@:check2r _got.cmp(_want) != ((0 : stdgo.GoInt))) {
                                @:check2r _t.errorf(("i = %d, prec = %d, %s:\n\t     %s\n\t/    %s\n\t=    %s\n\twant %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                            };
                            _d++;
                        };
                    };
                };
                _i++;
            };
        };
    }
