package stdgo.testing.iotest;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var errTimeout : Dynamic;
@:invalid var _truncateWriterTests : Dynamic;
@:invalid typedef T_writeLogger = Dynamic;
@:invalid typedef T_readLogger = Dynamic;
@:invalid typedef T_errWriter = Dynamic;
@:invalid typedef T_oneByteReader = Dynamic;
@:invalid typedef T_halfReader = Dynamic;
@:invalid typedef T_dataErrReader = Dynamic;
@:invalid typedef T_timeoutReader = Dynamic;
@:invalid typedef T_errReader = Dynamic;
@:invalid typedef T_smallByteReader = Dynamic;
@:invalid typedef T_truncateWriter = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.testing.iotest.Iotest.T__struct_0;
function newWriteLogger(_prefix:stdgo.GoString, _w:stdgo._internal.io.Io.Writer):Void {}
function newReadLogger(_prefix:stdgo.GoString, _r:stdgo._internal.io.Io.Reader):Void {}
function testWriteLogger(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriteLogger_errorOnWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReadLogger(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReadLogger_errorOnRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function oneByteReader(_r:stdgo._internal.io.Io.Reader):Void {}
function halfReader(_r:stdgo._internal.io.Io.Reader):Void {}
function dataErrReader(_r:stdgo._internal.io.Io.Reader):Void {}
function timeoutReader(_r:stdgo._internal.io.Io.Reader):Void {}
function errReader(_err:stdgo.Error):Void {}
function testReader(_r:stdgo._internal.io.Io.Reader, _content:stdgo.Slice<stdgo.GoByte>):Void {}
function testOneByteReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testOneByteReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testHalfReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testHalfReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testTimeOutReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testTimeOutReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDataErrReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDataErrReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testErrReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testStringsReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function truncateWriter(_w:stdgo._internal.io.Io.Writer, _n:stdgo.GoInt64):Void {}
function testTruncateWriter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_writeLogger_asInterface = Dynamic;
@:invalid typedef T_writeLogger_static_extension = Dynamic;
@:invalid typedef T_readLogger_asInterface = Dynamic;
@:invalid typedef T_readLogger_static_extension = Dynamic;
@:invalid typedef T_errWriter_asInterface = Dynamic;
@:invalid typedef T_errWriter_static_extension = Dynamic;
@:invalid typedef T_oneByteReader_asInterface = Dynamic;
@:invalid typedef T_oneByteReader_static_extension = Dynamic;
@:invalid typedef T_halfReader_asInterface = Dynamic;
@:invalid typedef T_halfReader_static_extension = Dynamic;
@:invalid typedef T_dataErrReader_asInterface = Dynamic;
@:invalid typedef T_dataErrReader_static_extension = Dynamic;
@:invalid typedef T_timeoutReader_asInterface = Dynamic;
@:invalid typedef T_timeoutReader_static_extension = Dynamic;
@:invalid typedef T_errReader_asInterface = Dynamic;
@:invalid typedef T_errReader_static_extension = Dynamic;
@:invalid typedef T_smallByteReader_asInterface = Dynamic;
@:invalid typedef T_smallByteReader_static_extension = Dynamic;
@:invalid typedef T_truncateWriter_asInterface = Dynamic;
@:invalid typedef T_truncateWriter_static_extension = Dynamic;
