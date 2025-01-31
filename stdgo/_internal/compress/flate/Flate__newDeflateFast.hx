package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _newDeflateFast():stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> {
        return (stdgo.Go.setRef(({ _cur : (65535 : stdgo.GoInt32), _prev : (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (65535 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast)) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>);
    }
