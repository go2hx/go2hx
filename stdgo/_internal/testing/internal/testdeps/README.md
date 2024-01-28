# Module: `stdgo._internal.testing.internal.testdeps`

[(view library index)](../../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [class TestDeps](<#class-testdeps>)

  - [`function new():Void`](<#testdeps-function-new>)

  - [`function checkCorpus( _vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo._internal.reflect.Type_>):stdgo.Error`](<#testdeps-function-checkcorpus>)

  - [`function coordinateFuzzing( _timeout:stdgo._internal.time.Duration, _limit:stdgo.GoInt64, _minimizeTimeout:stdgo._internal.time.Duration, _minimizeLimit:stdgo.GoInt64, _parallel:stdgo.GoInt, _seed:stdgo.Slice<{ values:stdgo.Slice<stdgo.AnyInterface>; path:stdgo.GoString; parent:stdgo.GoString; isSeed:Bool; generation:stdgo.GoInt; data:stdgo.Slice<stdgo.GoUInt8>;}>, _types:stdgo.Slice<stdgo._internal.reflect.Type_>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error`](<#testdeps-function-coordinatefuzzing>)

  - [`function importPath():stdgo.GoString`](<#testdeps-function-importpath>)

  - [`function matchString( _pat:stdgo.GoString, _str:stdgo.GoString):{ _1:stdgo.Error; _0:Bool;}`](<#testdeps-function-matchstring>)

  - [`function readCorpus( _dir:stdgo.GoString, _types:stdgo.Slice<stdgo._internal.reflect.Type_>):{ _1:stdgo.Error; _0:stdgo.Slice<{  values:stdgo.Slice<stdgo.AnyInterface>;  path:stdgo.GoString;  parent:stdgo.GoString;  isSeed:Bool;  generation:stdgo.GoInt;  data:stdgo.Slice<stdgo.GoUInt8>; }>;}`](<#testdeps-function-readcorpus>)

  - [`function resetCoverage():Void`](<#testdeps-function-resetcoverage>)

  - [`function runFuzzWorker( _fn:()):stdgo.Error`](<#testdeps-function-runfuzzworker>)

  - [`function setPanicOnExit0( _v:Bool):Void`](<#testdeps-function-setpaniconexit0>)

  - [`function snapshotCoverage():Void`](<#testdeps-function-snapshotcoverage>)

  - [`function startCPUProfile( _w:stdgo._internal.io.Writer):stdgo.Error`](<#testdeps-function-startcpuprofile>)

  - [`function startTestLog( _w:stdgo._internal.io.Writer):Void`](<#testdeps-function-starttestlog>)

  - [`function stopCPUProfile():Void`](<#testdeps-function-stopcpuprofile>)

  - [`function stopTestLog():stdgo.Error`](<#testdeps-function-stoptestlog>)

  - [`function writeProfileTo( _name:stdgo.GoString, _w:stdgo._internal.io.Writer, _debug:stdgo.GoInt):stdgo.Error`](<#testdeps-function-writeprofileto>)

# Variables


```haxe
import stdgo._internal.testing.internal.testdeps.Testdeps
```


```haxe
var _log:stdgo._internal.testing.internal.testdeps.T_testLog
```


```haxe
var _matchPat:stdgo.GoString
```


```haxe
var _matchRe:stdgo.Ref<stdgo._internal.regexp.Regexp>
```


```haxe
var importPath:stdgo.GoString
```


# Classes


```haxe
import stdgo._internal.testing.internal.testdeps.*
```


## class TestDeps


### TestDeps function new


```haxe
function new():Void
```


[\(view code\)](<./Testdeps.hx#L8>)


### TestDeps function checkCorpus


```haxe
function checkCorpus( _vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo._internal.reflect.Type_>):stdgo.Error
```


[\(view code\)](<./Testdeps.hx#L71>)


### TestDeps function coordinateFuzzing


```haxe
function coordinateFuzzing( _timeout:stdgo._internal.time.Duration, _limit:stdgo.GoInt64, _minimizeTimeout:stdgo._internal.time.Duration, _minimizeLimit:stdgo.GoInt64, _parallel:stdgo.GoInt, _seed:stdgo.Slice<{
	values:stdgo.Slice<stdgo.AnyInterface>;
	path:stdgo.GoString;
	parent:stdgo.GoString;
	isSeed:Bool;
	generation:stdgo.GoInt;
	data:stdgo.Slice<stdgo.GoUInt8>;
}>, _types:stdgo.Slice<stdgo._internal.reflect.Type_>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Testdeps.hx#L77>)


### TestDeps function importPath


```haxe
function importPath():stdgo.GoString
```


[\(view code\)](<./Testdeps.hx#L85>)


### TestDeps function matchString


```haxe
function matchString( _pat:stdgo.GoString, _str:stdgo.GoString):{
	_1:stdgo.Error;
	_0:Bool;
}
```


[\(view code\)](<./Testdeps.hx#L93>)


### TestDeps function readCorpus


```haxe
function readCorpus( _dir:stdgo.GoString, _types:stdgo.Slice<stdgo._internal.reflect.Type_>):{
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


[\(view code\)](<./Testdeps.hx#L73>)


### TestDeps function resetCoverage


```haxe
function resetCoverage():Void
```


[\(view code\)](<./Testdeps.hx#L69>)


### TestDeps function runFuzzWorker


```haxe
function runFuzzWorker( _fn:()):stdgo.Error
```


[\(view code\)](<./Testdeps.hx#L75>)


### TestDeps function setPanicOnExit0


```haxe
function setPanicOnExit0( _v:Bool):Void
```


[\(view code\)](<./Testdeps.hx#L79>)


### TestDeps function snapshotCoverage


```haxe
function snapshotCoverage():Void
```


[\(view code\)](<./Testdeps.hx#L67>)


### TestDeps function startCPUProfile


```haxe
function startCPUProfile( _w:stdgo._internal.io.Writer):stdgo.Error
```


[\(view code\)](<./Testdeps.hx#L91>)


### TestDeps function startTestLog


```haxe
function startTestLog( _w:stdgo._internal.io.Writer):Void
```


[\(view code\)](<./Testdeps.hx#L83>)


### TestDeps function stopCPUProfile


```haxe
function stopCPUProfile():Void
```


[\(view code\)](<./Testdeps.hx#L89>)


### TestDeps function stopTestLog


```haxe
function stopTestLog():stdgo.Error
```


[\(view code\)](<./Testdeps.hx#L81>)


### TestDeps function writeProfileTo


```haxe
function writeProfileTo( _name:stdgo.GoString, _w:stdgo._internal.io.Writer, _debug:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Testdeps.hx#L87>)


