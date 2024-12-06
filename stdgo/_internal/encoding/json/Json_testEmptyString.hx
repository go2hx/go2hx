package stdgo._internal.encoding.json;
function testEmptyString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _data = ("{\"Number1\":\"1\", \"Number2\":\"\"}" : stdgo.GoString);
        var _dec = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_data?.__copy__())));
        var _t2:stdgo._internal.encoding.json.Json_T_testEmptyString___localname___T2_40735.T_testEmptyString___localname___T2_40735 = ({} : stdgo._internal.encoding.json.Json_T_testEmptyString___localname___T2_40735.T_testEmptyString___localname___T2_40735);
        var _t2__pointer__ = (stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEmptyString___localname___T2_40735.T_testEmptyString___localname___T2_40735>);
        var _t2__pointer__ = (stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEmptyString___localname___T2_40735.T_testEmptyString___localname___T2_40735>);
        var _t2__pointer__ = (stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEmptyString___localname___T2_40735.T_testEmptyString___localname___T2_40735>);
        var _t2__pointer__ = (stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEmptyString___localname___T2_40735.T_testEmptyString___localname___T2_40735>);
        var _err = (_dec.decode(stdgo.Go.toInterface(_t2__pointer__)) : stdgo.Error);
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("Decode: did not return error" : stdgo.GoString)));
        };
        if (_t2.number1 != ((1 : stdgo.GoInt))) {
            _t.fatal(stdgo.Go.toInterface(("Decode: did not set Number1" : stdgo.GoString)));
        };
    }
