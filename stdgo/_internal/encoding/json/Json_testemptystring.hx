package stdgo._internal.encoding.json;
function testEmptyString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _data = (("{\"Number1\":\"1\", \"Number2\":\"\"}" : stdgo.GoString) : stdgo.GoString);
        var _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_data?.__copy__())));
        var _t2:stdgo._internal.encoding.json.Json_t_testemptystring___localname___t2_40735.T_testEmptyString___localname___T2_40735 = ({} : stdgo._internal.encoding.json.Json_t_testemptystring___localname___t2_40735.T_testEmptyString___localname___T2_40735);
        var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testemptystring___localname___t2_40735.T_testEmptyString___localname___T2_40735>)))) : stdgo.Error);
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("Decode: did not return error" : stdgo.GoString)));
        };
        if (_t2.number1 != ((1 : stdgo.GoInt))) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("Decode: did not set Number1" : stdgo.GoString)));
        };
    }
