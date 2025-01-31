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
function _divWW(_x1:stdgo._internal.math.big.Big_Word.Word, _x0:stdgo._internal.math.big.Big_Word.Word, _y:stdgo._internal.math.big.Big_Word.Word, _m:stdgo._internal.math.big.Big_Word.Word):{ var _0 : stdgo._internal.math.big.Big_Word.Word; var _1 : stdgo._internal.math.big.Big_Word.Word; } {
        var _q = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word), _r = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
        var _s = (stdgo._internal.math.big.Big__nlz._nlz(_y) : stdgo.GoUInt);
        if (_s != ((0u32 : stdgo.GoUInt))) {
            _x1 = ((_x1 << _s : stdgo._internal.math.big.Big_Word.Word) | (_x0 >> (((32u32 : stdgo.GoUInt) - _s : stdgo.GoUInt)) : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word);
            _x0 = (_x0 << (_s) : stdgo._internal.math.big.Big_Word.Word);
            _y = (_y << (_s) : stdgo._internal.math.big.Big_Word.Word);
        };
        var _d = (_y : stdgo.GoUInt);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul.mul((_m : stdgo.GoUInt), (_x1 : stdgo.GoUInt)), _t1:stdgo.GoUInt = __tmp__._0, _t0:stdgo.GoUInt = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_t0, (_x0 : stdgo.GoUInt), (0u32 : stdgo.GoUInt)), __8:stdgo.GoUInt = __tmp__._0, _c:stdgo.GoUInt = __tmp__._1;
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_t1, (_x1 : stdgo.GoUInt), _c);
            _t1 = @:tmpset0 __tmp__._0;
        };
        var _qq = (_t1 : stdgo.GoUInt);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul.mul(_d, _qq), _dq1:stdgo.GoUInt = __tmp__._0, _dq0:stdgo.GoUInt = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub((_x0 : stdgo.GoUInt), _dq0, (0u32 : stdgo.GoUInt)), _r0:stdgo.GoUInt = __tmp__._0, _b:stdgo.GoUInt = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub((_x1 : stdgo.GoUInt), _dq1, _b), _r1:stdgo.GoUInt = __tmp__._0, __9:stdgo.GoUInt = __tmp__._1;
        if (_r1 != ((0u32 : stdgo.GoUInt))) {
            _qq++;
            _r0 = (_r0 - (_d) : stdgo.GoUInt);
        };
        if ((_r0 >= _d : Bool)) {
            _qq++;
            _r0 = (_r0 - (_d) : stdgo.GoUInt);
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.math.big.Big_Word.Word; var _1 : stdgo._internal.math.big.Big_Word.Word; } = { _0 : (_qq : stdgo._internal.math.big.Big_Word.Word), _1 : ((_r0 >> _s : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word) };
            _q = __tmp__._0;
            _r = __tmp__._1;
            __tmp__;
        };
    }
