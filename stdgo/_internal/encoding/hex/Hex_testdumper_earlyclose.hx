package stdgo._internal.encoding.hex;
function testDumper_earlyclose(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _out:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _dumper = (stdgo._internal.encoding.hex.Hex_dumper.dumper(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>))) : stdgo._internal.io.Io_writecloser.WriteCloser);
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L210"
        _dumper.close();
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L211"
        _dumper.write(((("gopher" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var _expected = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L214"
        if ((_out.string() : stdgo.GoString) != (_expected)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L215"
            _t.fatalf(("got:\n%#v\nwant:\n%#v" : stdgo.GoString), stdgo.Go.toInterface((_out.string() : stdgo.GoString)), stdgo.Go.toInterface(_expected));
        };
    }
