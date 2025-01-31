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
function _fibo(_n:stdgo.GoInt):stdgo._internal.math.big.Big_T_nat.T_nat {
        {
            final __value__ = _n;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return null;
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat);
            };
        };
        var _f0 = (stdgo._internal.math.big.Big__fibo._fibo((0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _f1 = (stdgo._internal.math.big.Big__fibo._fibo((1 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _f2:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _f2 = _f2._add(_f0, _f1);
{
                    final __tmp__0 = _f1;
                    final __tmp__1 = _f2;
                    final __tmp__2 = _f0;
                    _f0 = __tmp__0;
                    _f1 = __tmp__1;
                    _f2 = __tmp__2;
                };
                _i++;
            };
        };
        return _f1;
    }
