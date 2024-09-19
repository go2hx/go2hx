package stdgo._internal.testing.quick;
function _fPtr(_a:stdgo.Pointer<stdgo.GoInt>):stdgo.Pointer<stdgo.GoInt> {
        if (_a == null) {
            return (null : stdgo.Pointer<stdgo.GoInt>);
        };
        var _b = (_a.value : stdgo.GoInt);
        return stdgo.Go.pointer(_b);
    }
