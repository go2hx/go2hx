package stdgo._internal.encoding.gob;
function _encIndirect(_pv:stdgo._internal.reflect.Reflect_value.Value, _indir:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L164"
        while ((_indir > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L165"
            if (_pv.isNil()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L166"
                break;
            };
_pv = _pv.elem().__copy__();
            _indir--;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L170"
        return _pv?.__copy__();
    }
