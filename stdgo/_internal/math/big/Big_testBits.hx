package stdgo._internal.math.big;
function testBits(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T_nat.T_nat>(6, 6, ...[null, (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(5, 5, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (1u32 : stdgo._internal.math.big.Big_Word.Word), (2u32 : stdgo._internal.math.big.Big_Word.Word), (3u32 : stdgo._internal.math.big.Big_Word.Word), (4u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(5, 5, ...[(4u32 : stdgo._internal.math.big.Big_Word.Word), (3u32 : stdgo._internal.math.big.Big_Word.Word), (2u32 : stdgo._internal.math.big.Big_Word.Word), (1u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(8, 8, ...[(4u32 : stdgo._internal.math.big.Big_Word.Word), (3u32 : stdgo._internal.math.big.Big_Word.Word), (2u32 : stdgo._internal.math.big.Big_Word.Word), (1u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat)]) : stdgo.Slice<stdgo._internal.math.big.Big_T_nat.T_nat>)) {
            var _z:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
            _z._neg = true;
            var _got = _z.setBits(_test);
            var _want = (stdgo._internal.math.big.Big__norm._norm(_test) : stdgo._internal.math.big.Big_T_nat.T_nat);
            if (_got._abs._cmp(_want) != ((0 : stdgo.GoInt))) {
                _t.errorf(("SetBits(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got._abs)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
            if (_got._neg) {
                _t.errorf(("SetBits(%v): got negative result" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            };
            var _bits = (_z.bits() : stdgo._internal.math.big.Big_T_nat.T_nat);
            if (_bits._cmp(_want) != ((0 : stdgo.GoInt))) {
                _t.errorf(("%v.Bits() = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z._abs)), stdgo.Go.toInterface(stdgo.Go.asInterface(_bits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
    }
