package stdgo._internal.math.big;
function _measureKaratsuba(_th:stdgo.GoInt):stdgo._internal.time.Time_duration.Duration {
        {
            final __tmp__0 = stdgo._internal.math.big.Big__karatsubathreshold._karatsubaThreshold;
            final __tmp__1 = _th;
            _th = __tmp__0;
            stdgo._internal.math.big.Big__karatsubathreshold._karatsubaThreshold = __tmp__1;
        };
        var _res = (stdgo._internal.testing.Testing_benchmark.benchmark(stdgo._internal.math.big.Big__karatsubaload._karatsubaLoad)?.__copy__() : stdgo._internal.testing.Testing_benchmarkresult.BenchmarkResult);
        stdgo._internal.math.big.Big__karatsubathreshold._karatsubaThreshold = _th;
        return (_res.nsPerOp() : stdgo._internal.time.Time_duration.Duration);
    }
