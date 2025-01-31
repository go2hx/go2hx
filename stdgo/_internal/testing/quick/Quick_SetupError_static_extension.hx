package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.testing.quick.Quick.SetupError_asInterface) class SetupError_static_extension {
    @:keep
    @:tdfield
    static public function error( _s:stdgo._internal.testing.quick.Quick_SetupError.SetupError):stdgo.GoString {
        @:recv var _s:stdgo._internal.testing.quick.Quick_SetupError.SetupError = _s;
        return (_s : stdgo.GoString)?.__copy__();
    }
}
