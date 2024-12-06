package stdgo._internal.encoding.json;
function benchmarkDecoderStream(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        _b.stopTimer();
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _dec = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(_buf__pointer__));
        _buf.writeString((((("\"" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (1000000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\n\n\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>);
        var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>);
        var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>);
        var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>);
        {
            var _err = (_dec.decode(stdgo.Go.toInterface(_x__pointer__)) : stdgo.Error);
            if (_err != null) {
                _b.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _ones = ((stdgo._internal.strings.Strings_repeat.repeat((" 1\n" : stdgo.GoString), (300000 : stdgo.GoInt)) + ("\n\n\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                if ((_i % (300000 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    _buf.writeString(_ones.__copy__());
                };
_x = (null : stdgo.AnyInterface);
{
                    var _err = (_dec.decode(stdgo.Go.toInterface(_x__pointer__)) : stdgo.Error);
                    if (((_err != null) || (_x != stdgo.Go.toInterface((1 : stdgo.GoFloat64))) : Bool)) {
                        _b.fatalf(("Decode: %v after %d" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_i));
                    };
                };
                _i++;
            };
        };
    }
