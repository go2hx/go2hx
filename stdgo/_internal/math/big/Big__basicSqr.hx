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
function _basicSqr(_z:stdgo._internal.math.big.Big_T_nat.T_nat, _x:stdgo._internal.math.big.Big_T_nat.T_nat):Void {
        var _n = (_x.length : stdgo.GoInt);
        var _tp = stdgo._internal.math.big.Big__getNat._getNat(((2 : stdgo.GoInt) * _n : stdgo.GoInt));
        var _t = (_tp : stdgo._internal.math.big.Big_T_nat.T_nat);
        _t._clear();
        {
            var __tmp__ = stdgo._internal.math.big.Big__mulWW._mulWW(_x[(0 : stdgo.GoInt)], _x[(0 : stdgo.GoInt)]);
            _z[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
            _z[(0 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _d = (_x[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_Word.Word);
{
                    var __tmp__ = stdgo._internal.math.big.Big__mulWW._mulWW(_d, _d);
                    _z[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                    _z[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
                };
_t[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] = stdgo._internal.math.big.Big__addMulVVW._addMulVVW((_t.__slice__(_i, ((2 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat), (_x.__slice__((0 : stdgo.GoInt), _i) : stdgo._internal.math.big.Big_T_nat.T_nat), _d);
                _i++;
            };
        };
        _t[(((2 : stdgo.GoInt) * _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.math.big.Big__shlVU._shlVU((_t.__slice__((1 : stdgo.GoInt), (((2 : stdgo.GoInt) * _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat), (_t.__slice__((1 : stdgo.GoInt), (((2 : stdgo.GoInt) * _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat), (1u32 : stdgo.GoUInt));
        stdgo._internal.math.big.Big__addVV._addVV(_z, _z, _t);
        stdgo._internal.math.big.Big__putNat._putNat(_tp);
    }
