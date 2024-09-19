package stdgo._internal.encoding.gob;
function testGobEncodePtrError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _err:stdgo.Error = (null : stdgo.Error);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        _err = _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _err2 = (stdgo._internal.fmt.Fmt_errorf.errorf(("foo" : stdgo.GoString)) : stdgo.Error);
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_err2) : stdgo.Ref<stdgo.Error>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_err2 != null) {
            _t.fatalf(("expected nil, got %v" : stdgo.GoString), stdgo.Go.toInterface(_err2));
        };
    }