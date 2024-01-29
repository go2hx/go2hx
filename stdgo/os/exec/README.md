# Module: `stdgo.os.exec`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _addCriticalEnv(_env:stdgo.Slice<stdgo.GoString>):Void`](<#function-_addcriticalenv>)

- [`function _closeDescriptors(_closers:stdgo.Slice<stdgo._internal.io.Closer>):Void`](<#function-_closedescriptors>)

- [`function _dedupEnv(_env:stdgo.Slice<stdgo.GoString>):Void`](<#function-_dedupenv>)

- [`function _dedupEnvCase(_caseInsensitive:Bool, _nulOK:Bool, _env:stdgo.Slice<stdgo.GoString>):Void`](<#function-_dedupenvcase>)

- [`function _interfaceEqual(_a:stdgo.AnyInterface, _b:stdgo.AnyInterface):Void`](<#function-_interfaceequal>)

- [`function _lookExtensions(_path:stdgo.GoString, _dir:stdgo.GoString):Void`](<#function-_lookextensions>)

- [`function _minInt(_a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_minint>)

- [`function _skipStdinCopyError(_err:stdgo.Error):Void`](<#function-_skipstdincopyerror>)

- [`function benchmarkExecHostname(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkexechostname>)

- [`function command(_name:stdgo.GoString, _arg:haxe.Rest<stdgo.GoString>):Void`](<#function-command>)

- [`function commandContext(_ctx:stdgo._internal.context.Context, _name:stdgo.GoString, _arg:haxe.Rest<stdgo.GoString>):Void`](<#function-commandcontext>)

- [`function lookPath(_file:stdgo.GoString):Void`](<#function-lookpath>)

- [`function testDedupEnv(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdedupenv>)

- [`function testLookPathNotFound(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlookpathnotfound>)

- [`function testPrefixSuffixSaver(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testprefixsuffixsaver>)

- [typedef Cmd](<#typedef-cmd>)

- [typedef Cmd\_asInterface](<#typedef-cmd_asinterface>)

- [typedef Cmd\_static\_extension](<#typedef-cmd_static_extension>)

- [typedef Error](<#typedef-error>)

- [typedef Error\_asInterface](<#typedef-error_asinterface>)

- [typedef Error\_static\_extension](<#typedef-error_static_extension>)

- [typedef ExitError](<#typedef-exiterror>)

- [typedef ExitError\_asInterface](<#typedef-exiterror_asinterface>)

- [typedef ExitError\_static\_extension](<#typedef-exiterror_static_extension>)

- [typedef T\_ctxResult](<#typedef-t_ctxresult>)

- [typedef T\_prefixSuffixSaver](<#typedef-t_prefixsuffixsaver>)

- [typedef T\_prefixSuffixSaver\_asInterface](<#typedef-t_prefixsuffixsaver_asinterface>)

- [typedef T\_prefixSuffixSaver\_static\_extension](<#typedef-t_prefixsuffixsaver_static_extension>)

- [typedef T\_wrappedError](<#typedef-t_wrappederror>)

- [typedef T\_wrappedError\_asInterface](<#typedef-t_wrappederror_asinterface>)

- [typedef T\_wrappedError\_static\_extension](<#typedef-t_wrappederror_static_extension>)

# Variables


```haxe
import stdgo.os.exec.Exec
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _execerrdot:Dynamic
```


```haxe
var _execwait:Dynamic
```


```haxe
var _nonExistentPaths:Dynamic
```


```haxe
var errDot:Dynamic
```


```haxe
var errNotFound:Dynamic
```


```haxe
var errWaitDelay:Dynamic
```


# Functions


```haxe
import stdgo.os.exec.Exec
```


## function \_addCriticalEnv


```haxe
function _addCriticalEnv(_env:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Exec.hx#L25>)


## function \_closeDescriptors


```haxe
function _closeDescriptors(_closers:stdgo.Slice<stdgo._internal.io.Closer>):Void
```


[\(view code\)](<./Exec.hx#L20>)


## function \_dedupEnv


```haxe
function _dedupEnv(_env:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Exec.hx#L23>)


## function \_dedupEnvCase


```haxe
function _dedupEnvCase(_caseInsensitive:Bool, _nulOK:Bool, _env:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Exec.hx#L24>)


## function \_interfaceEqual


```haxe
function _interfaceEqual(_a:stdgo.AnyInterface, _b:stdgo.AnyInterface):Void
```


[\(view code\)](<./Exec.hx#L19>)


## function \_lookExtensions


```haxe
function _lookExtensions(_path:stdgo.GoString, _dir:stdgo.GoString):Void
```


[\(view code\)](<./Exec.hx#L21>)


## function \_minInt


```haxe
function _minInt(_a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Exec.hx#L22>)


## function \_skipStdinCopyError


```haxe
function _skipStdinCopyError(_err:stdgo.Error):Void
```


[\(view code\)](<./Exec.hx#L26>)


## function benchmarkExecHostname


```haxe
function benchmarkExecHostname(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Exec.hx#L15>)


## function command


```haxe
function command(_name:stdgo.GoString, _arg:haxe.Rest<stdgo.GoString>):Void
```


[\(view code\)](<./Exec.hx#L17>)


## function commandContext


```haxe
function commandContext(_ctx:stdgo._internal.context.Context, _name:stdgo.GoString, _arg:haxe.Rest<stdgo.GoString>):Void
```


[\(view code\)](<./Exec.hx#L18>)


## function lookPath


```haxe
function lookPath(_file:stdgo.GoString):Void
```


[\(view code\)](<./Exec.hx#L29>)


## function testDedupEnv


```haxe
function testDedupEnv(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Exec.hx#L16>)


## function testLookPathNotFound


```haxe
function testLookPathNotFound(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Exec.hx#L28>)


## function testPrefixSuffixSaver


```haxe
function testPrefixSuffixSaver(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Exec.hx#L27>)


# Typedefs


```haxe
import stdgo.os.exec.*
```


## typedef Cmd


```haxe
typedef Cmd = Dynamic;
```


## typedef Cmd\_asInterface


```haxe
typedef Cmd_asInterface = Dynamic;
```


## typedef Cmd\_static\_extension


```haxe
typedef Cmd_static_extension = Dynamic;
```


## typedef Error


```haxe
typedef Error = Dynamic;
```


## typedef Error\_asInterface


```haxe
typedef Error_asInterface = Dynamic;
```


## typedef Error\_static\_extension


```haxe
typedef Error_static_extension = Dynamic;
```


## typedef ExitError


```haxe
typedef ExitError = Dynamic;
```


## typedef ExitError\_asInterface


```haxe
typedef ExitError_asInterface = Dynamic;
```


## typedef ExitError\_static\_extension


```haxe
typedef ExitError_static_extension = Dynamic;
```


## typedef T\_ctxResult


```haxe
typedef T_ctxResult = Dynamic;
```


## typedef T\_prefixSuffixSaver


```haxe
typedef T_prefixSuffixSaver = Dynamic;
```


## typedef T\_prefixSuffixSaver\_asInterface


```haxe
typedef T_prefixSuffixSaver_asInterface = Dynamic;
```


## typedef T\_prefixSuffixSaver\_static\_extension


```haxe
typedef T_prefixSuffixSaver_static_extension = Dynamic;
```


## typedef T\_wrappedError


```haxe
typedef T_wrappedError = Dynamic;
```


## typedef T\_wrappedError\_asInterface


```haxe
typedef T_wrappedError_asInterface = Dynamic;
```


## typedef T\_wrappedError\_static\_extension


```haxe
typedef T_wrappedError_static_extension = Dynamic;
```


