package stdgo._internal.encoding.json;
function benchmarkDecoderStream(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.reportAllocs();
        @:check2r _b.stopTimer();
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        @:check2 _buf.writeString((((("\"" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (1000000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\n\n\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        {
            var _err = (@:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
            if (_err != null) {
                @:check2r _b.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _ones = ((stdgo._internal.strings.Strings_repeat.repeat((" 1\n" : stdgo.GoString), (300000 : stdgo.GoInt)) + ("\n\n\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        @:check2r _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                if ((_i % (300000 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    @:check2 _buf.writeString(_ones.__copy__());
                };
_x = (null : stdgo.AnyInterface);
{
                    var _err = (@:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
                    if (((_err != null) || (_x != stdgo.Go.toInterface((1 : stdgo.GoFloat64))) : Bool)) {
                        @:check2r _b.fatalf(("Decode: %v after %d" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_i));
                    };
                };
                _i++;
            };
        };
    }
