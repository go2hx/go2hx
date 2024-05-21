# Module stdgo._internal.time has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/time_test/Time_test.hx:7: characters 8-42

   7 | [2mimport [0m[1mstdgo._internal.time.tzdata.Tzdata[0m[2m;[0m
     |        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.time.tzdata.Tzdata

[30;41m ERROR [0m stdgo/_internal/time_test/Time.hx:5: characters 90-125

   5 | [2m(new stdgo._internal.testing.Testing.InternalTest(("TestNextStdChunk" : stdgo.GoString), [0m[1mstdgo._internal.time_test.Time_test[0m[2m.testNextStdChunk) : stdgo._internal.testing.Testing.InternalTest),[0m
     |                                                                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.time_test.Time_test does not define type Time_test

          | For optional function argument 'f'

[30;41m ERROR [0m stdgo/_internal/time_test/Time.hx:132: characters 97-132

 132 | [2m(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAfterFunc" : stdgo.GoString), [0m[1mstdgo._internal.time_test.Time_test[0m[2m.benchmarkAfterFunc) : stdgo._internal.testing.Testing.InternalBenchmark),[0m
     |                                                                                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.time_test.Time_test does not define type Time_test

          | For optional function argument 'f'

[30;41m ERROR [0m stdgo/_internal/time_test/Time.hx:167: characters 268-303

 167 | [2mvar _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (() -> (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(2, 2, ...[(new stdgo._internal.testing.Testing.InternalFuzzTarget(("FuzzFormatRFC3339" : stdgo.GoString), [0m[1mstdgo._internal.time_test.Time_test[0m[2m.fuzzFormatRFC3339) : stdgo._internal.testing.Testing.InternalFuzzTarget), (new stdgo._internal.testing.Testing.InternalFuzzTarget(("FuzzParseRFC3339" : stdgo.GoString), stdgo._internal.time_test.Time_test.fuzzParseRFC3339) : stdgo._internal.testing.Testing.InternalFuzzTarget)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalFuzzTarget)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>))();[0m
     |                                                                                                                                                                                                                                                                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.time_test.Time_test does not define type Time_test

          | For optional function argument 'f'

[30;41m ERROR [0m stdgo/_internal/time_test/Time.hx:169: characters 98-133

 169 | [2m(new stdgo._internal.testing.Testing.InternalExample(("ExampleDuration_Round" : stdgo.GoString), [0m[1mstdgo._internal.time_test.Time_test[0m[2m.exampleDuration_Round, ("d.Round(   1ns) = 1h15m30.918273645s\nd.Round(   1µs) = 1h15m30.918274s\nd.Round(   1ms) = 1h15m30.918s\nd.Round(    1s) = 1h15m31s\nd.Round(    2s) = 1h15m30s\nd.Round(  1m0s) = 1h16m0s\nd.Round( 10m0s) = 1h20m0s\nd.Round(1h0m0s) = 1h0m0s\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),[0m
     |                                                                                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.time_test.Time_test does not define type Time_test

          | For optional function argument 'f'

stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,362

```

