package stdgo._internal.encoding.ascii85;
function testDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L118"
        for (__0 => _p in stdgo._internal.encoding.ascii85.Ascii85__pairs._pairs) {
            var _decoder = (stdgo._internal.encoding.ascii85.Ascii85_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_p._encoded?.__copy__()))) : stdgo._internal.io.Io_reader.Reader);
            var __tmp__ = stdgo._internal.io.Io_readall.readAll(_decoder), _dbuf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L121"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L122"
                _t.fatal(stdgo.Go.toInterface(("Read failed" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L124"
            stdgo._internal.encoding.ascii85.Ascii85__testequal._testEqual(_t, ("Read from %q = length %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface((_dbuf.length)), stdgo.Go.toInterface((_p._decoded.length)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L125"
            stdgo._internal.encoding.ascii85.Ascii85__testequal._testEqual(_t, ("Decoding of %q = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface((_dbuf : stdgo.GoString)), stdgo.Go.toInterface(_p._decoded));
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L126"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L127"
                stdgo._internal.encoding.ascii85.Ascii85__testequal._testEqual(_t, ("Read from %q = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF));
            };
        };
    }
