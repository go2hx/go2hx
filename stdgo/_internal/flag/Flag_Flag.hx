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
@:structInit @:using(stdgo._internal.flag.Flag_Flag_static_extension.Flag_static_extension) class Flag {
    public var name : stdgo.GoString = "";
    public var usage : stdgo.GoString = "";
    public var value : stdgo._internal.flag.Flag_Value.Value = (null : stdgo._internal.flag.Flag_Value.Value);
    public var defValue : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?usage:stdgo.GoString, ?value:stdgo._internal.flag.Flag_Value.Value, ?defValue:stdgo.GoString) {
        if (name != null) this.name = name;
        if (usage != null) this.usage = usage;
        if (value != null) this.value = value;
        if (defValue != null) this.defValue = defValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Flag(name, usage, value, defValue);
    }
}
