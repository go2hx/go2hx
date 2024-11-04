package stdgo._internal.math.big;
function testFloatSqrt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (100000 : stdgo.GoInt) : Bool)) {
                if (((_i == (100 : stdgo.GoInt)) && stdgo._internal.testing.Testing_short.short() : Bool)) {
                    break;
                };
var _r = (stdgo._internal.math.rand.Rand_float64.float64() : stdgo.GoFloat64);
var _got = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec((53u32 : stdgo.GoUInt));
_got.sqrt(stdgo._internal.math.big.Big_newFloat.newFloat(_r));
var _want = stdgo._internal.math.big.Big_newFloat.newFloat(stdgo._internal.math.Math_sqrt.sqrt(_r));
if (_got.cmp(_want) != ((0 : stdgo.GoInt))) {
                    _t.fatalf(("Sqrt(%g) =\n got %g;\nwant %g" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
                _i++;
            };
        };
    }
