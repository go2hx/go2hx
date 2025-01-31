package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function reverse(_data:stdgo._internal.sort.Sort_Interface.Interface):stdgo._internal.sort.Sort_Interface.Interface {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.sort.Sort_T_reverse.T_reverse(_data) : stdgo._internal.sort.Sort_T_reverse.T_reverse)) : stdgo.Ref<stdgo._internal.sort.Sort_T_reverse.T_reverse>));
    }
