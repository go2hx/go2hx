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
function _maxPow(_b:stdgo._internal.math.big.Big_Word.Word):{ var _0 : stdgo._internal.math.big.Big_Word.Word; var _1 : stdgo.GoInt; } {
        var _p = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word), _n = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _b;
            final __tmp__1 = (1 : stdgo.GoInt);
            _p = __tmp__0;
            _n = __tmp__1;
        };
        {
            var _max = ((-1u32 : stdgo._internal.math.big.Big_Word.Word) / _b : stdgo._internal.math.big.Big_Word.Word);
            while ((_p <= _max : Bool)) {
                _p = (_p * (_b) : stdgo._internal.math.big.Big_Word.Word);
                _n++;
            };
        };
        return { _0 : _p, _1 : _n };
    }
