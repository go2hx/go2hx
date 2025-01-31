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
function _newFloat64Value(_val:stdgo.GoFloat64, _p:stdgo.Pointer<stdgo.GoFloat64>):stdgo.Pointer<stdgo._internal.flag.Flag_T_float64Value.T_float64Value> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo._internal.flag.Flag_T_float64Value.T_float64Value>(() -> (_p.value : stdgo._internal.flag.Flag_T_float64Value.T_float64Value), v -> (_p.value = (v : stdgo.GoFloat64) : stdgo._internal.flag.Flag_T_float64Value.T_float64Value));
    }
