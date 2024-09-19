package stdgo._internal.math.big;
function fuzzExpMont(_f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>):Void {
        _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _x1:stdgo.GoUInt, _x2:stdgo.GoUInt, _x3:stdgo.GoUInt, _y1:stdgo.GoUInt, _y2:stdgo.GoUInt, _y3:stdgo.GoUInt, _m1:stdgo.GoUInt, _m2:stdgo.GoUInt, _m3:stdgo.GoUInt):Void {
            if (((_m1 == ((0u32 : stdgo.GoUInt)) && _m2 == ((0u32 : stdgo.GoUInt)) : Bool) && (_m3 == (0u32 : stdgo.GoUInt)) : Bool)) {
                return;
            };
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBits((new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(3, 3, ...[(_x1 : stdgo._internal.math.big.Big_Word.Word), (_x2 : stdgo._internal.math.big.Big_Word.Word), (_x3 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>));
            var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBits((new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(3, 3, ...[(_y1 : stdgo._internal.math.big.Big_Word.Word), (_y2 : stdgo._internal.math.big.Big_Word.Word), (_y3 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>));
            var _m = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBits((new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(3, 3, ...[(_m1 : stdgo._internal.math.big.Big_Word.Word), (_m2 : stdgo._internal.math.big.Big_Word.Word), (_m3 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>));
            var _out = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).exp(_x, _y, _m);
            var _want = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)._expSlow(_x, _y, _m);
            if (_out.cmp(_want) != ((0 : stdgo.GoInt))) {
                _t.errorf(("x = %#x\ny=%#x\nz=%#x\nout=%#x\nwant=%#x\ndc: 16o 16i %X %X %X |p" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_m)), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_m)));
            };
        }));
    }