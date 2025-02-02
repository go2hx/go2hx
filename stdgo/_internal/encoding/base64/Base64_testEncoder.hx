package stdgo._internal.encoding.base64;
function testEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _p in stdgo._internal.encoding.base64.Base64__pairs._pairs) {
            var _bb = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_Builder.Builder() : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
            var _encoder = (stdgo._internal.encoding.base64.Base64_newEncoder.newEncoder(stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, stdgo.Go.asInterface(_bb)) : stdgo._internal.io.Io_WriteCloser.WriteCloser);
            _encoder.write((_p._decoded : stdgo.Slice<stdgo.GoUInt8>));
            _encoder.close();
            stdgo._internal.encoding.base64.Base64__testEqual._testEqual(_t, ("Encode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._decoded), stdgo.Go.toInterface((@:check2r _bb.string() : stdgo.GoString)), stdgo.Go.toInterface(_p._encoded));
        };
    }
