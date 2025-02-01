package stdgo._internal.internal.coverage.encodemeta;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.internal.coverage.uleb128.Uleb128;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.internal.coverage.Coverage;
function _h32(_x:stdgo.GoUInt32, _h:stdgo._internal.hash.Hash_Hash.Hash, _tmp:stdgo.Slice<stdgo.GoUInt8>):Void {
        _tmp = (_tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _tmp = (_tmp.__append__(...((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint32(_tmp, _x);
        _h.write(_tmp);
    }
