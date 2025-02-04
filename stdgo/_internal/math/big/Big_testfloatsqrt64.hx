package stdgo._internal.math.big;
function testFloatSqrt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (100000 : stdgo.GoInt) : Bool)) {
                if (((_i == (100 : stdgo.GoInt)) && stdgo._internal.testing.Testing_short.short() : Bool)) {
                    break;
                };
var _r = (stdgo._internal.math.rand.Rand_float64.float64() : stdgo.GoFloat64);
var _got = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((53u32 : stdgo.GoUInt));
@:check2r _got.sqrt(stdgo._internal.math.big.Big_newfloat.newFloat(_r));
var _want = stdgo._internal.math.big.Big_newfloat.newFloat(stdgo._internal.math.Math_sqrt.sqrt(_r));
if (@:check2r _got.cmp(_want) != ((0 : stdgo.GoInt))) {
                    @:check2r _t.fatalf(("Sqrt(%g) =\n got %g;\nwant %g" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
                _i++;
            };
        };
    }
