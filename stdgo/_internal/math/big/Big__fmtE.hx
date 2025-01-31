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
function _fmtE(_buf:stdgo.Slice<stdgo.GoUInt8>, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt, _d:stdgo._internal.math.big.Big_T_decimal.T_decimal):stdgo.Slice<stdgo.GoUInt8> {
        var _ch = ((48 : stdgo.GoUInt8) : stdgo.GoUInt8);
        if (((_d._mant.length) > (0 : stdgo.GoInt) : Bool)) {
            _ch = _d._mant[(0 : stdgo.GoInt)];
        };
        _buf = (_buf.__append__(_ch));
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _buf = (_buf.__append__((46 : stdgo.GoUInt8)));
            var _i = (1 : stdgo.GoInt);
            var _m = (stdgo._internal.math.big.Big__min._min((_d._mant.length), (_prec + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            if ((_i < _m : Bool)) {
                _buf = (_buf.__append__(...((_d._mant.__slice__(_i, _m) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                _i = _m;
            };
            while ((_i <= _prec : Bool)) {
                _buf = (_buf.__append__((48 : stdgo.GoUInt8)));
                _i++;
            };
        };
        _buf = (_buf.__append__(_fmt));
        var _exp:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        if (((_d._mant.length) > (0 : stdgo.GoInt) : Bool)) {
            _exp = ((_d._exp : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
        };
        if ((_exp < (0i64 : stdgo.GoInt64) : Bool)) {
            _ch = (45 : stdgo.GoUInt8);
            _exp = -_exp;
        } else {
            _ch = (43 : stdgo.GoUInt8);
        };
        _buf = (_buf.__append__(_ch));
        if ((_exp < (10i64 : stdgo.GoInt64) : Bool)) {
            _buf = (_buf.__append__((48 : stdgo.GoUInt8)));
        };
        return stdgo._internal.strconv.Strconv_appendInt.appendInt(_buf, _exp, (10 : stdgo.GoInt));
    }
