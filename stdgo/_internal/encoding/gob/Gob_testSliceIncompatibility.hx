package stdgo._internal.encoding.gob;
function testSliceIncompatibility(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _in:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _out:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encAndDec._encAndDec(stdgo.Go.toInterface(_in), stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>))) : stdgo.Error);
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("expected compatibility error" : stdgo.GoString)));
            };
        };
    }