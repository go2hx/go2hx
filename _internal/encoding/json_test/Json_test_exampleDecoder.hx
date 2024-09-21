package _internal.encoding.json_test;
function exampleDecoder():Void {
        {};
        {};
        var _dec = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("\n\t{\"Name\": \"Ed\", \"Text\": \"Knock knock.\"}\n\t{\"Name\": \"Sam\", \"Text\": \"Who\'s there?\"}\n\t{\"Name\": \"Ed\", \"Text\": \"Go fmt.\"}\n\t{\"Name\": \"Sam\", \"Text\": \"Go fmt who?\"}\n\t{\"Name\": \"Ed\", \"Text\": \"Go fmt yourself!\"}\n" : stdgo.GoString))));
        while (true) {
            var _m:_internal.encoding.json_test.Json_test_T_exampleDecoder___localname___Message_1418.T_exampleDecoder___localname___Message_1418 = ({} : _internal.encoding.json_test.Json_test_T_exampleDecoder___localname___Message_1418.T_exampleDecoder___localname___Message_1418);
            {
                var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_m) : stdgo.Ref<_internal.encoding.json_test.Json_test_T_exampleDecoder___localname___Message_1418.T_exampleDecoder___localname___Message_1418>))) : stdgo.Error);
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    break;
                } else if (_err != null) {
                    stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
                };
            };
            stdgo._internal.fmt.Fmt_printf.printf(("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_m.name), stdgo.Go.toInterface(_m.text));
        };
    }
