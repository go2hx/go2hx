package stdgo._internal.math.big;
function _measureSqr(_words:stdgo.GoInt, _nruns:stdgo.GoInt, _mode:stdgo.GoString):stdgo._internal.time.Time_duration.Duration {
        var __0 = (stdgo._internal.math.big.Big__basicsqrthreshold._basicSqrThreshold : stdgo.GoInt), __1 = (stdgo._internal.math.big.Big__karatsubasqrthreshold._karatsubaSqrThreshold : stdgo.GoInt);
var _initKaratsubaSqr = __1, _initBasicSqr = __0;
        {
            final __value__ = _mode;
            if (__value__ == (("mul(x, x)" : stdgo.GoString))) {
                stdgo._internal.math.big.Big__basicsqrthreshold._basicSqrThreshold = (_words + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else if (__value__ == (("basicSqr(x)" : stdgo.GoString))) {
                {
                    final __tmp__0 = (_words - (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = (_words + (1 : stdgo.GoInt) : stdgo.GoInt);
                    stdgo._internal.math.big.Big__basicsqrthreshold._basicSqrThreshold = __tmp__0;
                    stdgo._internal.math.big.Big__karatsubasqrthreshold._karatsubaSqrThreshold = __tmp__1;
                };
            } else if (__value__ == (("karatsubaSqr(x)" : stdgo.GoString))) {
                stdgo._internal.math.big.Big__karatsubasqrthreshold._karatsubaSqrThreshold = (_words - (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        var _testval:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _nruns : Bool)) {
                var _res = (stdgo._internal.testing.Testing_benchmark.benchmark(function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    stdgo._internal.math.big.Big__benchmarknatsqr._benchmarkNatSqr(_b, _words);
                }).__copy__() : stdgo._internal.testing.Testing_benchmarkresult.BenchmarkResult);
_testval = (_testval + (_res.nsPerOp()) : stdgo.GoInt64);
                _i++;
            };
        };
        _testval = (_testval / ((_nruns : stdgo.GoInt64)) : stdgo.GoInt64);
        {
            final __tmp__0 = _initBasicSqr;
            final __tmp__1 = _initKaratsubaSqr;
            stdgo._internal.math.big.Big__basicsqrthreshold._basicSqrThreshold = __tmp__0;
            stdgo._internal.math.big.Big__karatsubasqrthreshold._karatsubaSqrThreshold = __tmp__1;
        };
        return (_testval : stdgo._internal.time.Time_duration.Duration);
    }
