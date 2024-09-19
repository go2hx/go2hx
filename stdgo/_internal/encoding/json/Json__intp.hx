package stdgo._internal.encoding.json;
function _intp(_x:stdgo.GoInt):stdgo.Pointer<stdgo.GoInt> {
        var _p = stdgo.Go.pointer((0 : stdgo.GoInt));
        _p.value = _x;
        return _p;
    }
