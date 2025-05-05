package stdgo._internal.encoding.json;
function testErrorMessageFromMisusedString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1304"
        for (_n => _tt in stdgo._internal.encoding.json.Json__wrongstringtests._wrongStringTests) {
            var _r = stdgo._internal.strings.Strings_newreader.newReader(_tt._in?.__copy__());
            var _s:stdgo._internal.encoding.json.Json_wrongstring.WrongString = ({} : stdgo._internal.encoding.json.Json_wrongstring.WrongString);
            var _err = (stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface(_r)).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.json.Json_wrongstring.WrongString>)))) : stdgo.Error);
            var _got = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_err))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1309"
            if (_got != (_tt._err)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1310"
                _t.errorf(("%d. got err = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._err));
            };
        };
    }
