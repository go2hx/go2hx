package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _literalToken(_literal:stdgo.GoUInt32):stdgo._internal.compress.flate.Flate_T_token.T_token {
        return (((0u32 : stdgo.GoUInt32) + _literal : stdgo.GoUInt32) : stdgo._internal.compress.flate.Flate_T_token.T_token);
    }
