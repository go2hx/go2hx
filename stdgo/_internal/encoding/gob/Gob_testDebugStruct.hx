package stdgo._internal.encoding.gob;
function testDebugStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.encoding.gob.Gob__debugFunc._debugFunc == null) {
            return;
        };
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_OnTheFly.OnTheFly() : stdgo._internal.encoding.gob.Gob_OnTheFly.OnTheFly)));
        var _dt = (stdgo._internal.encoding.gob.Gob__newDT._newDT()?.__copy__() : stdgo._internal.encoding.gob.Gob_DT.DT);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _err = (stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_dt)) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _debugBuffer = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_b.bytes());
        var _dt2 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_DT.DT() : stdgo._internal.encoding.gob.Gob_DT.DT)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_DT.DT>);
        var _dt2__pointer__ = (stdgo.Go.setRef(_dt2) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_DT.DT>>);
        var _dt2__pointer__ = (stdgo.Go.setRef(_dt2) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_DT.DT>>);
        var _dt2__pointer__ = (stdgo.Go.setRef(_dt2) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_DT.DT>>);
        var _dt2__pointer__ = (stdgo.Go.setRef(_dt2) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_DT.DT>>);
        _err = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface(_dt2__pointer__));
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.encoding.gob.Gob__debugFunc._debugFunc(stdgo.Go.asInterface(_debugBuffer));
    }
