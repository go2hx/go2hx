package stdgo._internal.testing.quick;
function _toInterfaces(_values:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo.Slice<stdgo.AnyInterface> {
        var _ret = (new stdgo.Slice<stdgo.AnyInterface>((_values.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        for (_i => _v in _values) {
            _ret[(_i : stdgo.GoInt)] = _v.interface_();
        };
        return _ret;
    }
