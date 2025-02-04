package stdgo._internal.encoding.gob;
function testTypeToPtrType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _t0 = (new stdgo._internal.encoding.gob.Gob_t_testtypetoptrtype___localname___type0_6215.T_testTypeToPtrType___localname___Type0_6215((7 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_testtypetoptrtype___localname___type0_6215.T_testTypeToPtrType___localname___Type0_6215);
        var _t0p = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_testtypetoptrtype___localname___type0_6215.T_testTypeToPtrType___localname___Type0_6215)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testtypetoptrtype___localname___type0_6215.T_testTypeToPtrType___localname___Type0_6215>);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encanddec._encAndDec(stdgo.Go.toInterface(stdgo.Go.asInterface(_t0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t0p))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
