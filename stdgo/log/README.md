# Module: `stdgo.log`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _formatHeader(_buf:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>, _t:stdgo._internal.time.Time, _prefix:stdgo.GoString, _flag:stdgo.GoInt, _file:stdgo.GoString, _line:stdgo.GoInt):Void`](<#function-_formatheader>)

- [`function _getBuffer():Void`](<#function-_getbuffer>)

- [`function _itoa(_buf:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>, _i:stdgo.GoInt, _wid:stdgo.GoInt):Void`](<#function-_itoa>)

- [`function _putBuffer(_p:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>):Void`](<#function-_putbuffer>)

- [`function _testPrint(_t:stdgo.Ref<stdgo._internal.testing.T_>, _flag:stdgo.GoInt, _prefix:stdgo.GoString, _pattern:stdgo.GoString, _useFormat:Bool):Void`](<#function-_testprint>)

- [`function benchmarkConcurrent(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkconcurrent>)

- [`function benchmarkDiscard(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdiscard>)

- [`function benchmarkItoa(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkitoa>)

- [`function benchmarkPrintln(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkprintln>)

- [`function benchmarkPrintlnNoFlags(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkprintlnnoflags>)

- [`function default_():Void`](<#function-default_>)

- [`function fatal(_v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-fatal>)

- [`function fatalf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-fatalf>)

- [`function fatalln(_v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-fatalln>)

- [`function flags():Void`](<#function-flags>)

- [`function new_(_out:stdgo._internal.io.Writer, _prefix:stdgo.GoString, _flag:stdgo.GoInt):Void`](<#function-new_>)

- [`function output(_calldepth:stdgo.GoInt, _s:stdgo.GoString):Void`](<#function-output>)

- [`function panic(_v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-panic>)

- [`function panicf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-panicf>)

- [`function panicln(_v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-panicln>)

- [`function prefix():Void`](<#function-prefix>)

- [`function print(_v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-print>)

- [`function printf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-printf>)

- [`function println(_v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-println>)

- [`function setFlags(_flag:stdgo.GoInt):Void`](<#function-setflags>)

- [`function setOutput(_w:stdgo._internal.io.Writer):Void`](<#function-setoutput>)

- [`function setPrefix(_prefix:stdgo.GoString):Void`](<#function-setprefix>)

- [`function testAll(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testall>)

- [`function testDefault(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdefault>)

- [`function testDiscard(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdiscard>)

- [`function testEmptyPrintCreatesLine(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testemptyprintcreatesline>)

- [`function testFlagAndPrefixSetting(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testflagandprefixsetting>)

- [`function testNonNewLogger(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnonnewlogger>)

- [`function testOutput(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testoutput>)

- [`function testOutputRace(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testoutputrace>)

- [`function testUTCFlag(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testutcflag>)

- [`function writer():Void`](<#function-writer>)

- [typedef Logger](<#typedef-logger>)

- [typedef Logger\_asInterface](<#typedef-logger_asinterface>)

- [typedef Logger\_static\_extension](<#typedef-logger_static_extension>)

- [typedef T\_discard](<#typedef-t_discard>)

- [typedef T\_discard\_asInterface](<#typedef-t_discard_asinterface>)

- [typedef T\_discard\_static\_extension](<#typedef-t_discard_static_extension>)

- [typedef T\_tester](<#typedef-t_tester>)

# Variables


```haxe
import stdgo.log.Log
```


```haxe
var _:Dynamic
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _bufferPool:Dynamic
```


```haxe
var _std:Dynamic
```


```haxe
var _tests:Dynamic
```


```haxe
var ldate:Dynamic
```


```haxe
var llongfile:Dynamic
```


```haxe
var lmicroseconds:Dynamic
```


```haxe
var lmsgprefix:Dynamic
```


```haxe
var lshortfile:Dynamic
```


```haxe
var lstdFlags:Dynamic
```


```haxe
var ltime:Dynamic
```


```haxe
var lutc:Dynamic
```


```haxe
var rdate:Dynamic
```


```haxe
var rline:Dynamic
```


```haxe
var rlongfile:Dynamic
```


```haxe
var rmicroseconds:Dynamic
```


```haxe
var rshortfile:Dynamic
```


```haxe
var rtime:Dynamic
```


# Functions


```haxe
import stdgo.log.Log
```


## function \_formatHeader


```haxe
function _formatHeader(_buf:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>, _t:stdgo._internal.time.Time, _prefix:stdgo.GoString, _flag:stdgo.GoInt, _file:stdgo.GoString, _line:stdgo.GoInt):Void
```


[\(view code\)](<./Log.hx#L26>)


## function \_getBuffer


```haxe
function _getBuffer():Void
```


[\(view code\)](<./Log.hx#L27>)


## function \_itoa


```haxe
function _itoa(_buf:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>, _i:stdgo.GoInt, _wid:stdgo.GoInt):Void
```


[\(view code\)](<./Log.hx#L25>)


## function \_putBuffer


```haxe
function _putBuffer(_p:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>):Void
```


[\(view code\)](<./Log.hx#L28>)


## function \_testPrint


```haxe
function _testPrint(_t:stdgo.Ref<stdgo._internal.testing.T_>, _flag:stdgo.GoInt, _prefix:stdgo.GoString, _pattern:stdgo.GoString, _useFormat:Bool):Void
```


[\(view code\)](<./Log.hx#L45>)


## function benchmarkConcurrent


```haxe
function benchmarkConcurrent(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Log.hx#L58>)


## function benchmarkDiscard


```haxe
function benchmarkDiscard(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Log.hx#L59>)


## function benchmarkItoa


```haxe
function benchmarkItoa(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Log.hx#L55>)


## function benchmarkPrintln


```haxe
function benchmarkPrintln(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Log.hx#L56>)


## function benchmarkPrintlnNoFlags


```haxe
function benchmarkPrintlnNoFlags(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Log.hx#L57>)


## function default\_


```haxe
function default_():Void
```


[\(view code\)](<./Log.hx#L24>)


## function fatal


```haxe
function fatal(_v:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Log.hx#L38>)


## function fatalf


```haxe
function fatalf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Log.hx#L39>)


## function fatalln


```haxe
function fatalln(_v:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Log.hx#L40>)


## function flags


```haxe
function flags():Void
```


[\(view code\)](<./Log.hx#L30>)


## function new\_


```haxe
function new_(_out:stdgo._internal.io.Writer, _prefix:stdgo.GoString, _flag:stdgo.GoInt):Void
```


[\(view code\)](<./Log.hx#L23>)


## function output


```haxe
function output(_calldepth:stdgo.GoInt, _s:stdgo.GoString):Void
```


[\(view code\)](<./Log.hx#L44>)


## function panic


```haxe
function panic(_v:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Log.hx#L41>)


## function panicf


```haxe
function panicf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Log.hx#L42>)


## function panicln


```haxe
function panicln(_v:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Log.hx#L43>)


## function prefix


```haxe
function prefix():Void
```


[\(view code\)](<./Log.hx#L32>)


## function print


```haxe
function print(_v:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Log.hx#L35>)


## function printf


```haxe
function printf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Log.hx#L36>)


## function println


```haxe
function println(_v:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Log.hx#L37>)


## function setFlags


```haxe
function setFlags(_flag:stdgo.GoInt):Void
```


[\(view code\)](<./Log.hx#L31>)


## function setOutput


```haxe
function setOutput(_w:stdgo._internal.io.Writer):Void
```


[\(view code\)](<./Log.hx#L29>)


## function setPrefix


```haxe
function setPrefix(_prefix:stdgo.GoString):Void
```


[\(view code\)](<./Log.hx#L33>)


## function testAll


```haxe
function testAll(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Log.hx#L47>)


## function testDefault


```haxe
function testDefault(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Log.hx#L46>)


## function testDiscard


```haxe
function testDiscard(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Log.hx#L54>)


## function testEmptyPrintCreatesLine


```haxe
function testEmptyPrintCreatesLine(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Log.hx#L53>)


## function testFlagAndPrefixSetting


```haxe
function testFlagAndPrefixSetting(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Log.hx#L51>)


## function testNonNewLogger


```haxe
function testNonNewLogger(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Log.hx#L49>)


## function testOutput


```haxe
function testOutput(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Log.hx#L48>)


## function testOutputRace


```haxe
function testOutputRace(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Log.hx#L50>)


## function testUTCFlag


```haxe
function testUTCFlag(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Log.hx#L52>)


## function writer


```haxe
function writer():Void
```


[\(view code\)](<./Log.hx#L34>)


# Typedefs


```haxe
import stdgo.log.*
```


## typedef Logger


```haxe
typedef Logger = Dynamic;
```


## typedef Logger\_asInterface


```haxe
typedef Logger_asInterface = Dynamic;
```


## typedef Logger\_static\_extension


```haxe
typedef Logger_static_extension = Dynamic;
```


## typedef T\_discard


```haxe
typedef T_discard = Dynamic;
```


## typedef T\_discard\_asInterface


```haxe
typedef T_discard_asInterface = Dynamic;
```


## typedef T\_discard\_static\_extension


```haxe
typedef T_discard_static_extension = Dynamic;
```


## typedef T\_tester


```haxe
typedef T_tester = Dynamic;
```


