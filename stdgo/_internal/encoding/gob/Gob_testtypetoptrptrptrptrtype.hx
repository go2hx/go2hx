package stdgo._internal.encoding.gob;
function testTypeToPtrPtrPtrPtrType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _t2 = (new stdgo._internal.encoding.gob.Gob_t_testtypetoptrptrptrptrtype___localname___type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593() : stdgo._internal.encoding.gob.Gob_t_testtypetoptrptrptrptrtype___localname___type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593);
        _t2.a = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>>));
        _t2.a.value = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>));
        _t2.a.value.value = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.GoFloat64>));
        _t2.a.value.value.value = stdgo.Go.pointer((0 : stdgo.GoFloat64));
        _t2.a.value.value.value.value = (27.4 : stdgo.GoFloat64);
        var _t2pppp = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testtypetoptrptrptrptrtype___localname___type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593>>>));
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encanddec._encAndDec(stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)), stdgo.Go.toInterface(_t2pppp)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        if (((_t2pppp.value.value : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testtypetoptrptrptrptrtype___localname___type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593>) : stdgo._internal.encoding.gob.Gob_t_testtypetoptrptrptrptrtype___localname___type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593).a.value.value.value.value != (_t2.a.value.value.value.value)) {
            @:check2r _t.errorf(("wrong value after decode: %g not %g" : stdgo.GoString), stdgo.Go.toInterface(((_t2pppp.value.value : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testtypetoptrptrptrptrtype___localname___type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593>) : stdgo._internal.encoding.gob.Gob_t_testtypetoptrptrptrptrtype___localname___type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593).a.value.value.value.value), stdgo.Go.toInterface(_t2.a.value.value.value.value));
        };
    }
