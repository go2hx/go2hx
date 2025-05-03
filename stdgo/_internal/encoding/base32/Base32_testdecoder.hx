package stdgo._internal.encoding.base32;
function testDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L111"
        for (__0 => _p in stdgo._internal.encoding.base32.Base32__pairs._pairs) {
            var _decoder = (stdgo._internal.encoding.base32.Base32_newdecoder.newDecoder(stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding, stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_p._encoded?.__copy__()))) : stdgo._internal.io.Io_reader.Reader);
            var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.decodedLen((_p._encoded.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _decoder.read(_dbuf), _count:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L115"
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L116"
                _t.fatal(stdgo.Go.toInterface(("Read failed" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L118"
            stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("Read from %q = length %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(_count), stdgo.Go.toInterface((_p._decoded.length)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L119"
            stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("Decoding of %q = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(((_dbuf.__slice__((0 : stdgo.GoInt), _count) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_p._decoded));
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L120"
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                {
                    var __tmp__ = _decoder.read(_dbuf);
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L123"
            stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("Read from %q = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF));
        };
    }
