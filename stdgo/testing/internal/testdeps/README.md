# Module: stdgo.testing.internal.testdeps


[(view library index)](../../../stdgo.md)


# Overview


 


# Index


- [Variables](<#variables>)

- [class T\_testLog](<#class-t_testlog>)

  - [function new\(?\_mu:stdgo.sync.Mutex, ?\_w:\{\<unknown\>\}, ?\_set:Bool\):Void](<#t_testlog-function-new>)

  - [function \_add\( \_op:stdgo.GoString, \_name:stdgo.GoString\):Void](<#t_testlog-function-_add>)

  - [function chdir\( \_name:stdgo.GoString\):Void](<#t_testlog-function-chdir>)

  - [function getenv\( \_key:stdgo.GoString\):Void](<#t_testlog-function-getenv>)

  - [function open\( \_name:stdgo.GoString\):Void](<#t_testlog-function-open>)

  - [function stat\( \_name:stdgo.GoString\):Void](<#t_testlog-function-stat>)

- [class T\_testLog\_static\_extension](<#class-t_testlog_static_extension>)

  - [function \_add\( \_op:stdgo.GoString, \_name:stdgo.GoString\):Void](<#t_testlog_static_extension-function-_add>)

  - [function chdir\( \_name:stdgo.GoString\):Void](<#t_testlog_static_extension-function-chdir>)

  - [function getenv\( \_key:stdgo.GoString\):Void](<#t_testlog_static_extension-function-getenv>)

  - [function open\( \_name:stdgo.GoString\):Void](<#t_testlog_static_extension-function-open>)

  - [function stat\( \_name:stdgo.GoString\):Void](<#t_testlog_static_extension-function-stat>)

- [class T\_testLog\_wrapper](<#class-t_testlog_wrapper>)

  - [function \_add\(:stdgo.GoString, :stdgo.GoString\):Void](<#t_testlog_wrapper-function-_add>)

  - [function chdir\(\)](<#t_testlog_wrapper-function-chdir>)

  - [function getenv\(\)](<#t_testlog_wrapper-function-getenv>)

  - [function new\(\_\_self\_\_:stdgo.testing.internal.testdeps.T\_testLog\):Void](<#t_testlog_wrapper-function-new>)

  - [function open\(\)](<#t_testlog_wrapper-function-open>)

  - [function stat\(\)](<#t_testlog_wrapper-function-stat>)

- [class TestDeps](<#class-testdeps>)

  - [function new\(\):Void](<#testdeps-function-new>)

  - [function checkCorpus\( \_vals:stdgo.Slice\<stdgo.AnyInterface\>, \_types:stdgo.Slice\<stdgo.reflect.Type\>\):stdgo.Error](<#testdeps-function-checkcorpus>)

  - [function coordinateFuzzing\( \_timeout:stdgo.time.Duration, \_limit:stdgo.GoInt64, \_minimizeTimeout:stdgo.time.Duration, \_minimizeLimit:stdgo.GoInt64, \_parallel:stdgo.GoInt, \_seed:stdgo.Slice\<\{values:stdgo.Slice\<stdgo.AnyInterface\>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice\<stdgo.GoUInt8\>\}\>, \_types:stdgo.Slice\<stdgo.reflect.Type\>, \_corpusDir:stdgo.GoString, \_cacheDir:stdgo.GoString\):stdgo.Error](<#testdeps-function-coordinatefuzzing>)

  - [function importPath\(\):stdgo.GoString](<#testdeps-function-importpath>)

  - [function matchString\( \_pat:stdgo.GoString, \_str:stdgo.GoString\):\{\_1:stdgo.Error, \_0:Bool\}](<#testdeps-function-matchstring>)

  - [function readCorpus\( \_dir:stdgo.GoString, \_types:stdgo.Slice\<stdgo.reflect.Type\>\):\{\_1:stdgo.Error, \_0:stdgo.Slice\<\{values:stdgo.Slice\<stdgo.AnyInterface\>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice\<stdgo.GoUInt8\>\}\>\}](<#testdeps-function-readcorpus>)

  - [function resetCoverage\(\):Void](<#testdeps-function-resetcoverage>)

  - [function runFuzzWorker\( \_fn:\(\)\):stdgo.Error](<#testdeps-function-runfuzzworker>)

  - [function setPanicOnExit0\( \_v:Bool\):Void](<#testdeps-function-setpaniconexit0>)

  - [function snapshotCoverage\(\):Void](<#testdeps-function-snapshotcoverage>)

  - [function startCPUProfile\( \_w:stdgo.io.Writer\):stdgo.Error](<#testdeps-function-startcpuprofile>)

  - [function startTestLog\( \_w:stdgo.io.Writer\):Void](<#testdeps-function-starttestlog>)

  - [function stopCPUProfile\(\):Void](<#testdeps-function-stopcpuprofile>)

  - [function stopTestLog\(\):stdgo.Error](<#testdeps-function-stoptestlog>)

  - [function writeProfileTo\( \_name:stdgo.GoString, \_w:stdgo.io.Writer, \_debug:stdgo.GoInt\):stdgo.Error](<#testdeps-function-writeprofileto>)

- [class TestDeps\_static\_extension](<#class-testdeps_static_extension>)

  - [function checkCorpus\( \_vals:stdgo.Slice\<stdgo.AnyInterface\>, \_types:stdgo.Slice\<stdgo.reflect.Type\>\):stdgo.Error](<#testdeps_static_extension-function-checkcorpus>)

  - [function coordinateFuzzing\( \_timeout:stdgo.time.Duration, \_limit:stdgo.GoInt64, \_minimizeTimeout:stdgo.time.Duration, \_minimizeLimit:stdgo.GoInt64, \_parallel:stdgo.GoInt, \_seed:stdgo.Slice\<\{values:stdgo.Slice\<stdgo.AnyInterface\>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice\<stdgo.GoUInt8\>\}\>, \_types:stdgo.Slice\<stdgo.reflect.Type\>, \_corpusDir:stdgo.GoString, \_cacheDir:stdgo.GoString\):stdgo.Error](<#testdeps_static_extension-function-coordinatefuzzing>)

  - [function importPath\(\):stdgo.GoString](<#testdeps_static_extension-function-importpath>)

  - [function matchString\( \_pat:stdgo.GoString, \_str:stdgo.GoString\):\{\_1:stdgo.Error, \_0:Bool\}](<#testdeps_static_extension-function-matchstring>)

  - [function readCorpus\( \_dir:stdgo.GoString, \_types:stdgo.Slice\<stdgo.reflect.Type\>\):\{\_1:stdgo.Error, \_0:stdgo.Slice\<\{values:stdgo.Slice\<stdgo.AnyInterface\>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice\<stdgo.GoUInt8\>\}\>\}](<#testdeps_static_extension-function-readcorpus>)

  - [function resetCoverage\(\):Void](<#testdeps_static_extension-function-resetcoverage>)

  - [function runFuzzWorker\( \_fn:\(\)\):stdgo.Error](<#testdeps_static_extension-function-runfuzzworker>)

  - [function setPanicOnExit0\( \_v:Bool\):Void](<#testdeps_static_extension-function-setpaniconexit0>)

  - [function snapshotCoverage\(\):Void](<#testdeps_static_extension-function-snapshotcoverage>)

  - [function startCPUProfile\( \_w:stdgo.io.Writer\):stdgo.Error](<#testdeps_static_extension-function-startcpuprofile>)

  - [function startTestLog\( \_w:stdgo.io.Writer\):Void](<#testdeps_static_extension-function-starttestlog>)

  - [function stopCPUProfile\(\):Void](<#testdeps_static_extension-function-stopcpuprofile>)

  - [function stopTestLog\(\):stdgo.Error](<#testdeps_static_extension-function-stoptestlog>)

  - [function writeProfileTo\( \_name:stdgo.GoString, \_w:stdgo.io.Writer, \_debug:stdgo.GoInt\):stdgo.Error](<#testdeps_static_extension-function-writeprofileto>)

# Variables


```haxe
import stdgo.testing.internal.testdeps.Testdeps
```


```haxe
var _log:stdgo.testing.internal.testdeps.T_testLog
```


```haxe
var _matchPat:stdgo.GoString
```


```haxe
var importPath:stdgo.GoString
```


# Classes


```haxe
import stdgo.testing.internal.testdeps.*
```


## class T\_testLog


 


```haxe
var _mu:stdgo.sync.Mutex
```


```haxe
var _set:Bool
```


```haxe
var _w:Dynamic
```


### T\_testLog function new


```haxe
function new(?_mu:stdgo.sync.Mutex, ?_w:{<unknown>}, ?_set:Bool):Void
```


 


[\(view code\)](<./Testdeps.hx#L27>)


### T\_testLog function \_add


```haxe
function _add( _op:stdgo.GoString, _name:stdgo.GoString):Void
```


add adds the \(op, name\) pair to the test log. 


[\(view code\)](<./Testdeps.hx#L218>)


### T\_testLog function chdir


```haxe
function chdir( _name:stdgo.GoString):Void
```


 


[\(view code\)](<./Testdeps.hx#L222>)


### T\_testLog function getenv


```haxe
function getenv( _key:stdgo.GoString):Void
```


 


[\(view code\)](<./Testdeps.hx#L234>)


### T\_testLog function open


```haxe
function open( _name:stdgo.GoString):Void
```


 


[\(view code\)](<./Testdeps.hx#L230>)


### T\_testLog function stat


```haxe
function stat( _name:stdgo.GoString):Void
```


 


[\(view code\)](<./Testdeps.hx#L226>)


## class T\_testLog\_static\_extension


 


### T\_testLog\_static\_extension function \_add


```haxe
function _add( _op:stdgo.GoString, _name:stdgo.GoString):Void
```


add adds the \(op, name\) pair to the test log. 


[\(view code\)](<./Testdeps.hx#L218>)


### T\_testLog\_static\_extension function chdir


```haxe
function chdir( _name:stdgo.GoString):Void
```


 


[\(view code\)](<./Testdeps.hx#L222>)


### T\_testLog\_static\_extension function getenv


```haxe
function getenv( _key:stdgo.GoString):Void
```


 


[\(view code\)](<./Testdeps.hx#L234>)


### T\_testLog\_static\_extension function open


```haxe
function open( _name:stdgo.GoString):Void
```


 


[\(view code\)](<./Testdeps.hx#L230>)


### T\_testLog\_static\_extension function stat


```haxe
function stat( _name:stdgo.GoString):Void
```


 


[\(view code\)](<./Testdeps.hx#L226>)


## class T\_testLog\_wrapper


 


### T\_testLog\_wrapper function \_add


```haxe
function _add(:stdgo.GoString, :stdgo.GoString):Void
```


add adds the \(op, name\) pair to the test log. 


### T\_testLog\_wrapper function chdir


```haxe
function chdir()
```


 


### T\_testLog\_wrapper function getenv


```haxe
function getenv()
```


 


### T\_testLog\_wrapper function new


```haxe
function new(__self__:stdgo.testing.internal.testdeps.T_testLog):Void
```


 


[\(view code\)](<./Testdeps.hx#L253>)


### T\_testLog\_wrapper function open


```haxe
function open()
```


 


### T\_testLog\_wrapper function stat


```haxe
function stat()
```


 


## class TestDeps


 


### TestDeps function new


```haxe
function new():Void
```


 


[\(view code\)](<./Testdeps.hx#L12>)


### TestDeps function checkCorpus


```haxe
function checkCorpus( _vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo.reflect.Type>):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L55>)


### TestDeps function coordinateFuzzing


```haxe
function coordinateFuzzing( _timeout:stdgo.time.Duration, _limit:stdgo.GoInt64, _minimizeTimeout:stdgo.time.Duration, _minimizeLimit:stdgo.GoInt64, _parallel:stdgo.GoInt, _seed:stdgo.Slice<{values:stdgo.Slice<stdgo.AnyInterface>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice<stdgo.GoUInt8>}>, _types:stdgo.Slice<stdgo.reflect.Type>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L103>)


### TestDeps function importPath


```haxe
function importPath():stdgo.GoString
```


 


[\(view code\)](<./Testdeps.hx#L122>)


### TestDeps function matchString


```haxe
function matchString( _pat:stdgo.GoString, _str:stdgo.GoString):{_1:stdgo.Error, _0:Bool}
```


 


[\(view code\)](<./Testdeps.hx#L138>)


### TestDeps function readCorpus


```haxe
function readCorpus( _dir:stdgo.GoString, _types:stdgo.Slice<stdgo.reflect.Type>):{_1:stdgo.Error, _0:stdgo.Slice<{values:stdgo.Slice<stdgo.AnyInterface>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice<stdgo.GoUInt8>}>}
```


 


[\(view code\)](<./Testdeps.hx#L69>)


### TestDeps function resetCoverage


```haxe
function resetCoverage():Void
```


 


[\(view code\)](<./Testdeps.hx#L51>)


### TestDeps function runFuzzWorker


```haxe
function runFuzzWorker( _fn:()):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L90>)


### TestDeps function setPanicOnExit0


```haxe
function setPanicOnExit0( _v:Bool):Void
```


SetPanicOnExit0 tells the os package whether to panic on os.Exit\(0\). 


[\(view code\)](<./Testdeps.hx#L110>)


### TestDeps function snapshotCoverage


```haxe
function snapshotCoverage():Void
```


 


[\(view code\)](<./Testdeps.hx#L47>)


### TestDeps function startCPUProfile


```haxe
function startCPUProfile( _w:stdgo.io.Writer):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L134>)


### TestDeps function startTestLog


```haxe
function startTestLog( _w:stdgo.io.Writer):Void
```


 


[\(view code\)](<./Testdeps.hx#L118>)


### TestDeps function stopCPUProfile


```haxe
function stopCPUProfile():Void
```


 


[\(view code\)](<./Testdeps.hx#L130>)


### TestDeps function stopTestLog


```haxe
function stopTestLog():stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L114>)


### TestDeps function writeProfileTo


```haxe
function writeProfileTo( _name:stdgo.GoString, _w:stdgo.io.Writer, _debug:stdgo.GoInt):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L126>)


## class TestDeps\_static\_extension


 


### TestDeps\_static\_extension function checkCorpus


```haxe
function checkCorpus( _vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo.reflect.Type>):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L55>)


### TestDeps\_static\_extension function coordinateFuzzing


```haxe
function coordinateFuzzing( _timeout:stdgo.time.Duration, _limit:stdgo.GoInt64, _minimizeTimeout:stdgo.time.Duration, _minimizeLimit:stdgo.GoInt64, _parallel:stdgo.GoInt, _seed:stdgo.Slice<{values:stdgo.Slice<stdgo.AnyInterface>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice<stdgo.GoUInt8>}>, _types:stdgo.Slice<stdgo.reflect.Type>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L103>)


### TestDeps\_static\_extension function importPath


```haxe
function importPath():stdgo.GoString
```


 


[\(view code\)](<./Testdeps.hx#L122>)


### TestDeps\_static\_extension function matchString


```haxe
function matchString( _pat:stdgo.GoString, _str:stdgo.GoString):{_1:stdgo.Error, _0:Bool}
```


 


[\(view code\)](<./Testdeps.hx#L138>)


### TestDeps\_static\_extension function readCorpus


```haxe
function readCorpus( _dir:stdgo.GoString, _types:stdgo.Slice<stdgo.reflect.Type>):{_1:stdgo.Error, _0:stdgo.Slice<{values:stdgo.Slice<stdgo.AnyInterface>, path:stdgo.GoString, parent:stdgo.GoString, isSeed:Bool, generation:stdgo.GoInt, data:stdgo.Slice<stdgo.GoUInt8>}>}
```


 


[\(view code\)](<./Testdeps.hx#L69>)


### TestDeps\_static\_extension function resetCoverage


```haxe
function resetCoverage():Void
```


 


[\(view code\)](<./Testdeps.hx#L51>)


### TestDeps\_static\_extension function runFuzzWorker


```haxe
function runFuzzWorker( _fn:()):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L90>)


### TestDeps\_static\_extension function setPanicOnExit0


```haxe
function setPanicOnExit0( _v:Bool):Void
```


SetPanicOnExit0 tells the os package whether to panic on os.Exit\(0\). 


[\(view code\)](<./Testdeps.hx#L110>)


### TestDeps\_static\_extension function snapshotCoverage


```haxe
function snapshotCoverage():Void
```


 


[\(view code\)](<./Testdeps.hx#L47>)


### TestDeps\_static\_extension function startCPUProfile


```haxe
function startCPUProfile( _w:stdgo.io.Writer):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L134>)


### TestDeps\_static\_extension function startTestLog


```haxe
function startTestLog( _w:stdgo.io.Writer):Void
```


 


[\(view code\)](<./Testdeps.hx#L118>)


### TestDeps\_static\_extension function stopCPUProfile


```haxe
function stopCPUProfile():Void
```


 


[\(view code\)](<./Testdeps.hx#L130>)


### TestDeps\_static\_extension function stopTestLog


```haxe
function stopTestLog():stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L114>)


### TestDeps\_static\_extension function writeProfileTo


```haxe
function writeProfileTo( _name:stdgo.GoString, _w:stdgo.io.Writer, _debug:stdgo.GoInt):stdgo.Error
```


 


[\(view code\)](<./Testdeps.hx#L126>)


