package stdgo._internal.encoding.json;
function benchmarkDecoderStream(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L291"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L292"
        _b.stopTimer();
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L295"
        _buf.writeString((((("\"" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (1000000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\n\n\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L297"
        {
            var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L298"
                _b.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _ones = ((stdgo._internal.strings.Strings_repeat.repeat((" 1\n" : stdgo.GoString), (300000 : stdgo.GoInt)) + ("\n\n\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L301"
        _b.startTimer();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L302"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L303"
                if ((_i % (300000 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L304"
                    _buf.writeString(_ones.__copy__());
                };
_x = (null : stdgo.AnyInterface);
//"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L307"
                {
                    var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
                    if (((_err != null) || (_x != stdgo.Go.toInterface((1 : stdgo.GoFloat64))) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L308"
                        _b.fatalf(("Decode: %v after %d" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_i));
                    };
                };
                _i++;
            };
        };
    }
