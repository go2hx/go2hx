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
function _karatsuba(_z:stdgo._internal.math.big.Big_T_nat.T_nat, _x:stdgo._internal.math.big.Big_T_nat.T_nat, _y:stdgo._internal.math.big.Big_T_nat.T_nat):Void {
        var _n = (_y.length : stdgo.GoInt);
        if ((((_n & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt)) || (_n < stdgo._internal.math.big.Big__karatsubaThreshold._karatsubaThreshold : Bool) : Bool) || (_n < (2 : stdgo.GoInt) : Bool) : Bool)) {
            stdgo._internal.math.big.Big__basicMul._basicMul(_z, _x, _y);
            return;
        };
        var _n2 = (_n >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
        var __0 = (_x.__slice__(_n2) : stdgo._internal.math.big.Big_T_nat.T_nat), __1 = (_x.__slice__((0 : stdgo.GoInt), _n2) : stdgo._internal.math.big.Big_T_nat.T_nat);
var _x0 = __1, _x1 = __0;
        var __0 = (_y.__slice__(_n2) : stdgo._internal.math.big.Big_T_nat.T_nat), __1 = (_y.__slice__((0 : stdgo.GoInt), _n2) : stdgo._internal.math.big.Big_T_nat.T_nat);
var _y0 = __1, _y1 = __0;
        stdgo._internal.math.big.Big__karatsuba._karatsuba(_z, _x0, _y0);
        stdgo._internal.math.big.Big__karatsuba._karatsuba((_z.__slice__(_n) : stdgo._internal.math.big.Big_T_nat.T_nat), _x1, _y1);
        var _s = (1 : stdgo.GoInt);
        var _xd = (_z.__slice__(((2 : stdgo.GoInt) * _n : stdgo.GoInt), (((2 : stdgo.GoInt) * _n : stdgo.GoInt) + _n2 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        if (stdgo._internal.math.big.Big__subVV._subVV(_xd, _x1, _x0) != ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
            _s = -_s;
            stdgo._internal.math.big.Big__subVV._subVV(_xd, _x0, _x1);
        };
        var _yd = (_z.__slice__((((2 : stdgo.GoInt) * _n : stdgo.GoInt) + _n2 : stdgo.GoInt), ((3 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        if (stdgo._internal.math.big.Big__subVV._subVV(_yd, _y0, _y1) != ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
            _s = -_s;
            stdgo._internal.math.big.Big__subVV._subVV(_yd, _y1, _y0);
        };
        var _p = (_z.__slice__((_n * (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        stdgo._internal.math.big.Big__karatsuba._karatsuba(_p, _xd, _yd);
        var _r = (_z.__slice__((_n * (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        _r.__copyTo__((_z.__slice__(0, (_n * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat));
        stdgo._internal.math.big.Big__karatsubaAdd._karatsubaAdd((_z.__slice__(_n2) : stdgo._internal.math.big.Big_T_nat.T_nat), _r, _n);
        stdgo._internal.math.big.Big__karatsubaAdd._karatsubaAdd((_z.__slice__(_n2) : stdgo._internal.math.big.Big_T_nat.T_nat), (_r.__slice__(_n) : stdgo._internal.math.big.Big_T_nat.T_nat), _n);
        if ((_s > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.math.big.Big__karatsubaAdd._karatsubaAdd((_z.__slice__(_n2) : stdgo._internal.math.big.Big_T_nat.T_nat), _p, _n);
        } else {
            stdgo._internal.math.big.Big__karatsubaSub._karatsubaSub((_z.__slice__(_n2) : stdgo._internal.math.big.Big_T_nat.T_nat), _p, _n);
        };
    }
