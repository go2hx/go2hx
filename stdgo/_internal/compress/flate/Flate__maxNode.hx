package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _maxNode():stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode {
        return (new stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode((65535 : stdgo.GoUInt16), (2147483647 : stdgo.GoInt32)) : stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode);
    }
