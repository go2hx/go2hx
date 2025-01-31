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
function _shlVU_g(_z:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _s:stdgo.GoUInt):stdgo._internal.math.big.Big_Word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
        if (_s == ((0u32 : stdgo.GoUInt))) {
            _z.__copyTo__(_x);
            return _c;
        };
        if ((_z.length) == ((0 : stdgo.GoInt))) {
            return _c;
        };
        _s = (_s & ((31u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        var __349 = ((32u32 : stdgo.GoUInt) - _s : stdgo.GoUInt);
        __349 = (__349 & ((31u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        _c = (_x[((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] >> __349 : stdgo._internal.math.big.Big_Word.Word);
        {
            var _i = ((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                _z[(_i : stdgo.GoInt)] = ((_x[(_i : stdgo.GoInt)] << _s : stdgo._internal.math.big.Big_Word.Word) | (_x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] >> __349 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word);
                _i--;
            };
        };
        _z[(0 : stdgo.GoInt)] = (_x[(0 : stdgo.GoInt)] << _s : stdgo._internal.math.big.Big_Word.Word);
        return _c;
    }
