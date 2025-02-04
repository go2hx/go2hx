package stdgo._internal.encoding.json;
function benchmarkUnicodeDecoder(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.reportAllocs();
        var _j = ((("\"\\uD83D\\uDE01\"" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _b.setBytes((_j.length : stdgo.GoInt64));
        var _r = stdgo._internal.bytes.Bytes_newreader.newReader(_j);
        var _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface(_r));
        var _out:stdgo.GoString = ("" : stdgo.GoString);
        var _out__pointer__ = stdgo.Go.pointer(_out);
        var _out__pointer__ = stdgo.Go.pointer(_out);
        var _out__pointer__ = stdgo.Go.pointer(_out);
        var _out__pointer__ = stdgo.Go.pointer(_out);
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                {
                    var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(_out__pointer__)) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _b.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
@:check2r _r.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                _i++;
            };
        };
    }
