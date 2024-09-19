package stdgo._internal.encoding.gob;
function testGobEncoderArrayField(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _a:stdgo._internal.encoding.gob.Gob_GobTestArrayEncDec.GobTestArrayEncDec = ({} : stdgo._internal.encoding.gob.Gob_GobTestArrayEncDec.GobTestArrayEncDec);
        _a.x = (17 : stdgo.GoInt);
        for (_i => _ in _a.a._a) {
            _a.a._a[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
        };
        var _err = (_enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTestArrayEncDec.GobTestArrayEncDec>))) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_GobTestArrayEncDec.GobTestArrayEncDec)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTestArrayEncDec.GobTestArrayEncDec>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        for (_i => _v in _x.a._a) {
            if (_v != ((_i : stdgo.GoUInt8))) {
                _t.errorf(("expected %x got %x" : stdgo.GoString), stdgo.Go.toInterface((_i : stdgo.GoUInt8)), stdgo.Go.toInterface(_v));
                break;
            };
        };
    }
