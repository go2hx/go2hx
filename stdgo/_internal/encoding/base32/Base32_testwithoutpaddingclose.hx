package stdgo._internal.encoding.base32;
function testWithoutPaddingClose(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _encodings = (new stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>>(2, 2, ...[stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding, (@:checkr stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding ?? throw "null pointer dereference").withPadding((-1 : stdgo.GoInt32))]) : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>>);
        for (__0 => _encoding in _encodings) {
            for (__1 => _testpair in stdgo._internal.encoding.base32.Base32__pairs._pairs) {
                var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
                var _encoder = (stdgo._internal.encoding.base32.Base32_newencoder.newEncoder(_encoding, stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>))) : stdgo._internal.io.Io_writecloser.WriteCloser);
                _encoder.write((_testpair._decoded : stdgo.Slice<stdgo.GoUInt8>));
                _encoder.close();
                var _expected = (_testpair._encoded?.__copy__() : stdgo.GoString);
                if ((@:checkr _encoding ?? throw "null pointer dereference")._padChar == ((-1 : stdgo.GoInt32))) {
                    _expected = stdgo._internal.strings.Strings_replaceall.replaceAll(_expected?.__copy__(), ("=" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__();
                };
                var _res = ((@:check2 _buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_res != (_expected)) {
                    @:check2r _t.errorf(("Expected %s got %s; padChar=%d" : stdgo.GoString), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_res), stdgo.Go.toInterface((@:checkr _encoding ?? throw "null pointer dereference")._padChar));
                };
            };
        };
    }
