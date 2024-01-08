# Module: `stdgo.testing.internal.testdeps`

[(view library index)](../../../stdgo.md)


# Overview



Package testdeps provides access to dependencies needed by test execution.  


This package is imported by the generated main package, which passes
TestDeps into testing.Main. This allows tests to use packages at run time
without making those packages direct dependencies of package testing.
Direct dependencies of package testing are harder to write tests for.  

# Index


- [Variables](<#variables>)

- [class TestDeps](<#class-testdeps>)

  - [`function new():Void`](<#testdeps-function-new>)

  - [`function checkCorpus( _vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo.reflect.Type_>):stdgo.Error`](<#testdeps-function-checkcorpus>)

  - [`function coordinateFuzzing( _timeout:stdgo.time.Duration, _limit:stdgo.GoInt64, _minimizeTimeout:stdgo.time.Duration, _minimizeLimit:stdgo.GoInt64, _parallel:stdgo.GoInt, _seed:stdgo.Slice<{ values:stdgo.Slice<stdgo.AnyInterface>; path:stdgo.GoString; parent:stdgo.GoString; isSeed:Bool; generation:stdgo.GoInt; data:stdgo.Slice<stdgo.GoUInt8>;}>, _types:stdgo.Slice<stdgo.reflect.Type_>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error`](<#testdeps-function-coordinatefuzzing>)

  - [`function importPath():stdgo.GoString`](<#testdeps-function-importpath>)

  - [`function matchString( _pat:stdgo.GoString, _str:stdgo.GoString):{ _1:stdgo.Error; _0:Bool;}`](<#testdeps-function-matchstring>)

  - [`function readCorpus( _dir:stdgo.GoString, _types:stdgo.Slice<stdgo.reflect.Type_>):{ _1:stdgo.Error; _0:stdgo.Slice<{  values:stdgo.Slice<stdgo.AnyInterface>;  path:stdgo.GoString;  parent:stdgo.GoString;  isSeed:Bool;  generation:stdgo.GoInt;  data:stdgo.Slice<stdgo.GoUInt8>; }>;}`](<#testdeps-function-readcorpus>)

  - [`function resetCoverage():Void`](<#testdeps-function-resetcoverage>)

  - [`function runFuzzWorker( _fn:()):stdgo.Error`](<#testdeps-function-runfuzzworker>)

  - [`function setPanicOnExit0( _v:Bool):Void`](<#testdeps-function-setpaniconexit0>)

  - [`function snapshotCoverage():Void`](<#testdeps-function-snapshotcoverage>)

  - [`function startCPUProfile( _w:stdgo.io.Writer):stdgo.Error`](<#testdeps-function-startcpuprofile>)

  - [`function startTestLog( _w:stdgo.io.Writer):Void`](<#testdeps-function-starttestlog>)

  - [`function stopCPUProfile():Void`](<#testdeps-function-stopcpuprofile>)

  - [`function stopTestLog():stdgo.Error`](<#testdeps-function-stoptestlog>)

  - [`function writeProfileTo( _name:stdgo.GoString, _w:stdgo.io.Writer, _debug:stdgo.GoInt):stdgo.Error`](<#testdeps-function-writeprofileto>)

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
var _matchRe:stdgo.Ref<stdgo.regexp.Regexp>
```


```haxe
var importPath:stdgo.GoString
```



ImportPath is the import path of the testing binary, set by the generated main function.  

# Classes


```haxe
import stdgo.testing.internal.testdeps.*
```


## class TestDeps



TestDeps is an implementation of the testing.testDeps interface,
suitable for passing to testing.MainStart.  

### TestDeps function new


```haxe
function new():Void
```


[\(view code\)](<./Testdeps.hx#L42>)


### TestDeps function checkCorpus


```haxe
function checkCorpus( _vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo.reflect.Type_>):stdgo.Error
```


[\(view code\)](<./Testdeps.hx#L113>)


### TestDeps function coordinateFuzzing


```haxe
function coordinateFuzzing( _timeout:stdgo.time.Duration, _limit:stdgo.GoInt64, _minimizeTimeout:stdgo.time.Duration, _minimizeLimit:stdgo.GoInt64, _parallel:stdgo.GoInt, _seed:stdgo.Slice<{
	values:stdgo.Slice<stdgo.AnyInterface>;
	path:stdgo.GoString;
	parent:stdgo.GoString;
	isSeed:Bool;
	generation:stdgo.GoInt;
	data:stdgo.Slice<stdgo.GoUInt8>;
}>, _types:stdgo.Slice<stdgo.reflect.Type_>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Testdeps.hx#L119>)


### TestDeps function importPath


```haxe
function importPath():stdgo.GoString
```


[\(view code\)](<./Testdeps.hx#L130>)


### TestDeps function matchString


```haxe
function matchString( _pat:stdgo.GoString, _str:stdgo.GoString):{
	_1:stdgo.Error;
	_0:Bool;
}
```


[\(view code\)](<./Testdeps.hx#L138>)


### TestDeps function readCorpus


```haxe
function readCorpus( _dir:stdgo.GoString, _types:stdgo.Slice<stdgo.reflect.Type_>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<{
		values:stdgo.Slice<stdgo.AnyInterface>;
		path:stdgo.GoString;
		parent:stdgo.GoString;
		isSeed:Bool;
		generation:stdgo.GoInt;
		data:stdgo.Slice<stdgo.GoUInt8>;
	}>;
}
```


[\(view code\)](<./Testdeps.hx#L115>)


### TestDeps function resetCoverage


```haxe
function resetCoverage():Void
```


[\(view code\)](<./Testdeps.hx#L111>)


### TestDeps function runFuzzWorker


```haxe
function runFuzzWorker( _fn:()):stdgo.Error
```


[\(view code\)](<./Testdeps.hx#L117>)


### TestDeps function setPanicOnExit0


```haxe
function setPanicOnExit0( _v:Bool):Void
```



SetPanicOnExit0 tells the os package whether to panic on os.Exit\(0\).  

[\(view code\)](<./Testdeps.hx#L124>)


### TestDeps function snapshotCoverage


```haxe
function snapshotCoverage():Void
```


[\(view code\)](<./Testdeps.hx#L109>)


### TestDeps function startCPUProfile


```haxe
function startCPUProfile( _w:stdgo.io.Writer):stdgo.Error
```


[\(view code\)](<./Testdeps.hx#L136>)


### TestDeps function startTestLog


```haxe
function startTestLog( _w:stdgo.io.Writer):Void
```


[\(view code\)](<./Testdeps.hx#L128>)


### TestDeps function stopCPUProfile


```haxe
function stopCPUProfile():Void
```


[\(view code\)](<./Testdeps.hx#L134>)


### TestDeps function stopTestLog


```haxe
function stopTestLog():stdgo.Error
```


[\(view code\)](<./Testdeps.hx#L126>)


### TestDeps function writeProfileTo


```haxe
function writeProfileTo( _name:stdgo.GoString, _w:stdgo.io.Writer, _debug:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Testdeps.hx#L132>)


