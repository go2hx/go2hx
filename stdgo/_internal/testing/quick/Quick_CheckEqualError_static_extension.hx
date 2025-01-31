package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.testing.quick.Quick.CheckEqualError_asInterface) class CheckEqualError_static_extension {
    @:keep
    @:tdfield
    static public function error( _s:stdgo.Ref<stdgo._internal.testing.quick.Quick_CheckEqualError.CheckEqualError>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.testing.quick.Quick_CheckEqualError.CheckEqualError> = _s;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("#%d: failed on input %s. Output 1: %s. Output 2: %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").checkError.count), stdgo.Go.toInterface(stdgo._internal.testing.quick.Quick__toString._toString((@:checkr _s ?? throw "null pointer dereference").checkError.in_)), stdgo.Go.toInterface(stdgo._internal.testing.quick.Quick__toString._toString((@:checkr _s ?? throw "null pointer dereference").out1)), stdgo.Go.toInterface(stdgo._internal.testing.quick.Quick__toString._toString((@:checkr _s ?? throw "null pointer dereference").out2)))?.__copy__();
    }
}
