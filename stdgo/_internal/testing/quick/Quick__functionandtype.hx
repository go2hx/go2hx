package stdgo._internal.testing.quick;
function _functionAndType(_f:stdgo.AnyInterface):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : stdgo._internal.reflect.Reflect_type_.Type_; var _2 : Bool; } {
        var _v = ({} : stdgo._internal.reflect.Reflect_value.Value), _t = (null : stdgo._internal.reflect.Reflect_type_.Type_), _ok = false;
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(_f)?.__copy__();
        _ok = _v.kind() == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind));
        if (!_ok) {
            return { _0 : _v, _1 : _t, _2 : _ok };
        };
        _t = _v.type();
        return { _0 : _v, _1 : _t, _2 : _ok };
    }
