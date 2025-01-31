package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
function _functionAndType(_f:stdgo.AnyInterface):{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : stdgo._internal.reflect.Reflect_Type_.Type_; var _2 : Bool; } {
        var _v = ({} : stdgo._internal.reflect.Reflect_Value.Value), _t = (null : stdgo._internal.reflect.Reflect_Type_.Type_), _ok = false;
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(_f)?.__copy__();
        _ok = _v.kind() == ((19u32 : stdgo._internal.reflect.Reflect_Kind.Kind));
        if (!_ok) {
            return { _0 : _v, _1 : _t, _2 : _ok };
        };
        _t = _v.type();
        return { _0 : _v, _1 : _t, _2 : _ok };
    }
