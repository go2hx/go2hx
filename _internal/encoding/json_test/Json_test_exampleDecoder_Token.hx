package _internal.encoding.json_test;
function exampleDecoder_Token():Void {
        {};
        var _dec = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("\n\t{\"Message\": \"Hello\", \"Array\": [1, 2, 3], \"Null\": null, \"Number\": 1.234}\n" : stdgo.GoString))));
        while (true) {
            var __tmp__ = _dec.token(), _t:stdgo._internal.encoding.json.Json_Token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                break;
            };
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
            stdgo._internal.fmt.Fmt_printf.printf(("%T: %v" : stdgo.GoString), stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_t));
            if (_dec.more()) {
                stdgo._internal.fmt.Fmt_printf.printf((" (more)" : stdgo.GoString));
            };
            stdgo._internal.fmt.Fmt_printf.printf(("\n" : stdgo.GoString));
        };
    }
