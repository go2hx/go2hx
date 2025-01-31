package stdgo._internal.compress.bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
function _updateCRC(_val:stdgo.GoUInt32, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        var _crc = (-1 ^ _val : stdgo.GoUInt32);
        for (__0 => _v in _b) {
            _crc = (stdgo._internal.compress.bzip2.Bzip2__crctab._crctab[((((_crc >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) ^ _v : stdgo.GoUInt8) : stdgo.GoInt)] ^ ((_crc << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        return (-1 ^ _crc);
    }
