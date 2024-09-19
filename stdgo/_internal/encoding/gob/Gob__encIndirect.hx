package stdgo._internal.encoding.gob;
function _encIndirect(_pv:stdgo._internal.reflect.Reflect_Value.Value, _indir:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value {
        stdgo.Go.cfor((_indir > (0 : stdgo.GoInt) : Bool), _indir--, {
            if (_pv.isNil()) {
                break;
            };
            _pv = _pv.elem()?.__copy__();
        });
        return _pv?.__copy__();
    }
