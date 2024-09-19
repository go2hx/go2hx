package stdgo._internal.encoding.gob;
function testGobEncoderNonStructSingleton(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _g:stdgo._internal.encoding.gob.Gob_Gobber.Gobber = (1234 : stdgo._internal.encoding.gob.Gob_Gobber.Gobber);
        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.pointer(_g))) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x:stdgo._internal.encoding.gob.Gob_Gobber.Gobber = ((0 : stdgo.GoInt) : stdgo._internal.encoding.gob.Gob_Gobber.Gobber);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.pointer(_x)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_x != ((1234 : stdgo._internal.encoding.gob.Gob_Gobber.Gobber))) {
            _t.errorf(("expected 1234 got %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
    }
