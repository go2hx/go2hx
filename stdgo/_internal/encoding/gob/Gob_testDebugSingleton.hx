package stdgo._internal.encoding.gob;
function testDebugSingleton(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.encoding.gob.Gob__debugFunc._debugFunc == null) {
            return;
        };
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        for (__8 => _x in stdgo._internal.encoding.gob.Gob__singletons._singletons) {
            var _err = (stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(_x) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.encoding.gob.Gob__debugFunc._debugFunc(stdgo.Go.asInterface(_b));
    }
