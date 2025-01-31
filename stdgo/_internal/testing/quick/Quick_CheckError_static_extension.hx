package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.testing.quick.Quick.CheckError_asInterface) class CheckError_static_extension {
    @:keep
    @:tdfield
    static public function error( _s:stdgo.Ref<stdgo._internal.testing.quick.Quick_CheckError.CheckError>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.testing.quick.Quick_CheckError.CheckError> = _s;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("#%d: failed on input %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").count), stdgo.Go.toInterface(stdgo._internal.testing.quick.Quick__toString._toString((@:checkr _s ?? throw "null pointer dereference").in_)))?.__copy__();
    }
}
