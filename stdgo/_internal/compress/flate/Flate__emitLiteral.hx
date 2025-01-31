package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _emitLiteral(_dst:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>, _lit:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token> {
        for (__0 => _v in _lit) {
            _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__literalToken._literalToken((_v : stdgo.GoUInt32))));
        };
        return _dst;
    }
