package stdgo._internal.encoding.gob;
function _badTypeCheck(_e:stdgo.AnyInterface, _shouldFail:Bool, _msg:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _et1 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET1.ET1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET1.ET1>);
        _et1.a = (7 : stdgo.GoInt);
        _et1.et2 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET2.ET2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET2.ET2>);
        var _err = (_enc.encode(stdgo.Go.toInterface(_et1)) : stdgo.Error);
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        _err = _dec.decode(_e);
        if ((_shouldFail && (_err == null) : Bool)) {
            _t.error(stdgo.Go.toInterface(("expected error for" : stdgo.GoString)), stdgo.Go.toInterface(_msg));
        };
        if ((!_shouldFail && (_err != null) : Bool)) {
            _t.error(stdgo.Go.toInterface(("unexpected error for" : stdgo.GoString)), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_err));
        };
    }