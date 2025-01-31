package stdgo._internal.flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
@:keep class Value_static_extension {
    @:interfacetypeffun
    static public function set(t:stdgo._internal.flag.Flag_Value.Value, _0:stdgo.GoString):stdgo.Error return t.set(_0);
    @:interfacetypeffun
    static public function string(t:stdgo._internal.flag.Flag_Value.Value):stdgo.GoString return t.string();
}
