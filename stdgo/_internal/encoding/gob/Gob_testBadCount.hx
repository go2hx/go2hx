package stdgo._internal.encoding.gob;
function testBadCount(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(6, 6, ...[(251 : stdgo.GoUInt8), (165 : stdgo.GoUInt8), (130 : stdgo.GoUInt8), (47 : stdgo.GoUInt8), (202 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _err = (stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_b))).decode((null : stdgo.AnyInterface)) : stdgo.Error);
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("expected error from bad count" : stdgo.GoString)));
            } else if (_err.error() != (stdgo._internal.encoding.gob.Gob__errBadCount._errBadCount.error())) {
                _t.error(stdgo.Go.toInterface(("expected bad count error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
