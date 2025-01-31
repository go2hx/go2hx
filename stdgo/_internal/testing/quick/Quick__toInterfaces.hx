package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
function _toInterfaces(_values:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo.AnyInterface> {
        var _ret = (new stdgo.Slice<stdgo.AnyInterface>((_values.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        for (_i => _v in _values) {
            _ret[(_i : stdgo.GoInt)] = _v.interface_();
        };
        return _ret;
    }
