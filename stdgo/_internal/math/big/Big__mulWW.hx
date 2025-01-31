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
function _mulWW(_x:stdgo._internal.math.big.Big_Word.Word, _y:stdgo._internal.math.big.Big_Word.Word):{ var _0 : stdgo._internal.math.big.Big_Word.Word; var _1 : stdgo._internal.math.big.Big_Word.Word; } {
        var _z1 = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word), _z0 = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul.mul((_x : stdgo.GoUInt), (_y : stdgo.GoUInt)), _hi:stdgo.GoUInt = __tmp__._0, _lo:stdgo.GoUInt = __tmp__._1;
        return {
            final __tmp__:{ var _0 : stdgo._internal.math.big.Big_Word.Word; var _1 : stdgo._internal.math.big.Big_Word.Word; } = { _0 : (_hi : stdgo._internal.math.big.Big_Word.Word), _1 : (_lo : stdgo._internal.math.big.Big_Word.Word) };
            _z1 = __tmp__._0;
            _z0 = __tmp__._1;
            __tmp__;
        };
    }
