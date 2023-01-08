# Module: `stdgo.testing.internal.testdeps`

[(view library index)](../../../stdgo.md)


# Overview


Package testdeps provides access to dependencies needed by test execution.��//��// This package is imported by the generated main package, which passes��// TestDeps into testing.Main. This allows tests to use packages at run time��// without making those packages direct dependencies of package testing.��// Direct dependencies of package testing are harder to write tests for. 


# Index


- [Variables](<#variables>)

- [class T\_testLog\_static\_extension](<#class-t_testlog_static_extension>)

  - [`function _add(_l:stdgo.Ref<stdgo.testing.internal.testdeps._Testdeps.T_testLog>, _op:stdgo.GoString, _name:stdgo.GoString):Void`](<#t_testlog_static_extension-function-_add>)

  - [`function chdir(_l:stdgo.Ref<stdgo.testing.internal.testdeps._Testdeps.T_testLog>, _name:stdgo.GoString):Void`](<#t_testlog_static_extension-function-chdir>)

  - [`function getenv(_l:stdgo.Ref<stdgo.testing.internal.testdeps._Testdeps.T_testLog>, _key:stdgo.GoString):Void`](<#t_testlog_static_extension-function-getenv>)

  - [`function open(_l:stdgo.Ref<stdgo.testing.internal.testdeps._Testdeps.T_testLog>, _name:stdgo.GoString):Void`](<#t_testlog_static_extension-function-open>)

  - [`function stat(_l:stdgo.Ref<stdgo.testing.internal.testdeps._Testdeps.T_testLog>, _name:stdgo.GoString):Void`](<#t_testlog_static_extension-function-stat>)

- [class TestDeps](<#class-testdeps>)

  - [`function new():Void`](<#testdeps-function-new>)

  - [`function checkCorpus( _vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo.reflect.Type>):stdgo.Error`](<#testdeps-function-checkcorpus>)

  - [`function coordinateFuzzing( _timeout:stdgo.time.Duration, _limit:stdgo.GoInt64, _minimizeTimeout:stdgo.time.Duration, _minimizeLimit:stdgo.GoInt64, _parallel:stdgo.GoInt, _seed:stdgo.Slice<{values:stdgo.Slice<stdgo.AnyInterface>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice<stdgo.GoUInt8>}>, _types:stdgo.Slice<stdgo.reflect.Type>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error`](<#testdeps-function-coordinatefuzzing>)

  - [`function importPath():stdgo.GoString`](<#testdeps-function-importpath>)

  - [`function matchString( _pat:stdgo.GoString, _str:stdgo.GoString):{_1:stdgo.Error, _0:Bool}`](<#testdeps-function-matchstring>)

  - [`function readCorpus( _dir:stdgo.GoString, _types:stdgo.Slice<stdgo.reflect.Type>):{_1:stdgo.Error, _0:stdgo.Slice<{values:stdgo.Slice<stdgo.AnyInterface>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice<stdgo.GoUInt8>}>}`](<#testdeps-function-readcorpus>)

  - [`function resetCoverage():Void`](<#testdeps-function-resetcoverage>)

  - [`function runFuzzWorker( _fn:()):stdgo.Error`](<#testdeps-function-runfuzzworker>)

  - [`function setPanicOnExit0( _v:Bool):Void`](<#testdeps-function-setpaniconexit0>)

  - [`function snapshotCoverage():Void`](<#testdeps-function-snapshotcoverage>)

  - [`function startCPUProfile( _w:stdgo.io.Writer):stdgo.Error`](<#testdeps-function-startcpuprofile>)

  - [`function startTestLog( _w:stdgo.io.Writer):Void`](<#testdeps-function-starttestlog>)

  - [`function stopCPUProfile():Void`](<#testdeps-function-stopcpuprofile>)

  - [`function stopTestLog():stdgo.Error`](<#testdeps-function-stoptestlog>)

  - [`function writeProfileTo( _name:stdgo.GoString, _w:stdgo.io.Writer, _debug:stdgo.GoInt):stdgo.Error`](<#testdeps-function-writeprofileto>)

- [class TestDeps\_static\_extension](<#class-testdeps_static_extension>)

  - [`function checkCorpus( _vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo.reflect.Type>):stdgo.Error`](<#testdeps_static_extension-function-checkcorpus>)

  - [`function coordinateFuzzing( _timeout:stdgo.time.Duration, _limit:stdgo.GoInt64, _minimizeTimeout:stdgo.time.Duration, _minimizeLimit:stdgo.GoInt64, _parallel:stdgo.GoInt, _seed:stdgo.Slice<{values:stdgo.Slice<stdgo.AnyInterface>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice<stdgo.GoUInt8>}>, _types:stdgo.Slice<stdgo.reflect.Type>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error`](<#testdeps_static_extension-function-coordinatefuzzing>)

  - [`function importPath():stdgo.GoString`](<#testdeps_static_extension-function-importpath>)

  - [`function matchString( _pat:stdgo.GoString, _str:stdgo.GoString):{_1:stdgo.Error, _0:Bool}`](<#testdeps_static_extension-function-matchstring>)

  - [`function readCorpus( _dir:stdgo.GoString, _types:stdgo.Slice<stdgo.reflect.Type>):{_1:stdgo.Error, _0:stdgo.Slice<{values:stdgo.Slice<stdgo.AnyInterface>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice<stdgo.GoUInt8>}>}`](<#testdeps_static_extension-function-readcorpus>)

  - [`function resetCoverage():Void`](<#testdeps_static_extension-function-resetcoverage>)

  - [`function runFuzzWorker( _fn:()):stdgo.Error`](<#testdeps_static_extension-function-runfuzzworker>)

  - [`function setPanicOnExit0( _v:Bool):Void`](<#testdeps_static_extension-function-setpaniconexit0>)

  - [`function snapshotCoverage():Void`](<#testdeps_static_extension-function-snapshotcoverage>)

  - [`function startCPUProfile( _w:stdgo.io.Writer):stdgo.Error`](<#testdeps_static_extension-function-startcpuprofile>)

  - [`function startTestLog( _w:stdgo.io.Writer):Void`](<#testdeps_static_extension-function-starttestlog>)

  - [`function stopCPUProfile():Void`](<#testdeps_static_extension-function-stopcpuprofile>)

  - [`function stopTestLog():stdgo.Error`](<#testdeps_static_extension-function-stoptestlog>)

  - [`function writeProfileTo( _name:stdgo.GoString, _w:stdgo.io.Writer, _debug:stdgo.GoInt):stdgo.Error`](<#testdeps_static_extension-function-writeprofileto>)

# Variables


```haxe
import stdgo.testing.internal.testdeps.Testdeps
```


```haxe
var importPath:stdgo.GoString
```


ImportPath is the import path of the testing binary, set by the generated main function. 


# Classes


```haxe
import stdgo.testing.internal.testdeps.*
```


## class T\_testLog\_static\_extension


 


### T\_testLog\_static\_extension function \_add


```haxe
function _add(_l:stdgo.Ref<stdgo.testing.internal.testdeps._Testdeps.T_testLog>, _op:stdgo.GoString, _name:stdgo.GoString):Void
```


add adds the \(op, name\) pair to the test log. 


[\(view code\)](<./Testdeps.hx#L298>)


### T\_testLog\_static\_extension function chdir


```haxe
function chdir(_l:stdgo.Ref<stdgo.testing.internal.testdeps._Testdeps.T_testLog>, _name:stdgo.GoString):Void
```


 


[\(view code\)](<./Testdeps.hx#L302>)


### T\_testLog\_static\_extension function getenv


```haxe
function getenv(_l:stdgo.Ref<stdgo.testing.internal.testdeps._Testdeps.T_testLog>, _key:stdgo.GoString):Void
```


 


[\(view code\)](<./Testdeps.hx#L314>)


### T\_testLog\_static\_extension function open


```haxe
function open(_l:stdgo.Ref<stdgo.testing.internal.testdeps._Testdeps.T_testLog>, _name:stdgo.GoString):Void
```


 


[\(view code\)](<./Testdeps.hx#L310>)


### T\_testLog\_static\_extension function stat


```haxe
function stat(_l:stdgo.Ref<stdgo.testing.internal.testdeps._Testdeps.T_testLog>, _name:stdgo.GoString):Void
```


 


[\(view code\)](<./Testdeps.hx#L306>)


## class TestDeps


TestDeps is an implementation of the testing.testDeps interface,��// suitable for passing to testing.MainStart. 


### TestDeps function new


```haxe
function new():Void
```


 


[\(view code\)](<./Testdeps.hx#L38>)


### TestDeps function checkCorpus


```haxe
function checkCorpus( _vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo.reflect.Type>):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L181>)


### TestDeps function coordinateFuzzing


```haxe
function coordinateFuzzing( _timeout:stdgo.time.Duration, _limit:stdgo.GoInt64, _minimizeTimeout:stdgo.time.Duration, _minimizeLimit:stdgo.GoInt64, _parallel:stdgo.GoInt, _seed:stdgo.Slice<{values:stdgo.Slice<stdgo.AnyInterface>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice<stdgo.GoUInt8>}>, _types:stdgo.Slice<stdgo.reflect.Type>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L216>)


### TestDeps function importPath


```haxe
function importPath():stdgo.GoString
```


 


[\(view code\)](<./Testdeps.hx#L235>)


### TestDeps function matchString


```haxe
function matchString( _pat:stdgo.GoString, _str:stdgo.GoString):{_1:stdgo.Error, _0:Bool}
```


 


[\(view code\)](<./Testdeps.hx#L251>)


### TestDeps function readCorpus


```haxe
function readCorpus( _dir:stdgo.GoString, _types:stdgo.Slice<stdgo.reflect.Type>):{_1:stdgo.Error, _0:stdgo.Slice<{values:stdgo.Slice<stdgo.AnyInterface>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice<stdgo.GoUInt8>}>}
```


 


[\(view code\)](<./Testdeps.hx#L192>)


### TestDeps function resetCoverage


```haxe
function resetCoverage():Void
```


 


[\(view code\)](<./Testdeps.hx#L177>)


### TestDeps function runFuzzWorker


```haxe
function runFuzzWorker( _fn:()):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L203>)


### TestDeps function setPanicOnExit0


```haxe
function setPanicOnExit0( _v:Bool):Void
```


SetPanicOnExit0 tells the os package whether to panic on os.Exit\(0\). 


[\(view code\)](<./Testdeps.hx#L223>)


### TestDeps function snapshotCoverage


```haxe
function snapshotCoverage():Void
```


 


[\(view code\)](<./Testdeps.hx#L173>)


### TestDeps function startCPUProfile


```haxe
function startCPUProfile( _w:stdgo.io.Writer):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L247>)


### TestDeps function startTestLog


```haxe
function startTestLog( _w:stdgo.io.Writer):Void
```


 


[\(view code\)](<./Testdeps.hx#L231>)


### TestDeps function stopCPUProfile


```haxe
function stopCPUProfile():Void
```


 


[\(view code\)](<./Testdeps.hx#L243>)


### TestDeps function stopTestLog


```haxe
function stopTestLog():stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L227>)


### TestDeps function writeProfileTo


```haxe
function writeProfileTo( _name:stdgo.GoString, _w:stdgo.io.Writer, _debug:stdgo.GoInt):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L239>)


## class TestDeps\_static\_extension


 


### TestDeps\_static\_extension function checkCorpus


```haxe
function checkCorpus( _vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo.reflect.Type>):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L181>)


### TestDeps\_static\_extension function coordinateFuzzing


```haxe
function coordinateFuzzing( _timeout:stdgo.time.Duration, _limit:stdgo.GoInt64, _minimizeTimeout:stdgo.time.Duration, _minimizeLimit:stdgo.GoInt64, _parallel:stdgo.GoInt, _seed:stdgo.Slice<{values:stdgo.Slice<stdgo.AnyInterface>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice<stdgo.GoUInt8>}>, _types:stdgo.Slice<stdgo.reflect.Type>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L216>)


### TestDeps\_static\_extension function importPath


```haxe
function importPath():stdgo.GoString
```


 


[\(view code\)](<./Testdeps.hx#L235>)


### TestDeps\_static\_extension function matchString


```haxe
function matchString( _pat:stdgo.GoString, _str:stdgo.GoString):{_1:stdgo.Error, _0:Bool}
```


 


[\(view code\)](<./Testdeps.hx#L251>)


### TestDeps\_static\_extension function readCorpus


```haxe
function readCorpus( _dir:stdgo.GoString, _types:stdgo.Slice<stdgo.reflect.Type>):{_1:stdgo.Error, _0:stdgo.Slice<{values:stdgo.Slice<stdgo.AnyInterface>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice<stdgo.GoUInt8>}>}
```


 


[\(view code\)](<./Testdeps.hx#L192>)


### TestDeps\_static\_extension function resetCoverage


```haxe
function resetCoverage():Void
```


 


[\(view code\)](<./Testdeps.hx#L177>)


### TestDeps\_static\_extension function runFuzzWorker


```haxe
function runFuzzWorker( _fn:()):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L203>)


### TestDeps\_static\_extension function setPanicOnExit0


```haxe
function setPanicOnExit0( _v:Bool):Void
```


SetPanicOnExit0 tells the os package whether to panic on os.Exit\(0\). 


[\(view code\)](<./Testdeps.hx#L223>)


### TestDeps\_static\_extension function snapshotCoverage


```haxe
function snapshotCoverage():Void
```


 


[\(view code\)](<./Testdeps.hx#L173>)


### TestDeps\_static\_extension function startCPUProfile


```haxe
function startCPUProfile( _w:stdgo.io.Writer):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L247>)


### TestDeps\_static\_extension function startTestLog


```haxe
function startTestLog( _w:stdgo.io.Writer):Void
```


 


[\(view code\)](<./Testdeps.hx#L231>)


### TestDeps\_static\_extension function stopCPUProfile


```haxe
function stopCPUProfile():Void
```


 


[\(view code\)](<./Testdeps.hx#L243>)


### TestDeps\_static\_extension function stopTestLog


```haxe
function stopTestLog():stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L227>)


### TestDeps\_static\_extension function writeProfileTo


```haxe
function writeProfileTo( _name:stdgo.GoString, _w:stdgo.io.Writer, _debug:stdgo.GoInt):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L239>)


