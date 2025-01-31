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
function _divWVW(_z:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _xn:stdgo._internal.math.big.Big_Word.Word, _x:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _y:stdgo._internal.math.big.Big_Word.Word):stdgo._internal.math.big.Big_Word.Word {
        var _r = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
        _r = _xn;
        if ((_x.length) == ((1 : stdgo.GoInt))) {
            var __tmp__ = stdgo._internal.math.bits.Bits_div.div((_r : stdgo.GoUInt), (_x[(0 : stdgo.GoInt)] : stdgo.GoUInt), (_y : stdgo.GoUInt)), _qq:stdgo.GoUInt = __tmp__._0, _rr:stdgo.GoUInt = __tmp__._1;
            _z[(0 : stdgo.GoInt)] = (_qq : stdgo._internal.math.big.Big_Word.Word);
            return _r = (_rr : stdgo._internal.math.big.Big_Word.Word);
        };
        var _rec = (stdgo._internal.math.big.Big__reciprocalWord._reciprocalWord(_y) : stdgo._internal.math.big.Big_Word.Word);
        {
            var _i = ((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.math.big.Big__divWW._divWW(_r, _x[(_i : stdgo.GoInt)], _y, _rec);
                    _z[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                    _r = @:tmpset0 __tmp__._1;
                };
                _i--;
            };
        };
        return _r;
    }
