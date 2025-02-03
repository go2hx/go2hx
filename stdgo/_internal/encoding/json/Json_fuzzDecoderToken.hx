package stdgo._internal.encoding.json;
function fuzzDecoderToken(_f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>):Void {
        @:check2r _f.add(stdgo.Go.toInterface(((("{\n\"object\": {\n\t\"slice\": [\n\t\t1,\n\t\t2.0,\n\t\t\"3\",\n\t\t[4],\n\t\t{5: {}}\n\t]\n},\n\"slice\": [[]],\n\"string\": \":)\",\n\"int\": 1e5,\n\"float\": 3e-9\"\n}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)));
        @:check2r _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
            var _r = stdgo._internal.bytes.Bytes_newReader.newReader(_b);
            var _d = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(_r));
            while (true) {
                var __tmp__ = @:check2r _d.token(), __20:stdgo._internal.encoding.json.Json_Token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                        break;
                    };
                    return;
                };
            };
        }));
    }
