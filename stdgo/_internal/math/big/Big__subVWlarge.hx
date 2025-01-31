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
function _subVWlarge(_z:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _y:stdgo._internal.math.big.Big_Word.Word):stdgo._internal.math.big.Big_Word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
        _c = _y;
        {
            var _i = (0 : stdgo.GoInt);
            while (((_i < (_z.length) : Bool) && (_i < (_x.length) : Bool) : Bool)) {
                if (_c == ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
                    (_z.__slice__(_i) : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>).__copyTo__((_x.__slice__(_i) : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>));
                    return _c;
                };
var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub((_x[(_i : stdgo.GoInt)] : stdgo.GoUInt), (_c : stdgo.GoUInt), (0u32 : stdgo.GoUInt)), _zi:stdgo.GoUInt = __tmp__._0, _cc:stdgo.GoUInt = __tmp__._1;
_z[(_i : stdgo.GoInt)] = (_zi : stdgo._internal.math.big.Big_Word.Word);
_c = (_cc : stdgo._internal.math.big.Big_Word.Word);
                _i++;
            };
        };
        return _c;
    }
