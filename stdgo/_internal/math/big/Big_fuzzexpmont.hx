package stdgo._internal.math.big;
function fuzzExpMont(_f:stdgo.Ref<stdgo._internal.testing.Testing_f.F>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L553"
        _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _x1:stdgo.GoUInt, _x2:stdgo.GoUInt, _x3:stdgo.GoUInt, _y1:stdgo.GoUInt, _y2:stdgo.GoUInt, _y3:stdgo.GoUInt, _m1:stdgo.GoUInt, _m2:stdgo.GoUInt, _m3:stdgo.GoUInt):Void {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L554"
            if (((_m1 == ((0u32 : stdgo.GoUInt)) && _m2 == ((0u32 : stdgo.GoUInt)) : Bool) && (_m3 == (0u32 : stdgo.GoUInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L555"
                return;
            };
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBits((new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(3, 3, ...[(_x1 : stdgo._internal.math.big.Big_word.Word), (_x2 : stdgo._internal.math.big.Big_word.Word), (_x3 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>));
            var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBits((new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(3, 3, ...[(_y1 : stdgo._internal.math.big.Big_word.Word), (_y2 : stdgo._internal.math.big.Big_word.Word), (_y3 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>));
            var _m = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBits((new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(3, 3, ...[(_m1 : stdgo._internal.math.big.Big_word.Word), (_m2 : stdgo._internal.math.big.Big_word.Word), (_m3 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>));
            var _out = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).exp(_x, _y, _m);
            var _want = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)._expSlow(_x, _y, _m);
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L562"
            if (_out.cmp(_want) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L563"
                _t.errorf(("x = %#x\ny=%#x\nz=%#x\nout=%#x\nwant=%#x\ndc: 16o 16i %X %X %X |p" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_m)), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_m)));
            };
        }));
    }
