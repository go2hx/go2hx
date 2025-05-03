package stdgo._internal.testing.quick;
function _toInterfaces(_values:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo.Slice<stdgo.AnyInterface> {
        var _ret = (new stdgo.Slice<stdgo.AnyInterface>((_values.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L373"
        for (_i => _v in _values) {
            _ret[(_i : stdgo.GoInt)] = _v.interface_();
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L376"
        return _ret;
    }
