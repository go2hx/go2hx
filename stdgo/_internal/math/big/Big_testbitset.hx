package stdgo._internal.math.big;
function testBitSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _test in stdgo._internal.math.big.Big__bitwisetests._bitwiseTests) {
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            @:check2r _x.setString(_test._x?.__copy__(), (0 : stdgo.GoInt));
            stdgo._internal.math.big.Big__testbitset._testBitset(_t, _x);
            _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            @:check2r _x.setString(_test._y?.__copy__(), (0 : stdgo.GoInt));
            stdgo._internal.math.big.Big__testbitset._testBitset(_t, _x);
        };
        for (_i => _test in stdgo._internal.math.big.Big__bitsettests._bitsetTests) {
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            @:check2r _x.setString(_test._x?.__copy__(), (0 : stdgo.GoInt));
            var _b = (@:check2r _x.bit(_test._i) : stdgo.GoUInt);
            if (_b != (_test._b)) {
                @:check2r _t.errorf(("#%d got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_test._b));
            };
        };
        var _z = stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64));
        @:check2r _z.setBit(stdgo._internal.math.big.Big_newint.newInt((0i64 : stdgo.GoInt64)), (2 : stdgo.GoInt), (1u32 : stdgo.GoUInt));
        if (@:check2r _z.cmp(stdgo._internal.math.big.Big_newint.newInt((4i64 : stdgo.GoInt64))) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("destination leaked into result; got %s want 4" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
    }
