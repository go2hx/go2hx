package stdgo._internal.math.big;
function testIssue31084(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _p = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._expNN((new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[(5u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[(165u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat), null, false) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _p = _p._shl(_p, (165u32 : stdgo.GoUInt));
        var _got = ((_p._utoa((10 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _want = ((("1" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), (165 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_got != (_want)) {
            @:check2r _t.errorf(("shl(%v, %v)\n\tgot  %s\n\twant %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface((165 : stdgo.GoInt)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
