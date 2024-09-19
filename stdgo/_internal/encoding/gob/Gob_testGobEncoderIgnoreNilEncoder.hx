package stdgo._internal.encoding.gob;
function testGobEncoderIgnoreNilEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (_enc.encode(stdgo.Go.toInterface(({ x : (18 : stdgo.GoInt) } : stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0))) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_x.x != ((18 : stdgo.GoInt))) {
            _t.errorf(("expected x.X = 18, got %v" : stdgo.GoString), stdgo.Go.toInterface(_x.x));
        };
        if (_x.g != null && ((_x.g : Dynamic).__nil__ == null || !(_x.g : Dynamic).__nil__)) {
            _t.errorf(("expected x.G = nil, got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x.g)));
        };
    }
