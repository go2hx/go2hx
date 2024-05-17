# Module: `stdgo._internal.testing`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [`function allocsPerRun(_runs:stdgo.GoInt, f:():Void):stdgo.GoFloat64`](<#function-allocsperrun>)

- [`function benchmark(f:()):stdgo._internal.testing.BenchmarkResult`](<#function-benchmark>)

- [`function coverMode():stdgo.GoString`](<#function-covermode>)

- [`function mainStart(deps:stdgo._internal.testing.T_testDeps, tests:stdgo.Slice<stdgo._internal.testing.InternalTest>, benchmarks:stdgo.Slice<stdgo._internal.testing.InternalBenchmark>, _0:Any, ?_1:Any):stdgo._internal.testing.M`](<#function-mainstart>)

- [`function short():Bool`](<#function-short>)

- [`function testing():Bool`](<#function-testing>)

- [`function verbose():Bool`](<#function-verbose>)

- [class B](<#class-b>)

  - [`function cleanup(f:():Void):Void`](<#b-function-cleanup>)

  - [`function error(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#b-function-error>)

  - [`function errorf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#b-function-errorf>)

  - [`function fail():Void`](<#b-function-fail>)

  - [`function failNow():Void`](<#b-function-failnow>)

  - [`function failed():Bool`](<#b-function-failed>)

  - [`function fatal(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#b-function-fatal>)

  - [`function fatalf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#b-function-fatalf>)

  - [`function helper():Void`](<#b-function-helper>)

  - [`function log(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#b-function-log>)

  - [`function logf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#b-function-logf>)

  - [`function name():stdgo.GoString`](<#b-function-name>)

  - [`function new(?n:stdgo.GoInt):Void`](<#b-function-new>)

  - [`function reportAllocs():Void`](<#b-function-reportallocs>)

  - [`function reportMetric(n:stdgo.GoFloat64, uint:stdgo.GoString):Void`](<#b-function-reportmetric>)

  - [`function resetTimer():Void`](<#b-function-resettimer>)

  - [`function run(name:stdgo.GoString, f:()):Bool`](<#b-function-run>)

  - [`function runParallel(body:()):Null<Any>`](<#b-function-runparallel>)

  - [`function setBytes(n:stdgo.GoInt64):Void`](<#b-function-setbytes>)

  - [`function setParallelism(p:stdgo.GoInt):Void`](<#b-function-setparallelism>)

  - [`function setenv(key:stdgo.GoString, value:stdgo.GoString):Void`](<#b-function-setenv>)

  - [`function skip(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#b-function-skip>)

  - [`function skipNow():Void`](<#b-function-skipnow>)

  - [`function skipf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#b-function-skipf>)

  - [`function skipped():Bool`](<#b-function-skipped>)

  - [`function startTimer():Void`](<#b-function-starttimer>)

  - [`function stopTimer():Void`](<#b-function-stoptimer>)

  - [`function tempDir():stdgo.GoString`](<#b-function-tempdir>)

- [class BenchmarkResult](<#class-benchmarkresult>)

  - [`function allocedBytesPerOp():stdgo.GoInt64`](<#benchmarkresult-function-allocedbytesperop>)

  - [`function allocsPerOp():stdgo.GoInt64`](<#benchmarkresult-function-allocsperop>)

  - [`function memString():stdgo.GoString`](<#benchmarkresult-function-memstring>)

  - [`function new(?n:stdgo.GoInt, ?t:Any, ?bytes:stdgo.GoInt64, ?memAllocs:stdgo.GoUInt64, ?memBytes:stdgo.GoUInt64, ?extra:stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>):Void`](<#benchmarkresult-function-new>)

  - [`function nsPerOp():stdgo.GoInt64`](<#benchmarkresult-function-nsperop>)

  - [`function string():stdgo.GoString`](<#benchmarkresult-function-string>)

- [class F](<#class-f>)

  - [`function cleanup(f:():Void):Void`](<#f-function-cleanup>)

  - [`function error(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#f-function-error>)

  - [`function errorf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#f-function-errorf>)

  - [`function fail():Void`](<#f-function-fail>)

  - [`function failNow():Void`](<#f-function-failnow>)

  - [`function failed():Bool`](<#f-function-failed>)

  - [`function fatal(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#f-function-fatal>)

  - [`function fatalf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#f-function-fatalf>)

  - [`function fuzz(_ff:stdgo.AnyInterface):Void`](<#f-function-fuzz>)

  - [`function helper():Void`](<#f-function-helper>)

  - [`function log(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#f-function-log>)

  - [`function logf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#f-function-logf>)

  - [`function new(output:StringBuf):Void`](<#f-function-new>)

  - [`function parallel():Void`](<#f-function-parallel>)

  - [`function run(name:stdgo.GoString, f:()):Bool`](<#f-function-run>)

  - [`function setenv(key:stdgo.GoString, value:stdgo.GoString):Void`](<#f-function-setenv>)

  - [`function skip(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#f-function-skip>)

  - [`function skipNow():Void`](<#f-function-skipnow>)

  - [`function skipf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#f-function-skipf>)

  - [`function skipped():Bool`](<#f-function-skipped>)

  - [`function tempDir():stdgo.GoString`](<#f-function-tempdir>)

- [class InternalBenchmark](<#class-internalbenchmark>)

  - [`function f()`](<#internalbenchmark-function-f>)

  - [`function new(?name:stdgo.GoString, ?f:()):Void`](<#internalbenchmark-function-new>)

- [class InternalExample](<#class-internalexample>)

  - [`function f():Void`](<#internalexample-function-f>)

  - [`function new(?name:stdgo.GoString, ?f:():Void, ?output:stdgo.GoString, ?unordered:Bool):Void`](<#internalexample-function-new>)

- [class InternalFuzzTarget](<#class-internalfuzztarget>)

  - [`function f():Void`](<#internalfuzztarget-function-f>)

  - [`function new(?name:stdgo.GoString, ?f:():Void):Void`](<#internalfuzztarget-function-new>)

- [class InternalTest](<#class-internaltest>)

  - [`function f()`](<#internaltest-function-f>)

  - [`function new(?name:stdgo.GoString, ?f:()):Void`](<#internaltest-function-new>)

- [class M](<#class-m>)

  - [`function new(deps:stdgo._internal.testing.T_testDeps, tests:stdgo.Slice<stdgo._internal.testing.InternalTest>, benchmarks:stdgo.Slice<stdgo._internal.testing.InternalBenchmark>, examples:stdgo.Slice<stdgo._internal.testing.InternalExample>):Void`](<#m-function-new>)

  - [`function run():stdgo.GoInt`](<#m-function-run>)

- [class PB](<#class-pb>)

  - [`function new():Void`](<#pb-function-new>)

  - [`function next():Bool`](<#pb-function-next>)

- [class T\_](<#class-t_>)

  - [`function cleanup(f:():Void):Void`](<#t_-function-cleanup>)

  - [`function error(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t_-function-error>)

  - [`function errorf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t_-function-errorf>)

  - [`function fail():Void`](<#t_-function-fail>)

  - [`function failNow():Void`](<#t_-function-failnow>)

  - [`function failed():Bool`](<#t_-function-failed>)

  - [`function fatal(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t_-function-fatal>)

  - [`function fatalf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t_-function-fatalf>)

  - [`function helper():Void`](<#t_-function-helper>)

  - [`function log(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t_-function-log>)

  - [`function logf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t_-function-logf>)

  - [`function name():stdgo.GoString`](<#t_-function-name>)

  - [`function new(?output:StringBuf):Void`](<#t_-function-new>)

  - [`function parallel():Void`](<#t_-function-parallel>)

  - [`function run(name:stdgo.GoString, f:()):Bool`](<#t_-function-run>)

  - [`function setenv(key:stdgo.GoString, value:stdgo.GoString):Void`](<#t_-function-setenv>)

  - [`function skip(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t_-function-skip>)

  - [`function skipNow():Void`](<#t_-function-skipnow>)

  - [`function skipf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t_-function-skipf>)

  - [`function skipped():Bool`](<#t_-function-skipped>)

  - [`function tempDir():stdgo.GoString`](<#t_-function-tempdir>)

- [typedef TB](<#typedef-tb>)

- [typedef T\_corpusEntry](<#typedef-t_corpusentry>)

- [typedef T\_testDeps](<#typedef-t_testdeps>)

# Functions


```haxe
import stdgo._internal.testing.Testing
```


## function allocsPerRun


```haxe
function allocsPerRun(_runs:stdgo.GoInt, f:():Void):stdgo.GoFloat64
```


[\(view code\)](<./Testing.hx#L549>)


## function benchmark


```haxe
function benchmark(f:()):stdgo._internal.testing.BenchmarkResult
```


[\(view code\)](<./Testing.hx#L541>)


## function coverMode


```haxe
function coverMode():stdgo.GoString
```


[\(view code\)](<./Testing.hx#L539>)


## function mainStart


```haxe
function mainStart(deps:stdgo._internal.testing.T_testDeps, tests:stdgo.Slice<stdgo._internal.testing.InternalTest>, benchmarks:stdgo.Slice<stdgo._internal.testing.InternalBenchmark>, _0:Any, ?_1:Any):stdgo._internal.testing.M
```


[\(view code\)](<./Testing.hx#L504>)


## function short


```haxe
function short():Bool
```


[\(view code\)](<./Testing.hx#L546>)


## function testing


```haxe
function testing():Bool
```


[\(view code\)](<./Testing.hx#L10>)


## function verbose


```haxe
function verbose():Bool
```


[\(view code\)](<./Testing.hx#L552>)


# Classes


```haxe
import stdgo._internal.testing.*
```


## class B


```haxe
var n:stdgo.GoInt
```


### B function cleanup


```haxe
function cleanup(f:():Void):Void
```


[\(view code\)](<./Testing.hx#L110>)


### B function error


```haxe
function error(args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L112>)


### B function errorf


```haxe
function errorf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L117>)


### B function fail


```haxe
function fail():Void
```


[\(view code\)](<./Testing.hx#L124>)


### B function failNow


```haxe
function failNow():Void
```


[\(view code\)](<./Testing.hx#L126>)


### B function failed


```haxe
function failed():Bool
```


[\(view code\)](<./Testing.hx#L133>)


### B function fatal


```haxe
function fatal(args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L135>)


### B function fatalf


```haxe
function fatalf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L137>)


### B function helper


```haxe
function helper():Void
```


[\(view code\)](<./Testing.hx#L139>)


### B function log


```haxe
function log(args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L141>)


### B function logf


```haxe
function logf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L143>)


### B function name


```haxe
function name():stdgo.GoString
```


[\(view code\)](<./Testing.hx#L108>)


### B function new


```haxe
function new(?n:stdgo.GoInt):Void
```


[\(view code\)](<./Testing.hx#L95>)


### B function reportAllocs


```haxe
function reportAllocs():Void
```


[\(view code\)](<./Testing.hx#L145>)


### B function reportMetric


```haxe
function reportMetric(n:stdgo.GoFloat64, uint:stdgo.GoString):Void
```


[\(view code\)](<./Testing.hx#L147>)


### B function resetTimer


```haxe
function resetTimer():Void
```


[\(view code\)](<./Testing.hx#L100>)


### B function run


```haxe
function run(name:stdgo.GoString, f:()):Bool
```


[\(view code\)](<./Testing.hx#L103>)


### B function runParallel


```haxe
function runParallel(body:()):Null<Any>
```


[\(view code\)](<./Testing.hx#L149>)


### B function setBytes


```haxe
function setBytes(n:stdgo.GoInt64):Void
```


[\(view code\)](<./Testing.hx#L153>)


### B function setParallelism


```haxe
function setParallelism(p:stdgo.GoInt):Void
```


[\(view code\)](<./Testing.hx#L155>)


### B function setenv


```haxe
function setenv(key:stdgo.GoString, value:stdgo.GoString):Void
```


[\(view code\)](<./Testing.hx#L105>)


### B function skip


```haxe
function skip(args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L157>)


### B function skipNow


```haxe
function skipNow():Void
```


[\(view code\)](<./Testing.hx#L159>)


### B function skipf


```haxe
function skipf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L161>)


### B function skipped


```haxe
function skipped():Bool
```


[\(view code\)](<./Testing.hx#L164>)


### B function startTimer


```haxe
function startTimer():Void
```


[\(view code\)](<./Testing.hx#L166>)


### B function stopTimer


```haxe
function stopTimer():Void
```


[\(view code\)](<./Testing.hx#L168>)


### B function tempDir


```haxe
function tempDir():stdgo.GoString
```


[\(view code\)](<./Testing.hx#L170>)


## class BenchmarkResult


```haxe
var bytes:stdgo.GoInt64
```


```haxe
var extra:stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>
```


```haxe
var memAllocs:stdgo.GoUInt64
```


```haxe
var memBytes:stdgo.GoUInt64
```


```haxe
var n:stdgo.GoInt
```


```haxe
var t:Dynamic
```


### BenchmarkResult function allocedBytesPerOp


```haxe
function allocedBytesPerOp():stdgo.GoInt64
```


[\(view code\)](<./Testing.hx#L64>)


### BenchmarkResult function allocsPerOp


```haxe
function allocsPerOp():stdgo.GoInt64
```


[\(view code\)](<./Testing.hx#L67>)


### BenchmarkResult function memString


```haxe
function memString():stdgo.GoString
```


[\(view code\)](<./Testing.hx#L70>)


### BenchmarkResult function new


```haxe
function new(?n:stdgo.GoInt, ?t:Any, ?bytes:stdgo.GoInt64, ?memAllocs:stdgo.GoUInt64, ?memBytes:stdgo.GoUInt64, ?extra:stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>):Void
```


[\(view code\)](<./Testing.hx#L42>)


### BenchmarkResult function nsPerOp


```haxe
function nsPerOp():stdgo.GoInt64
```


[\(view code\)](<./Testing.hx#L61>)


### BenchmarkResult function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Testing.hx#L73>)


## class F


### F function cleanup


```haxe
function cleanup(f:():Void):Void
```


[\(view code\)](<./Testing.hx#L188>)


### F function error


```haxe
function error(args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L190>)


### F function errorf


```haxe
function errorf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L195>)


### F function fail


```haxe
function fail():Void
```


[\(view code\)](<./Testing.hx#L202>)


### F function failNow


```haxe
function failNow():Void
```


[\(view code\)](<./Testing.hx#L204>)


### F function failed


```haxe
function failed():Bool
```


[\(view code\)](<./Testing.hx#L211>)


### F function fatal


```haxe
function fatal(args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L213>)


### F function fatalf


```haxe
function fatalf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L215>)


### F function fuzz


```haxe
function fuzz(_ff:stdgo.AnyInterface):Void
```


[\(view code\)](<./Testing.hx#L229>)


### F function helper


```haxe
function helper():Void
```


[\(view code\)](<./Testing.hx#L217>)


### F function log


```haxe
function log(args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L219>)


### F function logf


```haxe
function logf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L221>)


### F function new


```haxe
function new(output:StringBuf):Void
```


[\(view code\)](<./Testing.hx#L184>)


### F function parallel


```haxe
function parallel():Void
```


[\(view code\)](<./Testing.hx#L223>)


### F function run


```haxe
function run(name:stdgo.GoString, f:()):Bool
```


[\(view code\)](<./Testing.hx#L225>)


### F function setenv


```haxe
function setenv(key:stdgo.GoString, value:stdgo.GoString):Void
```


[\(view code\)](<./Testing.hx#L231>)


### F function skip


```haxe
function skip(args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L233>)


### F function skipNow


```haxe
function skipNow():Void
```


[\(view code\)](<./Testing.hx#L235>)


### F function skipf


```haxe
function skipf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L237>)


### F function skipped


```haxe
function skipped():Bool
```


[\(view code\)](<./Testing.hx#L240>)


### F function tempDir


```haxe
function tempDir():stdgo.GoString
```


[\(view code\)](<./Testing.hx#L243>)


## class InternalBenchmark


```haxe
var name:stdgo.GoString
```


### InternalBenchmark function f


```haxe
function f()
```


### InternalBenchmark function new


```haxe
function new(?name:stdgo.GoString, ?f:()):Void
```


[\(view code\)](<./Testing.hx#L428>)


## class InternalExample


```haxe
var name:stdgo.GoString
```


```haxe
var output:stdgo.GoString
```


```haxe
var unordered:Bool
```


### InternalExample function f


```haxe
function f():Void
```


### InternalExample function new


```haxe
function new(?name:stdgo.GoString, ?f:():Void, ?output:stdgo.GoString, ?unordered:Bool):Void
```


[\(view code\)](<./Testing.hx#L468>)


## class InternalFuzzTarget


```haxe
var name:stdgo.GoString
```


### InternalFuzzTarget function f


```haxe
function f():Void
```


### InternalFuzzTarget function new


```haxe
function new(?name:stdgo.GoString, ?f:():Void):Void
```


[\(view code\)](<./Testing.hx#L447>)


## class InternalTest


```haxe
var name:stdgo.GoString
```


### InternalTest function f


```haxe
function f()
```


### InternalTest function new


```haxe
function new(?name:stdgo.GoString, ?f:()):Void
```


[\(view code\)](<./Testing.hx#L491>)


## class M


```haxe
var chatty:Bool
```


### M function new


```haxe
function new(deps:stdgo._internal.testing.T_testDeps, tests:stdgo.Slice<stdgo._internal.testing.InternalTest>, benchmarks:stdgo.Slice<stdgo._internal.testing.InternalBenchmark>, examples:stdgo.Slice<stdgo._internal.testing.InternalExample>):Void
```


[\(view code\)](<./Testing.hx#L369>)


### M function run


```haxe
function run():stdgo.GoInt
```


[\(view code\)](<./Testing.hx#L380>)


## class PB


### PB function new


```haxe
function new():Void
```


[\(view code\)](<./Testing.hx#L78>)


### PB function next


```haxe
function next():Bool
```


[\(view code\)](<./Testing.hx#L81>)


## class T\_


### T\_ function cleanup


```haxe
function cleanup(f:():Void):Void
```


[\(view code\)](<./Testing.hx#L296>)


### T\_ function error


```haxe
function error(args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L298>)


### T\_ function errorf


```haxe
function errorf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L303>)


### T\_ function fail


```haxe
function fail():Void
```


[\(view code\)](<./Testing.hx#L310>)


### T\_ function failNow


```haxe
function failNow():Void
```


[\(view code\)](<./Testing.hx#L312>)


### T\_ function failed


```haxe
function failed():Bool
```


[\(view code\)](<./Testing.hx#L318>)


### T\_ function fatal


```haxe
function fatal(args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L320>)


### T\_ function fatalf


```haxe
function fatalf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L322>)


### T\_ function helper


```haxe
function helper():Void
```


[\(view code\)](<./Testing.hx#L324>)


### T\_ function log


```haxe
function log(args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L326>)


### T\_ function logf


```haxe
function logf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L328>)


### T\_ function name


```haxe
function name():stdgo.GoString
```


[\(view code\)](<./Testing.hx#L294>)


### T\_ function new


```haxe
function new(?output:StringBuf):Void
```


[\(view code\)](<./Testing.hx#L289>)


### T\_ function parallel


```haxe
function parallel():Void
```


[\(view code\)](<./Testing.hx#L330>)


### T\_ function run


```haxe
function run(name:stdgo.GoString, f:()):Bool
```


[\(view code\)](<./Testing.hx#L332>)


### T\_ function setenv


```haxe
function setenv(key:stdgo.GoString, value:stdgo.GoString):Void
```


[\(view code\)](<./Testing.hx#L336>)


### T\_ function skip


```haxe
function skip(args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L338>)


### T\_ function skipNow


```haxe
function skipNow():Void
```


[\(view code\)](<./Testing.hx#L340>)


### T\_ function skipf


```haxe
function skipf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Testing.hx#L342>)


### T\_ function skipped


```haxe
function skipped():Bool
```


[\(view code\)](<./Testing.hx#L345>)


### T\_ function tempDir


```haxe
function tempDir():stdgo.GoString
```


[\(view code\)](<./Testing.hx#L348>)


# Typedefs


```haxe
import stdgo._internal.testing.*
```


## typedef TB


```haxe
typedef TB = {
	public function tempDir():stdgo.GoString;
	public function skipped():Bool;
	public function skipf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function skipNow():Void;
	public function skip(_args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function setenv(_key:stdgo.GoString, _value:stdgo.GoString):Void;
	public function name():stdgo.GoString;
	public function logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function log(_args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function helper():Void;
	public function fatalf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function fatal(_args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function failed():Bool;
	public function failNow():Void;
	public function fail():Void;
	public function errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function error(_args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function cleanup(_0:():Void):Void;
};
```


## typedef T\_corpusEntry


```haxe
typedef T_corpusEntry = {
	values:stdgo.Slice<stdgo.AnyInterface>;
	path:stdgo.GoString;
	parent:stdgo.GoString;
	isSeed:Bool;
	generation:stdgo.GoInt;
	data:stdgo.Slice<stdgo.GoUInt8>;
};
```


## typedef T\_testDeps


```haxe
typedef T_testDeps = {
	public function writeProfileTo(_0:stdgo.GoString, _1:stdgo._internal.io.Writer, _2:stdgo.GoInt):stdgo.Error;
	public function stopTestLog():stdgo.Error;
	public function stopCPUProfile():Void;
	public function startTestLog(_0:stdgo._internal.io.Writer):Void;
	public function startCPUProfile(_0:stdgo._internal.io.Writer):stdgo.Error;
	public function snapshotCoverage():Void;
	public function setPanicOnExit0(_0:Bool):Void;
	public function runFuzzWorker(_0:()):stdgo.Error;
	public function resetCoverage():Void;
	public function readCorpus(_0:stdgo.GoString, _1:stdgo.Slice<stdgo._internal.reflect.Type_>):{
		_1:stdgo.Error;
		_0:stdgo.Slice<stdgo._internal.testing.T_corpusEntry>;
	};
	public function matchString(_pat:stdgo.GoString, _str:stdgo.GoString):{
		_1:stdgo.Error;
		_0:Bool;
	};
	public function importPath():stdgo.GoString;
	public function coordinateFuzzing(_0:Dynamic, _1:stdgo.GoInt64, _2:Dynamic, _3:stdgo.GoInt64, _4:stdgo.GoInt, _5:stdgo.Slice<stdgo._internal.testing.T_corpusEntry>, _6:stdgo.Slice<stdgo._internal.reflect.Type_>, _7:stdgo.GoString, _8:stdgo.GoString):stdgo.Error;
	public function checkCorpus(_0:stdgo.Slice<stdgo.AnyInterface>, _1:stdgo.Slice<stdgo._internal.reflect.Type_>):stdgo.Error;
};
```


