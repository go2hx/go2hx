package stdgo._internal.encoding.gob;
function testGobEncodePtrError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _err:stdgo.Error = (null : stdgo.Error);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        _err = _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L773"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L774"
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _err2 = (stdgo._internal.fmt.Fmt_errorf.errorf(("foo" : stdgo.GoString)) : stdgo.Error);
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_err2) : stdgo.Ref<stdgo.Error>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L779"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L780"
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L782"
        if (_err2 != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L783"
            _t.fatalf(("expected nil, got %v" : stdgo.GoString), stdgo.Go.toInterface(_err2));
        };
    }
