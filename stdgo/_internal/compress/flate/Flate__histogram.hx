package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _histogram(_b:stdgo.Slice<stdgo.GoUInt8>, _h:stdgo.Slice<stdgo.GoInt32>):Void {
        _h = (_h.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        for (__0 => _t in _b) {
            _h[(_t : stdgo.GoInt)]++;
        };
    }
