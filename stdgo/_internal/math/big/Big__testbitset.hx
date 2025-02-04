package stdgo._internal.math.big;
function _testBitset(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Void {
        var _n = (@:check2r _x.bitLen() : stdgo.GoInt);
        var _z = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_x);
        var _z1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_x);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_n + (10 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                var _old = (@:check2r _z.bit(_i) : stdgo.GoUInt);
var _old1 = (stdgo._internal.math.big.Big__altbit._altBit(_z1, _i) : stdgo.GoUInt);
if (_old != (_old1)) {
                    @:check2r _t.errorf(("bitset: inconsistent value for Bit(%s, %d), got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_old), stdgo.Go.toInterface(_old1));
                };
var _z = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBit(_z, _i, (1u32 : stdgo.GoUInt));
var _z1 = stdgo._internal.math.big.Big__altsetbit._altSetBit((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _z1, _i, (1u32 : stdgo.GoUInt));
if (@:check2r _z.bit(_i) == ((0u32 : stdgo.GoUInt))) {
                    @:check2r _t.errorf(("bitset: bit %d of %s got 0 want 1" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
                };
if (@:check2r _z.cmp(_z1) != ((0 : stdgo.GoInt))) {
                    @:check2r _t.errorf(("bitset: inconsistent value after SetBit 1, got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)));
                };
@:check2r _z.setBit(_z, _i, (0u32 : stdgo.GoUInt));
stdgo._internal.math.big.Big__altsetbit._altSetBit(_z1, _z1, _i, (0u32 : stdgo.GoUInt));
if (@:check2r _z.bit(_i) != ((0u32 : stdgo.GoUInt))) {
                    @:check2r _t.errorf(("bitset: bit %d of %s got 1 want 0" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
                };
if (@:check2r _z.cmp(_z1) != ((0 : stdgo.GoInt))) {
                    @:check2r _t.errorf(("bitset: inconsistent value after SetBit 0, got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)));
                };
stdgo._internal.math.big.Big__altsetbit._altSetBit(_z1, _z1, _i, _old);
@:check2r _z.setBit(_z, _i, _old);
if (@:check2r _z.cmp(_z1) != ((0 : stdgo.GoInt))) {
                    @:check2r _t.errorf(("bitset: inconsistent value after SetBit old, got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)));
                };
                _i++;
            };
        };
        if (@:check2r _z.cmp(_x) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("bitset: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
    }
