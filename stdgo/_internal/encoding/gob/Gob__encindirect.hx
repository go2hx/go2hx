package stdgo._internal.encoding.gob;
function _encIndirect(_pv:stdgo._internal.reflect.Reflect_value.Value, _indir:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value {
        while ((_indir > (0 : stdgo.GoInt) : Bool)) {
            if (_pv.isNil()) {
                break;
            };
_pv = _pv.elem().__copy__();
            _indir--;
        };
        return _pv?.__copy__();
    }
