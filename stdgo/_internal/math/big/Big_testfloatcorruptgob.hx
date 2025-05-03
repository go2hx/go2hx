package stdgo._internal.math.big;
function testFloatCorruptGob(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _tx = stdgo._internal.math.big.Big_newfloat.newFloat((1 : stdgo.GoFloat64)).setPrec((1000u32 : stdgo.GoUInt)).setMode((5 : stdgo._internal.math.big.Big_roundingmode.RoundingMode));
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh_test.go#L89"
        {
            var _err = (stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_tx))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh_test.go#L90"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _b = _buf.bytes();
        var _rx:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh_test.go#L95"
        {
            var _err = (stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_b))).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>)))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh_test.go#L96"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh_test.go#L99"
        {
            var _err = (stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((_b.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>)))) : stdgo.Error);
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh_test.go#L100"
                _t.errorf(("got %v want EOF" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _b[(1 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh_test.go#L104"
        {
            var _err = (stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_b))).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>)))) : stdgo.Error);
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh_test.go#L105"
                _t.fatal(stdgo.Go.toInterface(("got nil want version error" : stdgo.GoString)));
            };
        };
    }
