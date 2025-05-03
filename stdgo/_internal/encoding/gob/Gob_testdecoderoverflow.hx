package stdgo._internal.encoding.gob;
function testDecoderOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((new stdgo.Slice<stdgo.GoUInt8>(24, 24, ...[
(18 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(248 : stdgo.GoUInt8),
(127 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))));
        var _r:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _err = (_dec.decode(_r) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1277"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1278"
            _t.fatalf(("expected an error" : stdgo.GoString));
        };
    }
