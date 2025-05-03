package stdgo._internal.encoding.base32;
function testDecodeSmallBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _encodings = (new stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>>(2, 2, ...[stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding, (@:checkr stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding ?? throw "null pointer dereference").withPadding((-1 : stdgo.GoInt32))]) : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L790"
        {
            var _bufferSize = (1 : stdgo.GoInt);
            while ((_bufferSize < (200 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L791"
                for (__0 => _pair in stdgo._internal.encoding.base32.Base32__pairs._pairs) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L792"
                    for (_encIndex => _encoding in _encodings) {
                        var _encoded = (_pair._encoded?.__copy__() : stdgo.GoString);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L794"
                        if ((@:checkr _encoding ?? throw "null pointer dereference")._padChar == ((-1 : stdgo.GoInt32))) {
                            _encoded = stdgo._internal.strings.Strings_replaceall.replaceAll(_encoded?.__copy__(), ("=" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__();
                        };
                        var _decoder = (stdgo._internal.encoding.base32.Base32_newdecoder.newDecoder(_encoding, stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_encoded?.__copy__()))) : stdgo._internal.io.Io_reader.Reader);
                        var _allRead:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L802"
                        while (true) {
                            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_bufferSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                            var __tmp__ = _decoder.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            _allRead = (_allRead.__append__(...((_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L806"
                            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L807"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L809"
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L810"
                                _t.error(stdgo.Go.toInterface(_err));
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L814"
                        if (_pair._decoded != ((_allRead : stdgo.GoString))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L815"
                            _t.errorf(("Expected %s got %s; Encoding %d; bufferSize %d" : stdgo.GoString), stdgo.Go.toInterface(_pair._decoded), stdgo.Go.toInterface(_allRead), stdgo.Go.toInterface(_encIndex), stdgo.Go.toInterface(_bufferSize));
                        };
                    };
                };
                _bufferSize++;
            };
        };
    }
