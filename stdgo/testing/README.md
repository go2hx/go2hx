# Module: `stdgo.testing`

[(view library index)](../stdgo.md)


# Overview


 


# Index


- [`function allocsPerRun(_runs:stdgo.GoInt, f:():Void):stdgo.GoFloat64`](<#function-allocsperrun>)

- [`function benchmark(f:()):stdgo.testing.BenchmarkResult`](<#function-benchmark>)

- [`function coverMode():stdgo.GoString`](<#function-covermode>)

- [`function mainStart(deps:stdgo.testing.T_testDeps, tests:stdgo.Slice<stdgo.testing.InternalTest>, benchmarks:stdgo.Slice<stdgo.testing.InternalBenchmark>, _0:Any, ?_1:Any):stdgo.testing.M`](<#function-mainstart>)

- [`function short():Bool`](<#function-short>)

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

  - [`function new(?n:Null<stdgo.GoInt>):Void`](<#b-function-new>)

  - [`function reportAllocs():Void`](<#b-function-reportallocs>)

  - [`function reportMetric(n:stdgo.GoFloat64, uint:stdgo.GoString):Void`](<#b-function-reportmetric>)

  - [`function resetTimer():Void`](<#b-function-resettimer>)

  - [`function run(name:stdgo.GoString, f:()):Bool`](<#b-function-run>)

  - [`function runParrallel(body:()):{<unknown>}`](<#b-function-runparrallel>)

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

  - [`function new(?n:stdgo.GoInt, ?t:{<unknown>}, ?bytes:stdgo.GoInt64, ?memAllocs:stdgo.GoUInt64, ?memBytes:stdgo.GoUInt64, ?extra:stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>):Void`](<#benchmarkresult-function-new>)

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

  - [`function new(name:stdgo.GoString, f:()):Void`](<#internaltest-function-new>)

- [class M](<#class-m>)

  - [`function new(deps:stdgo.testing.T_testDeps, tests:stdgo.Slice<stdgo.testing.InternalTest>, benchmarks:stdgo.Slice<stdgo.testing.InternalBenchmark>, examples:stdgo.Slice<stdgo.testing.InternalExample>):Void`](<#m-function-new>)

  - [`function run():stdgo.GoInt`](<#m-function-run>)

- [class PB](<#class-pb>)

  - [`function new():Void`](<#pb-function-new>)

  - [`function next():Bool`](<#pb-function-next>)

- [class T](<#class-t>)

  - [`function cleanup(f:():Void):Void`](<#t-function-cleanup>)

  - [`function error(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t-function-error>)

  - [`function errorf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t-function-errorf>)

  - [`function fail():Void`](<#t-function-fail>)

  - [`function failNow():Void`](<#t-function-failnow>)

  - [`function failed():Bool`](<#t-function-failed>)

  - [`function fatal(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t-function-fatal>)

  - [`function fatalf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t-function-fatalf>)

  - [`function helper():Void`](<#t-function-helper>)

  - [`function log(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t-function-log>)

  - [`function logf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t-function-logf>)

  - [`function name():stdgo.GoString`](<#t-function-name>)

  - [`function new(?output:StringBuf):Void`](<#t-function-new>)

  - [`function parallel():Void`](<#t-function-parallel>)

  - [`function run(name:stdgo.GoString, f:()):Bool`](<#t-function-run>)

  - [`function setenv(key:stdgo.GoString, value:stdgo.GoString):Void`](<#t-function-setenv>)

  - [`function skip(args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t-function-skip>)

  - [`function skipNow():Void`](<#t-function-skipnow>)

  - [`function skipf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t-function-skipf>)

  - [`function skipped():Bool`](<#t-function-skipped>)

  - [`function tempDir():stdgo.GoString`](<#t-function-tempdir>)

- [typedef TB](<#typedef-tb>)

- [typedef T\_](<#typedef-t_>)

- [typedef T\_corpusEntry](<#typedef-t_corpusentry>)

- [typedef T\_testDeps](<#typedef-t_testdeps>)

# Functions


```haxe
import stdgo.testing.Testing
```


## function allocsPerRun


```haxe
function allocsPerRun(_runs:stdgo.GoInt, f:():Void):stdgo.GoFloat64
```


 


[\(view code\)](<./Testing.hx#L509>)


## function benchmark


```haxe
function benchmark(f:()):stdgo.testing.BenchmarkResult
```


 


[\(view code\)](<./Testing.hx#L501>)


## function coverMode


```haxe
function coverMode():stdgo.GoString
```


 


[\(view code\)](<./Testing.hx#L499>)


## function mainStart


```haxe
function mainStart(deps:stdgo.testing.T_testDeps, tests:stdgo.Slice<stdgo.testing.InternalTest>, benchmarks:stdgo.Slice<stdgo.testing.InternalBenchmark>, _0:Any, ?_1:Any):stdgo.testing.M
```


 


[\(view code\)](<./Testing.hx#L464>)


## function short


```haxe
function short():Bool
```


 


[\(view code\)](<./Testing.hx#L506>)


## function verbose


```haxe
function verbose():Bool
```


 


[\(view code\)](<./Testing.hx#L512>)


# Classes


```haxe
import stdgo.testing.*
```


## class B


 


```haxe
var n:stdgo.GoInt
```


### B function cleanup


```haxe
function cleanup(f:():Void):Void
```


 


[\(view code\)](<./Testing.hx#L107>)


### B function error


```haxe
function error(args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L109>)


### B function errorf


```haxe
function errorf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L114>)


### B function fail


```haxe
function fail():Void
```


 


[\(view code\)](<./Testing.hx#L121>)


### B function failNow


```haxe
function failNow():Void
```


 


[\(view code\)](<./Testing.hx#L123>)


### B function failed


```haxe
function failed():Bool
```


 


[\(view code\)](<./Testing.hx#L130>)


### B function fatal


```haxe
function fatal(args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L132>)


### B function fatalf


```haxe
function fatalf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L134>)


### B function helper


```haxe
function helper():Void
```


 


[\(view code\)](<./Testing.hx#L136>)


### B function log


```haxe
function log(args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L138>)


### B function logf


```haxe
function logf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L140>)


### B function name


```haxe
function name():stdgo.GoString
```


 


[\(view code\)](<./Testing.hx#L105>)


### B function new


```haxe
function new(?n:Null<stdgo.GoInt>):Void
```


 


[\(view code\)](<./Testing.hx#L92>)


### B function reportAllocs


```haxe
function reportAllocs():Void
```


 


[\(view code\)](<./Testing.hx#L142>)


### B function reportMetric


```haxe
function reportMetric(n:stdgo.GoFloat64, uint:stdgo.GoString):Void
```


 


[\(view code\)](<./Testing.hx#L144>)


### B function resetTimer


```haxe
function resetTimer():Void
```


 


[\(view code\)](<./Testing.hx#L97>)


### B function run


```haxe
function run(name:stdgo.GoString, f:()):Bool
```


 


[\(view code\)](<./Testing.hx#L100>)


### B function runParrallel


```haxe
function runParrallel(body:()):{<unknown>}
```


 


[\(view code\)](<./Testing.hx#L146>)


### B function setBytes


```haxe
function setBytes(n:stdgo.GoInt64):Void
```


 


[\(view code\)](<./Testing.hx#L150>)


### B function setParallelism


```haxe
function setParallelism(p:stdgo.GoInt):Void
```


 


[\(view code\)](<./Testing.hx#L152>)


### B function setenv


```haxe
function setenv(key:stdgo.GoString, value:stdgo.GoString):Void
```


 


[\(view code\)](<./Testing.hx#L102>)


### B function skip


```haxe
function skip(args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L154>)


### B function skipNow


```haxe
function skipNow():Void
```


 


[\(view code\)](<./Testing.hx#L156>)


### B function skipf


```haxe
function skipf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L158>)


### B function skipped


```haxe
function skipped():Bool
```


 


[\(view code\)](<./Testing.hx#L161>)


### B function startTimer


```haxe
function startTimer():Void
```


 


[\(view code\)](<./Testing.hx#L163>)


### B function stopTimer


```haxe
function stopTimer():Void
```


 


[\(view code\)](<./Testing.hx#L165>)


### B function tempDir


```haxe
function tempDir():stdgo.GoString
```


 


[\(view code\)](<./Testing.hx#L167>)


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


 


[\(view code\)](<./Testing.hx#L61>)


### BenchmarkResult function allocsPerOp


```haxe
function allocsPerOp():stdgo.GoInt64
```


 


[\(view code\)](<./Testing.hx#L64>)


### BenchmarkResult function memString


```haxe
function memString():stdgo.GoString
```


 


[\(view code\)](<./Testing.hx#L67>)


### BenchmarkResult function new


```haxe
function new(?n:stdgo.GoInt, ?t:{<unknown>}, ?bytes:stdgo.GoInt64, ?memAllocs:stdgo.GoUInt64, ?memBytes:stdgo.GoUInt64, ?extra:stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>):Void
```


 


[\(view code\)](<./Testing.hx#L39>)


### BenchmarkResult function nsPerOp


```haxe
function nsPerOp():stdgo.GoInt64
```


 


[\(view code\)](<./Testing.hx#L58>)


### BenchmarkResult function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Testing.hx#L70>)


## class F


 


### F function cleanup


```haxe
function cleanup(f:():Void):Void
```


 


[\(view code\)](<./Testing.hx#L185>)


### F function error


```haxe
function error(args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L187>)


### F function errorf


```haxe
function errorf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L192>)


### F function fail


```haxe
function fail():Void
```


 


[\(view code\)](<./Testing.hx#L199>)


### F function failNow


```haxe
function failNow():Void
```


 


[\(view code\)](<./Testing.hx#L201>)


### F function failed


```haxe
function failed():Bool
```


 


[\(view code\)](<./Testing.hx#L208>)


### F function fatal


```haxe
function fatal(args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L210>)


### F function fatalf


```haxe
function fatalf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L212>)


### F function helper


```haxe
function helper():Void
```


 


[\(view code\)](<./Testing.hx#L214>)


### F function log


```haxe
function log(args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L216>)


### F function logf


```haxe
function logf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L218>)


### F function new


```haxe
function new(output:StringBuf):Void
```


 


[\(view code\)](<./Testing.hx#L181>)


### F function parallel


```haxe
function parallel():Void
```


 


[\(view code\)](<./Testing.hx#L220>)


### F function run


```haxe
function run(name:stdgo.GoString, f:()):Bool
```


 


[\(view code\)](<./Testing.hx#L222>)


### F function setenv


```haxe
function setenv(key:stdgo.GoString, value:stdgo.GoString):Void
```


 


[\(view code\)](<./Testing.hx#L226>)


### F function skip


```haxe
function skip(args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L228>)


### F function skipNow


```haxe
function skipNow():Void
```


 


[\(view code\)](<./Testing.hx#L230>)


### F function skipf


```haxe
function skipf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L232>)


### F function skipped


```haxe
function skipped():Bool
```


 


[\(view code\)](<./Testing.hx#L235>)


### F function tempDir


```haxe
function tempDir():stdgo.GoString
```


 


[\(view code\)](<./Testing.hx#L238>)


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


 


[\(view code\)](<./Testing.hx#L389>)


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


 


[\(view code\)](<./Testing.hx#L429>)


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


 


[\(view code\)](<./Testing.hx#L408>)


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
function new(name:stdgo.GoString, f:()):Void
```


 


[\(view code\)](<./Testing.hx#L452>)


## class M


 


```haxe
var chatty:Bool
```


### M function new


```haxe
function new(deps:stdgo.testing.T_testDeps, tests:stdgo.Slice<stdgo.testing.InternalTest>, benchmarks:stdgo.Slice<stdgo.testing.InternalBenchmark>, examples:stdgo.Slice<stdgo.testing.InternalExample>):Void
```


 


[\(view code\)](<./Testing.hx#L336>)


### M function run


```haxe
function run():stdgo.GoInt
```


 


[\(view code\)](<./Testing.hx#L344>)


## class PB


 


### PB function new


```haxe
function new():Void
```


 


[\(view code\)](<./Testing.hx#L75>)


### PB function next


```haxe
function next():Bool
```


 


[\(view code\)](<./Testing.hx#L78>)


## class T


 


### T function cleanup


```haxe
function cleanup(f:():Void):Void
```


 


[\(view code\)](<./Testing.hx#L263>)


### T function error


```haxe
function error(args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L265>)


### T function errorf


```haxe
function errorf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L270>)


### T function fail


```haxe
function fail():Void
```


 


[\(view code\)](<./Testing.hx#L277>)


### T function failNow


```haxe
function failNow():Void
```


 


[\(view code\)](<./Testing.hx#L279>)


### T function failed


```haxe
function failed():Bool
```


 


[\(view code\)](<./Testing.hx#L285>)


### T function fatal


```haxe
function fatal(args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L287>)


### T function fatalf


```haxe
function fatalf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L289>)


### T function helper


```haxe
function helper():Void
```


 


[\(view code\)](<./Testing.hx#L291>)


### T function log


```haxe
function log(args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L293>)


### T function logf


```haxe
function logf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L295>)


### T function name


```haxe
function name():stdgo.GoString
```


 


[\(view code\)](<./Testing.hx#L261>)


### T function new


```haxe
function new(?output:StringBuf):Void
```


 


[\(view code\)](<./Testing.hx#L256>)


### T function parallel


```haxe
function parallel():Void
```


 


[\(view code\)](<./Testing.hx#L297>)


### T function run


```haxe
function run(name:stdgo.GoString, f:()):Bool
```


 


[\(view code\)](<./Testing.hx#L299>)


### T function setenv


```haxe
function setenv(key:stdgo.GoString, value:stdgo.GoString):Void
```


 


[\(view code\)](<./Testing.hx#L303>)


### T function skip


```haxe
function skip(args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L305>)


### T function skipNow


```haxe
function skipNow():Void
```


 


[\(view code\)](<./Testing.hx#L307>)


### T function skipf


```haxe
function skipf(format:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Testing.hx#L309>)


### T function skipped


```haxe
function skipped():Bool
```


 


[\(view code\)](<./Testing.hx#L312>)


### T function tempDir


```haxe
function tempDir():stdgo.GoString
```


 


[\(view code\)](<./Testing.hx#L315>)


# Typedefs


```haxe
import stdgo.testing.*
```


## typedef TB


```haxe
typedef TB = var a:{<__underlying__> | ():stdgo.GoString | ():Bool | (_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void | ():Void | (_args:haxe.Rest<stdgo.AnyInterface>):Void | (_key:stdgo.GoString, _value:stdgo.GoString):Void | ():stdgo.GoString | (_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void | (_args:haxe.Rest<stdgo.AnyInterface>):Void | ():Void | (_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void | (_args:haxe.Rest<stdgo.AnyInterface>):Void | ():Bool | ():Void | ():Void | (_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void | (_args:haxe.Rest<stdgo.AnyInterface>):Void | (_0:():Void):Void | ():stdgo.AnyInterface}
```


 


## typedef T\_


```haxe
typedef T_ = var c:{<>}
```


 


## typedef T\_corpusEntry


```haxe
typedef T_corpusEntry = var a:{<data> | stdgo.Slice<stdgo.AnyInterface> | stdgo.GoString | stdgo.GoString | Bool | stdgo.GoInt | stdgo.Slice<stdgo.GoUInt8>}
```


 


## typedef T\_testDeps


```haxe
typedef T_testDeps = var a:{<__underlying__> | (_0:stdgo.GoString, _1:stdgo.io.Writer, _2:stdgo.GoInt):stdgo.Error | ():stdgo.Error | ():Void | (_0:stdgo.io.Writer):Void | (_0:stdgo.io.Writer):stdgo.Error | ():Void | (_0:Bool):Void | (_0:()):stdgo.Error | ():Void | (_0:stdgo.GoString, _1:stdgo.Slice<stdgo.reflect.Type>):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.testing.T_corpusEntry>} | (_pat:stdgo.GoString, _str:stdgo.GoString):{_1:stdgo.Error, _0:Bool} | ():stdgo.GoString | (_0:stdgo.time.Duration, _1:stdgo.GoInt64, _2:stdgo.time.Duration, _3:stdgo.GoInt64, _4:stdgo.GoInt, _5:stdgo.Slice<stdgo.testing.T_corpusEntry>, _6:stdgo.Slice<stdgo.reflect.Type>, _7:stdgo.GoString, _8:stdgo.GoString):stdgo.Error | (_0:stdgo.Slice<stdgo.AnyInterface>, _1:stdgo.Slice<stdgo.reflect.Type>):stdgo.Error | ():stdgo.AnyInterface}
```


 


