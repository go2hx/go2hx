package stdgo._internal.encoding.ascii85;
function testEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L77"
        for (__0 => _p in stdgo._internal.encoding.ascii85.Ascii85__pairs._pairs) {
            var _bb = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_builder.Builder() : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
            var _encoder = (stdgo._internal.encoding.ascii85.Ascii85_newencoder.newEncoder(stdgo.Go.asInterface(_bb)) : stdgo._internal.io.Io_writecloser.WriteCloser);
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L80"
            _encoder.write((_p._decoded : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L81"
            _encoder.close();
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L82"
            stdgo._internal.encoding.ascii85.Ascii85__testequal._testEqual(_t, ("Encode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._decoded), stdgo.Go.toInterface(stdgo._internal.encoding.ascii85.Ascii85__strip85._strip85((_bb.string() : stdgo.GoString)?.__copy__())), stdgo.Go.toInterface(stdgo._internal.encoding.ascii85.Ascii85__strip85._strip85(_p._encoded?.__copy__())));
        };
    }
