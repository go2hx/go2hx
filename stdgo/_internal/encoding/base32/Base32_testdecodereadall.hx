package stdgo._internal.encoding.base32;
function testDecodeReadAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _encodings = (new stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>>(2, 2, ...[stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding, (@:checkr stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding ?? throw "null pointer dereference").withPadding((-1 : stdgo.GoInt32))]) : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L765"
        for (__0 => _pair in stdgo._internal.encoding.base32.Base32__pairs._pairs) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L766"
            for (_encIndex => _encoding in _encodings) {
                var _encoded = (_pair._encoded?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L768"
                if ((@:checkr _encoding ?? throw "null pointer dereference")._padChar == ((-1 : stdgo.GoInt32))) {
                    _encoded = stdgo._internal.strings.Strings_replaceall.replaceAll(_encoded?.__copy__(), ("=" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__();
                };
                var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo._internal.encoding.base32.Base32_newdecoder.newDecoder(_encoding, stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_encoded?.__copy__())))), _decReader:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L773"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L774"
                    _t.errorf(("NewDecoder error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L777"
                if (_pair._decoded != ((_decReader : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L778"
                    _t.errorf(("Expected %s got %s; Encoding %d" : stdgo.GoString), stdgo.Go.toInterface(_pair._decoded), stdgo.Go.toInterface(_decReader), stdgo.Go.toInterface(_encIndex));
                };
            };
        };
    }
