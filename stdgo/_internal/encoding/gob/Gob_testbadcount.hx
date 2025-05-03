package stdgo._internal.encoding.gob;
function testBadCount(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(6, 6, ...[(251 : stdgo.GoUInt8), (165 : stdgo.GoUInt8), (130 : stdgo.GoUInt8), (47 : stdgo.GoUInt8), (202 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L777"
        {
            var _err = (stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_b))).decode((null : stdgo.AnyInterface)) : stdgo.Error);
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L778"
                _t.error(stdgo.Go.toInterface(("expected error from bad count" : stdgo.GoString)));
            } else if (_err.error() != (stdgo._internal.encoding.gob.Gob__errbadcount._errBadCount.error())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L780"
                _t.error(stdgo.Go.toInterface(("expected bad count error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
