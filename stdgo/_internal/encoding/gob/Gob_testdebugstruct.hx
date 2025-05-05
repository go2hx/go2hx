package stdgo._internal.encoding.gob;
function testDebugStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1380"
        if (stdgo._internal.encoding.gob.Gob__debugfunc._debugFunc == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1381"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1383"
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_onthefly.OnTheFly() : stdgo._internal.encoding.gob.Gob_onthefly.OnTheFly))));
        var _dt = (stdgo._internal.encoding.gob.Gob__newdt._newDT()?.__copy__() : stdgo._internal.encoding.gob.Gob_dt.DT);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _err = (stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_dt))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1387"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1388"
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _debugBuffer = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_b.bytes());
        var _dt2 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_dt.DT() : stdgo._internal.encoding.gob.Gob_dt.DT)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_dt.DT>);
        _err = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface(stdgo.Go.pointer(_dt2)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1393"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1394"
            _t.error(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1396"
        stdgo._internal.encoding.gob.Gob__debugfunc._debugFunc(stdgo.Go.asInterface(_debugBuffer));
    }
