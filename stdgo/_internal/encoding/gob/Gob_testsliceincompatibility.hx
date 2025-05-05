package stdgo._internal.encoding.gob;
function testSliceIncompatibility(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _in = (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _out:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L844"
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encanddec._encAndDec(stdgo.Go.toInterface(_in), stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>))) : stdgo.Error);
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L845"
                _t.error(stdgo.Go.toInterface(("expected compatibility error" : stdgo.GoString)));
            };
        };
    }
