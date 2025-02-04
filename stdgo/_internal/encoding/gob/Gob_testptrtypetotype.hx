package stdgo._internal.encoding.gob;
function testPtrTypeToType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _t1p = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_testptrtypetotype___localname___type1_6414.T_testPtrTypeToType___localname___Type1_6414((17u32 : stdgo.GoUInt)) : stdgo._internal.encoding.gob.Gob_t_testptrtypetotype___localname___type1_6414.T_testPtrTypeToType___localname___Type1_6414)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testptrtypetotype___localname___type1_6414.T_testPtrTypeToType___localname___Type1_6414>);
        var _t1:stdgo._internal.encoding.gob.Gob_t_testptrtypetotype___localname___type1_6414.T_testPtrTypeToType___localname___Type1_6414 = ({} : stdgo._internal.encoding.gob.Gob_t_testptrtypetotype___localname___type1_6414.T_testPtrTypeToType___localname___Type1_6414);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encanddec._encAndDec(stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1p))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
