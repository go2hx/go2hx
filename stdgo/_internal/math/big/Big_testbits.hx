package stdgo._internal.math.big;
function testBits(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t_nat.T_nat>(6, 6, ...[null, (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[(0u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(5, 5, ...[(0u32 : stdgo._internal.math.big.Big_word.Word), (1u32 : stdgo._internal.math.big.Big_word.Word), (2u32 : stdgo._internal.math.big.Big_word.Word), (3u32 : stdgo._internal.math.big.Big_word.Word), (4u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(5, 5, ...[(4u32 : stdgo._internal.math.big.Big_word.Word), (3u32 : stdgo._internal.math.big.Big_word.Word), (2u32 : stdgo._internal.math.big.Big_word.Word), (1u32 : stdgo._internal.math.big.Big_word.Word), (0u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(8, 8, ...[(4u32 : stdgo._internal.math.big.Big_word.Word), (3u32 : stdgo._internal.math.big.Big_word.Word), (2u32 : stdgo._internal.math.big.Big_word.Word), (1u32 : stdgo._internal.math.big.Big_word.Word), (0u32 : stdgo._internal.math.big.Big_word.Word), (0u32 : stdgo._internal.math.big.Big_word.Word), (0u32 : stdgo._internal.math.big.Big_word.Word), (0u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat)]) : stdgo.Slice<stdgo._internal.math.big.Big_t_nat.T_nat>)) {
            var _z:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            _z._neg = true;
            var _got = @:check2 _z.setBits(_test);
            var _want = (stdgo._internal.math.big.Big__norm._norm(_test) : stdgo._internal.math.big.Big_t_nat.T_nat);
            if ((@:checkr _got ?? throw "null pointer dereference")._abs._cmp(_want) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("SetBits(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _got ?? throw "null pointer dereference")._abs)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
            if ((@:checkr _got ?? throw "null pointer dereference")._neg) {
                @:check2r _t.errorf(("SetBits(%v): got negative result" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            };
            var _bits = (@:check2 _z.bits() : stdgo._internal.math.big.Big_t_nat.T_nat);
            if (_bits._cmp(_want) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("%v.Bits() = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z._abs)), stdgo.Go.toInterface(stdgo.Go.asInterface(_bits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
    }
