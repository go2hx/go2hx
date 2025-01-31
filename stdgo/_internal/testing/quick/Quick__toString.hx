package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
function _toString(_interfaces:stdgo.Slice<stdgo.AnyInterface>):stdgo.GoString {
        var _s = (new stdgo.Slice<stdgo.GoString>((_interfaces.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _v in _interfaces) {
            _s[(_i : stdgo.GoInt)] = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%#v" : stdgo.GoString), _v)?.__copy__();
        };
        return stdgo._internal.strings.Strings_join.join(_s, (", " : stdgo.GoString))?.__copy__();
    }
