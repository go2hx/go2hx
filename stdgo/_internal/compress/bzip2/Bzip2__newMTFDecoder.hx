package stdgo._internal.compress.bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
function _newMTFDecoder(_symbols:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.compress.bzip2.Bzip2_T_moveToFrontDecoder.T_moveToFrontDecoder {
        if (((_symbols.length) > (256 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("too many symbols" : stdgo.GoString));
        };
        return (_symbols : stdgo._internal.compress.bzip2.Bzip2_T_moveToFrontDecoder.T_moveToFrontDecoder);
    }
