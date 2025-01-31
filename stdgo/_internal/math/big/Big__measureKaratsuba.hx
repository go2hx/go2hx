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
function _measureKaratsuba(_th:stdgo.GoInt):stdgo._internal.time.Time_Duration.Duration {
        {
            final __tmp__0 = stdgo._internal.math.big.Big__karatsubaThreshold._karatsubaThreshold;
            final __tmp__1 = _th;
            _th = __tmp__0;
            stdgo._internal.math.big.Big__karatsubaThreshold._karatsubaThreshold = __tmp__1;
        };
        var _res = (stdgo._internal.testing.Testing_benchmark.benchmark(stdgo._internal.math.big.Big__karatsubaLoad._karatsubaLoad)?.__copy__() : stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult);
        stdgo._internal.math.big.Big__karatsubaThreshold._karatsubaThreshold = _th;
        return (_res.nsPerOp() : stdgo._internal.time.Time_Duration.Duration);
    }
