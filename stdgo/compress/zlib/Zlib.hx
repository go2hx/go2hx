package stdgo.compress.zlib;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var errChecksum : Dynamic;
@:invalid var errDictionary : Dynamic;
@:invalid var errHeader : Dynamic;
@:invalid var _zlibTests : Dynamic;
@:invalid var _filenames : Dynamic;
@:invalid var _data : Dynamic;
@:invalid var _zlibDeflate : Dynamic;
@:invalid var _zlibMaxWindow : Dynamic;
@:invalid var noCompression : Dynamic;
@:invalid var bestSpeed : Dynamic;
@:invalid var bestCompression : Dynamic;
@:invalid var defaultCompression : Dynamic;
@:invalid var huffmanOnly : Dynamic;
typedef Resetter = stdgo._internal.compress.zlib.Zlib.Resetter;
@:invalid typedef T_reader = Dynamic;
@:invalid typedef T_zlibTest = Dynamic;
@:invalid typedef Writer = Dynamic;
function newReader(_r:stdgo._internal.io.Io.Reader):Void {}
function newReaderDict(_r:stdgo._internal.io.Io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):Void {}
function testDecompressor(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function newWriter(_w:stdgo._internal.io.Io.Writer):Void {}
function newWriterLevel(_w:stdgo._internal.io.Io.Writer, _level:stdgo.GoInt):Void {}
function newWriterLevelDict(_w:stdgo._internal.io.Io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void {}
function _testFileLevelDict(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _d:stdgo.GoString):Void {}
function _testLevelDict(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _fn:stdgo.GoString, _b0:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _d:stdgo.GoString):Void {}
function _testFileLevelDictReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void {}
function testWriter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriterBig(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriterDict(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriterReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriterDictIsUsed(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_reader_asInterface = Dynamic;
@:invalid typedef T_reader_static_extension = Dynamic;
@:invalid typedef Writer_asInterface = Dynamic;
@:invalid typedef Writer_static_extension = Dynamic;
