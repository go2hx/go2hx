package _internal.encoding.json_test;
function exampleDecoder_Decode_stream():Void {
        {};
        {};
        var _dec = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("\n\t[\n\t\t{\"Name\": \"Ed\", \"Text\": \"Knock knock.\"},\n\t\t{\"Name\": \"Sam\", \"Text\": \"Who\'s there?\"},\n\t\t{\"Name\": \"Ed\", \"Text\": \"Go fmt.\"},\n\t\t{\"Name\": \"Sam\", \"Text\": \"Go fmt who?\"},\n\t\t{\"Name\": \"Ed\", \"Text\": \"Go fmt yourself!\"}\n\t]\n" : stdgo.GoString))));
        var __tmp__ = _dec.token(), _t:stdgo._internal.encoding.json.Json_Token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%T: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_t));
        while (_dec.more()) {
            var _m:_internal.encoding.json_test.Json_test_T_exampleDecoder_Decode_stream___localname___Message_2956.T_exampleDecoder_Decode_stream___localname___Message_2956 = ({} : _internal.encoding.json_test.Json_test_T_exampleDecoder_Decode_stream___localname___Message_2956.T_exampleDecoder_Decode_stream___localname___Message_2956);
            var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_m) : stdgo.Ref<_internal.encoding.json_test.Json_test_T_exampleDecoder_Decode_stream___localname___Message_2956.T_exampleDecoder_Decode_stream___localname___Message_2956>))) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
            stdgo._internal.fmt.Fmt_printf.printf(("%v: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_m.name), stdgo.Go.toInterface(_m.text));
        };
        {
            var __tmp__ = _dec.token();
            _t = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%T: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_t));
    }
