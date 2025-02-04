package stdgo._internal.math.big;
function testModSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __0:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __3:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __4:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
var _sqrt = __4, _sq = __3, _modx4 = __2, _mod = __1, _elt = __0;
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource((9i64 : stdgo.GoInt64)));
        for (_i => _s in (stdgo._internal.math.big.Big__primes._primes.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
            @:check2 _mod.setString(_s?.__copy__(), (10 : stdgo.GoInt));
            @:check2 _modx4.lsh((stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (2u32 : stdgo.GoUInt));
            {
                var _x = (1 : stdgo.GoInt);
                while ((_x < (5 : stdgo.GoInt) : Bool)) {
                    @:check2 _elt.rand(_r, (stdgo.Go.setRef(_modx4) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
@:check2 _elt.sub((stdgo.Go.setRef(_elt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
if (!stdgo._internal.math.big.Big__testmodsqrt._testModSqrt(_t, (stdgo.Go.setRef(_elt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_sq) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_sqrt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))) {
                        @:check2r _t.errorf(("#%d: failed (sqrt(e) = %s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sqrt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))));
                    };
                    _x++;
                };
            };
            if ((stdgo._internal.testing.Testing_short.short() && (_i > (2 : stdgo.GoInt) : Bool) : Bool)) {
                break;
            };
        };
        if (stdgo._internal.testing.Testing_short.short()) {
            return;
        };
        {
            var _n = (3 : stdgo.GoInt);
            while ((_n < (100 : stdgo.GoInt) : Bool)) {
                @:check2 _mod.setInt64((_n : stdgo.GoInt64));
if (!@:check2 _mod.probablyPrime((10 : stdgo.GoInt))) {
                    {
                        _n++;
                        continue;
                    };
                };
var _isSquare = (new stdgo.Slice<Bool>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
{
                    var _x = (1 : stdgo.GoInt);
                    while ((_x < _n : Bool)) {
                        @:check2 _elt.setInt64((_x : stdgo.GoInt64));
if (!stdgo._internal.math.big.Big__testmodsqrt._testModSqrt(_t, (stdgo.Go.setRef(_elt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_sq) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_sqrt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))) {
                            @:check2r _t.errorf(("#%d: failed (sqrt(%d,%d) = %s)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_elt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sqrt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))));
                        };
_isSquare[(@:check2 _sq.uint64() : stdgo.GoInt)] = true;
                        _x++;
                    };
                };
{
                    var _x = (1 : stdgo.GoInt);
                    while ((_x < _n : Bool)) {
                        @:check2 _sq.setInt64((_x : stdgo.GoInt64));
var _z = @:check2 _sqrt.modSqrt((stdgo.Go.setRef(_sq) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
if ((!_isSquare[(_x : stdgo.GoInt)] && (_z != null && ((_z : Dynamic).__nil__ == null || !(_z : Dynamic).__nil__)) : Bool)) {
                            @:check2r _t.errorf(("#%d: failed (sqrt(%d,%d) = nil)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sqrt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))));
                        };
                        _x++;
                    };
                };
                _n++;
            };
        };
    }
