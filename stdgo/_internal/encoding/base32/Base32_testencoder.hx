package stdgo._internal.encoding.base32;
function testEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L62"
        for (__0 => _p in stdgo._internal.encoding.base32.Base32__pairs._pairs) {
            var _bb = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_builder.Builder() : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
            var _encoder = (stdgo._internal.encoding.base32.Base32_newencoder.newEncoder(stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding, stdgo.Go.asInterface(_bb)) : stdgo._internal.io.Io_writecloser.WriteCloser);
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L65"
            _encoder.write((_p._decoded : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L66"
            _encoder.close();
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L67"
            stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("Encode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._decoded), stdgo.Go.toInterface((_bb.string() : stdgo.GoString)), stdgo.Go.toInterface(_p._encoded));
        };
    }
