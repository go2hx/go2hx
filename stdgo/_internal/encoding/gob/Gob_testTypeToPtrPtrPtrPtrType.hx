package stdgo._internal.encoding.gob;
function testTypeToPtrPtrPtrPtrType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _t2 = (new stdgo._internal.encoding.gob.Gob_T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593() : stdgo._internal.encoding.gob.Gob_T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593);
        _t2.a = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>>));
        _t2.a.value = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>));
        _t2.a.value.value = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.GoFloat64>));
        _t2.a.value.value.value = stdgo.Go.pointer((0 : stdgo.GoFloat64));
        _t2.a.value.value.value.value = (27.4 : stdgo.GoFloat64);
        var _t2pppp = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593>>>));
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encAndDec._encAndDec(stdgo.Go.toInterface(_t2), stdgo.Go.toInterface(_t2pppp)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        if (((_t2pppp.value.value : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593>) : stdgo._internal.encoding.gob.Gob_T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593).a.value.value.value.value != (_t2.a.value.value.value.value)) {
            _t.errorf(("wrong value after decode: %g not %g" : stdgo.GoString), stdgo.Go.toInterface(((_t2pppp.value.value : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593>) : stdgo._internal.encoding.gob.Gob_T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593).a.value.value.value.value), stdgo.Go.toInterface(_t2.a.value.value.value.value));
        };
    }