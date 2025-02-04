package stdgo._internal.encoding.json;
function _typeByIndex(_t:stdgo._internal.reflect.Reflect_type_.Type_, _index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.Reflect_type_.Type_ {
        for (__4 => _i in _index) {
            if (_t.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _t = _t.elem();
            };
            _t = _t.field(_i).type;
        };
        return _t;
    }
