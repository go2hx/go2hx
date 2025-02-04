package stdgo._internal.encoding.gob;
function testDebugSingleton(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        if (stdgo._internal.encoding.gob.Gob__debugfunc._debugFunc == null) {
            return;
        };
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        for (__8 => _x in stdgo._internal.encoding.gob.Gob__singletons._singletons) {
            var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(_x) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.encoding.gob.Gob__debugfunc._debugFunc(stdgo.Go.asInterface(_b));
    }
