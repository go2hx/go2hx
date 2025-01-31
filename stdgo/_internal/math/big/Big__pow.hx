package stdgo._internal.math.big;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.encoding.xml.Xml;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.os.Os;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
function _pow(_x:stdgo._internal.math.big.Big_Word.Word, _n:stdgo.GoInt):stdgo._internal.math.big.Big_Word.Word {
        var _p = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
        _p = (1u32 : stdgo._internal.math.big.Big_Word.Word);
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            if ((_n & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                _p = (_p * (_x) : stdgo._internal.math.big.Big_Word.Word);
            };
            _x = (_x * (_x) : stdgo._internal.math.big.Big_Word.Word);
            _n = (_n >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        };
        return _p;
    }
