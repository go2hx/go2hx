package stdgo._internal.encoding.hex;
function testDumper_doubleclose(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _out:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _dumper = (stdgo._internal.encoding.hex.Hex_dumper.dumper(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>))) : stdgo._internal.io.Io_writecloser.WriteCloser);
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L194"
        _dumper.write(((("gopher" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L195"
        _dumper.close();
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L196"
        _dumper.close();
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L197"
        _dumper.write(((("gopher" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L198"
        _dumper.close();
        var _expected = (("00000000  67 6f 70 68 65 72                                 |gopher|\n" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L201"
        if ((_out.string() : stdgo.GoString) != (_expected)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L202"
            _t.fatalf(("got:\n%#v\nwant:\n%#v" : stdgo.GoString), stdgo.Go.toInterface((_out.string() : stdgo.GoString)), stdgo.Go.toInterface(_expected));
        };
    }
