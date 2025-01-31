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
function _measureSqr(_words:stdgo.GoInt, _nruns:stdgo.GoInt, _mode:stdgo.GoString):stdgo._internal.time.Time_Duration.Duration {
        var __0 = (stdgo._internal.math.big.Big__basicSqrThreshold._basicSqrThreshold : stdgo.GoInt), __1 = (stdgo._internal.math.big.Big__karatsubaSqrThreshold._karatsubaSqrThreshold : stdgo.GoInt);
var _initKaratsubaSqr = __1, _initBasicSqr = __0;
        {
            final __value__ = _mode;
            if (__value__ == (("mul(x, x)" : stdgo.GoString))) {
                stdgo._internal.math.big.Big__basicSqrThreshold._basicSqrThreshold = (_words + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else if (__value__ == (("basicSqr(x)" : stdgo.GoString))) {
                {
                    final __tmp__0 = (_words - (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = (_words + (1 : stdgo.GoInt) : stdgo.GoInt);
                    stdgo._internal.math.big.Big__basicSqrThreshold._basicSqrThreshold = __tmp__0;
                    stdgo._internal.math.big.Big__karatsubaSqrThreshold._karatsubaSqrThreshold = __tmp__1;
                };
            } else if (__value__ == (("karatsubaSqr(x)" : stdgo.GoString))) {
                stdgo._internal.math.big.Big__karatsubaSqrThreshold._karatsubaSqrThreshold = (_words - (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        var _testval:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _nruns : Bool)) {
                var _res = (stdgo._internal.testing.Testing_benchmark.benchmark(function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    stdgo._internal.math.big.Big__benchmarkNatSqr._benchmarkNatSqr(_b, _words);
                }).__copy__() : stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult);
_testval = (_testval + (_res.nsPerOp()) : stdgo.GoInt64);
                _i++;
            };
        };
        _testval = (_testval / ((_nruns : stdgo.GoInt64)) : stdgo.GoInt64);
        {
            final __tmp__0 = _initBasicSqr;
            final __tmp__1 = _initKaratsubaSqr;
            stdgo._internal.math.big.Big__basicSqrThreshold._basicSqrThreshold = __tmp__0;
            stdgo._internal.math.big.Big__karatsubaSqrThreshold._karatsubaSqrThreshold = __tmp__1;
        };
        return (_testval : stdgo._internal.time.Time_Duration.Duration);
    }
