package stdgo._internal.math.big;
function testModSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __1:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __2:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __3:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __4:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
var _sqrt = __4, _sq = __3, _modx4 = __2, _mod = __1, _elt = __0;
        var _sqrt__pointer__ = (stdgo.Go.setRef(_sqrt) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sq__pointer__ = (stdgo.Go.setRef(_sq) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _modx4__pointer__ = (stdgo.Go.setRef(_modx4) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _mod__pointer__ = (stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _elt__pointer__ = (stdgo.Go.setRef(_elt) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sqrt__pointer__ = (stdgo.Go.setRef(_sqrt) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sq__pointer__ = (stdgo.Go.setRef(_sq) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _modx4__pointer__ = (stdgo.Go.setRef(_modx4) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _mod__pointer__ = (stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _elt__pointer__ = (stdgo.Go.setRef(_elt) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sqrt__pointer__ = (stdgo.Go.setRef(_sqrt) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sq__pointer__ = (stdgo.Go.setRef(_sq) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _modx4__pointer__ = (stdgo.Go.setRef(_modx4) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _mod__pointer__ = (stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _elt__pointer__ = (stdgo.Go.setRef(_elt) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sqrt__pointer__ = (stdgo.Go.setRef(_sqrt) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sq__pointer__ = (stdgo.Go.setRef(_sq) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _modx4__pointer__ = (stdgo.Go.setRef(_modx4) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _mod__pointer__ = (stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _elt__pointer__ = (stdgo.Go.setRef(_elt) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((9i64 : stdgo.GoInt64)));
        for (_i => _s in (stdgo._internal.math.big.Big__primes._primes.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
            _mod.setString(_s?.__copy__(), (10 : stdgo.GoInt));
            _modx4.lsh(_mod__pointer__, (2u32 : stdgo.GoUInt));
            {
                var _x = (1 : stdgo.GoInt);
                while ((_x < (5 : stdgo.GoInt) : Bool)) {
                    _elt.rand(_r, _modx4__pointer__);
_elt.sub(_elt__pointer__, _mod__pointer__);
if (!stdgo._internal.math.big.Big__testModSqrt._testModSqrt(_t, _elt__pointer__, _mod__pointer__, _sq__pointer__, _sqrt__pointer__)) {
                        _t.errorf(("#%d: failed (sqrt(e) = %s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_sqrt__pointer__)));
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
                _mod.setInt64((_n : stdgo.GoInt64));
if (!_mod.probablyPrime((10 : stdgo.GoInt))) {
                    {
                        _n++;
                        continue;
                    };
                };
var _isSquare = (new stdgo.Slice<Bool>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
{
                    var _x = (1 : stdgo.GoInt);
                    while ((_x < _n : Bool)) {
                        _elt.setInt64((_x : stdgo.GoInt64));
if (!stdgo._internal.math.big.Big__testModSqrt._testModSqrt(_t, _elt__pointer__, _mod__pointer__, _sq__pointer__, _sqrt__pointer__)) {
                            _t.errorf(("#%d: failed (sqrt(%d,%d) = %s)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(_elt__pointer__)), stdgo.Go.toInterface(stdgo.Go.asInterface(_mod__pointer__)), stdgo.Go.toInterface(stdgo.Go.asInterface(_sqrt__pointer__)));
                        };
_isSquare[(_sq.uint64() : stdgo.GoInt)] = true;
                        _x++;
                    };
                };
{
                    var _x = (1 : stdgo.GoInt);
                    while ((_x < _n : Bool)) {
                        _sq.setInt64((_x : stdgo.GoInt64));
var _z = _sqrt.modSqrt(_sq__pointer__, _mod__pointer__);
if ((!_isSquare[(_x : stdgo.GoInt)] && (_z != null && ((_z : Dynamic).__nil__ == null || !(_z : Dynamic).__nil__)) : Bool)) {
                            _t.errorf(("#%d: failed (sqrt(%d,%d) = nil)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(_sqrt__pointer__)), stdgo.Go.toInterface(stdgo.Go.asInterface(_mod__pointer__)));
                        };
                        _x++;
                    };
                };
                _n++;
            };
        };
    }
