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
@:interface typedef T_boolFlag = stdgo.StructType & {
    > stdgo._internal.flag.Flag_Value.Value,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function isBoolFlag():Bool;
};
