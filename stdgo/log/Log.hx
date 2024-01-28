package stdgo.log;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _std : Dynamic;
@:invalid var _bufferPool : Dynamic;
@:invalid var _tests : Dynamic;
@:invalid var ldate : Dynamic;
@:invalid var ltime : Dynamic;
@:invalid var lmicroseconds : Dynamic;
@:invalid var llongfile : Dynamic;
@:invalid var lshortfile : Dynamic;
@:invalid var lutc : Dynamic;
@:invalid var lmsgprefix : Dynamic;
@:invalid var lstdFlags : Dynamic;
@:invalid var rdate : Dynamic;
@:invalid var rtime : Dynamic;
@:invalid var rmicroseconds : Dynamic;
@:invalid var rline : Dynamic;
@:invalid var rlongfile : Dynamic;
@:invalid var rshortfile : Dynamic;
@:invalid typedef Logger = Dynamic;
@:invalid typedef T_tester = Dynamic;
@:invalid typedef T_discard = Dynamic;
function new_(_out:stdgo._internal.io.Io.Writer, _prefix:stdgo.GoString, _flag:stdgo.GoInt):Void {}
function default_():Void {}
function _itoa(_buf:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>, _i:stdgo.GoInt, _wid:stdgo.GoInt):Void {}
function _formatHeader(_buf:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>, _t:stdgo._internal.time.Time.Time, _prefix:stdgo.GoString, _flag:stdgo.GoInt, _file:stdgo.GoString, _line:stdgo.GoInt):Void {}
function _getBuffer():Void {}
function _putBuffer(_p:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>):Void {}
function setOutput(_w:stdgo._internal.io.Io.Writer):Void {}
function flags():Void {}
function setFlags(_flag:stdgo.GoInt):Void {}
function prefix():Void {}
function setPrefix(_prefix:stdgo.GoString):Void {}
function writer():Void {}
function print(_v:haxe.Rest<stdgo.AnyInterface>):Void {}
function printf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {}
function println(_v:haxe.Rest<stdgo.AnyInterface>):Void {}
function fatal(_v:haxe.Rest<stdgo.AnyInterface>):Void {}
function fatalf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {}
function fatalln(_v:haxe.Rest<stdgo.AnyInterface>):Void {}
function panic(_v:haxe.Rest<stdgo.AnyInterface>):Void {}
function panicf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {}
function panicln(_v:haxe.Rest<stdgo.AnyInterface>):Void {}
function output(_calldepth:stdgo.GoInt, _s:stdgo.GoString):Void {}
function _testPrint(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _flag:stdgo.GoInt, _prefix:stdgo.GoString, _pattern:stdgo.GoString, _useFormat:Bool):Void {}
function testDefault(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testAll(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testOutput(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testNonNewLogger(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testOutputRace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFlagAndPrefixSetting(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testUTCFlag(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testEmptyPrintCreatesLine(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDiscard(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkItoa(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkPrintln(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkPrintlnNoFlags(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkConcurrent(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkDiscard(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
@:invalid var _ : Dynamic;
@:invalid typedef Logger_asInterface = Dynamic;
@:invalid typedef Logger_static_extension = Dynamic;
@:invalid typedef T_discard_asInterface = Dynamic;
@:invalid typedef T_discard_static_extension = Dynamic;
