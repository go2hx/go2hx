package stdgo._internal.encoding.gob;
function testValueError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _t4p = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_testvalueerror___localname___type4_7228.T_testValueError___localname___Type4_7228((3 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_testvalueerror___localname___type4_7228.T_testValueError___localname___Type4_7228)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testvalueerror___localname___type4_7228.T_testValueError___localname___Type4_7228>);
        var _t4:stdgo._internal.encoding.gob.Gob_t_testvalueerror___localname___type4_7228.T_testValueError___localname___Type4_7228 = ({} : stdgo._internal.encoding.gob.Gob_t_testvalueerror___localname___type4_7228.T_testValueError___localname___Type4_7228);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encanddec._encAndDec(stdgo.Go.toInterface(stdgo.Go.asInterface(_t4p)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t4))) : stdgo.Error);
            if (((_err == null) || !stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("pointer" : stdgo.GoString)) : Bool)) {
                @:check2r _t.error(stdgo.Go.toInterface(("expected error about pointer; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
