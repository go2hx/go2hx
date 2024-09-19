package stdgo._internal.math.big;
function testIssue42838(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var __tmp__ = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._scan(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("159309191113245227702888039776771180559110455519261878607388585338616290151305816094308987472018268594098344692611135542392730712890625" : stdgo.GoString))), (0 : stdgo.GoInt), false), _z:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._0, __14:stdgo.GoInt = __tmp__._1, __15:stdgo.GoInt = __tmp__._2, __16:stdgo.Error = __tmp__._3;
        _z = _z._shl(_z, (192u32 : stdgo.GoUInt));
        var _got = ((_z._utoa((10 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _want = ((("1" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), (192 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("shl(%v, %v)\n\tgot  %s\n\twant %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface((192 : stdgo.GoInt)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
