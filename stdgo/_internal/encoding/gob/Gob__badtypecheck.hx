package stdgo._internal.encoding.gob;
function _badTypeCheck(_e:stdgo.AnyInterface, _shouldFail:Bool, _msg:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _et1 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_et1.ET1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et1.ET1>);
        (@:checkr _et1 ?? throw "null pointer dereference").a = (7 : stdgo.GoInt);
        (@:checkr _et1 ?? throw "null pointer dereference").et2 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_et2.ET2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et2.ET2>);
        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_et1))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L238"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L239"
            _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        _err = _dec.decode(_e);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L243"
        if ((_shouldFail && (_err == null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L244"
            _t.error(stdgo.Go.toInterface(("expected error for" : stdgo.GoString)), stdgo.Go.toInterface(_msg));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L246"
        if ((!_shouldFail && (_err != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L247"
            _t.error(stdgo.Go.toInterface(("unexpected error for" : stdgo.GoString)), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_err));
        };
    }
