package stdgo._internal.compress.bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
function _newBitReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.compress.bzip2.Bzip2_T_bitReader.T_bitReader {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_ByteReader.ByteReader)) : stdgo._internal.io.Io_ByteReader.ByteReader), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_ByteReader.ByteReader), _1 : false };
        }, _byter = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _byter = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newReader.newReader(_r));
        };
        return ({ _r : _byter } : stdgo._internal.compress.bzip2.Bzip2_T_bitReader.T_bitReader);
    }
