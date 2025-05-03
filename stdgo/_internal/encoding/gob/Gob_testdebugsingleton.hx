package stdgo._internal.encoding.gob;
function testDebugSingleton(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1333"
        if (stdgo._internal.encoding.gob.Gob__debugfunc._debugFunc == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1334"
            return;
        };
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1338"
        for (__8 => _x in stdgo._internal.encoding.gob.Gob__singletons._singletons) {
            var _err = (stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(_x) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1340"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1341"
                _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1344"
        stdgo._internal.encoding.gob.Gob__debugfunc._debugFunc(stdgo.Go.asInterface(_b));
    }
