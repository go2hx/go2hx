package stdgo._internal.math.big;
function testQuoStepD6(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _u = (stdgo.Go.setRef((new stdgo._internal.math.big.Big_int_.Int_(false, (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(4, 4, ...[(0u32 : stdgo._internal.math.big.Big_word.Word), (0u32 : stdgo._internal.math.big.Big_word.Word), (-2147483647u32 : stdgo._internal.math.big.Big_word.Word), (2147483647u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat)) : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _v = (stdgo.Go.setRef((new stdgo._internal.math.big.Big_int_.Int_(false, (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(3, 3, ...[(5u32 : stdgo._internal.math.big.Big_word.Word), (-2147483646u32 : stdgo._internal.math.big.Big_word.Word), (-2147483648u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat)) : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).quoRem(_u, _v, _r), _q:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
        {};
        {};
        {};
        {};
        if ((((@:check2r _q.string() : stdgo.GoString) != (("18446744073709551613" : stdgo.GoString)) && (@:check2r _q.string() : stdgo.GoString) != (("4294967293" : stdgo.GoString)) : Bool) || ((@:check2r _r.string() : stdgo.GoString) != (("3138550867693340382088035895064302439801311770021610913807" : stdgo.GoString)) && (@:check2r _r.string() : stdgo.GoString) != (("39614081266355540837921718287" : stdgo.GoString)) : Bool) : Bool)) {
            @:check2r _t.errorf(("got (%s, %s) want (%s, %s) or (%s, %s)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(("18446744073709551613" : stdgo.GoString)), stdgo.Go.toInterface(("3138550867693340382088035895064302439801311770021610913807" : stdgo.GoString)), stdgo.Go.toInterface(("4294967293" : stdgo.GoString)), stdgo.Go.toInterface(("39614081266355540837921718287" : stdgo.GoString)));
        };
    }
