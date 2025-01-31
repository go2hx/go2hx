package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _newHuffmanEncoder(_size:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder> {
        return (stdgo.Go.setRef(({ _codes : (new stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>((_size : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_size : stdgo.GoInt).toBasic() > 0 ? (_size : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.flate.Flate_T_hcode.T_hcode)]) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>) } : stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder)) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>);
    }
