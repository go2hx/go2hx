package stdgo.bufio;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var errInvalidUnreadByte : Dynamic;
@:invalid var errInvalidUnreadRune : Dynamic;
@:invalid var errBufferFull : Dynamic;
@:invalid var errNegativeCount : Dynamic;
@:invalid var _errNegativeRead : Dynamic;
@:invalid var _errNegativeWrite : Dynamic;
@:invalid var errTooLong : Dynamic;
@:invalid var errNegativeAdvance : Dynamic;
@:invalid var errAdvanceTooFar : Dynamic;
@:invalid var errBadReadCount : Dynamic;
@:invalid var errFinalToken : Dynamic;
@:invalid var _errorRune : Dynamic;
@:invalid var isSpace : Dynamic;
@:invalid var _defaultBufSize : Dynamic;
@:invalid var _minReadBufferSize : Dynamic;
@:invalid var _maxConsecutiveEmptyReads : Dynamic;
@:invalid var defaultBufSize : Dynamic;
@:invalid var maxScanTokenSize : Dynamic;
@:invalid var _startBufSize : Dynamic;
@:invalid typedef Reader = Dynamic;
@:invalid typedef Writer = Dynamic;
@:invalid typedef ReadWriter = Dynamic;
@:invalid typedef Scanner = Dynamic;
typedef SplitFunc = stdgo._internal.bufio.Bufio.SplitFunc;
function newReaderSize(_rd:stdgo._internal.io.Io.Reader, _size:stdgo.GoInt):Void {}
function newReader(_rd:stdgo._internal.io.Io.Reader):Void {}
function newWriterSize(_w:stdgo._internal.io.Io.Writer, _size:stdgo.GoInt):Void {}
function newWriter(_w:stdgo._internal.io.Io.Writer):Void {}
function newReadWriter(_r:stdgo.Ref<Reader>, _w:stdgo.Ref<Writer>):Void {}
function newScanner(_r:stdgo._internal.io.Io.Reader):Void {}
function scanBytes(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):Void {}
function scanRunes(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):Void {}
function _dropCR(_data:stdgo.Slice<stdgo.GoByte>):Void {}
function scanLines(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):Void {}
function _isSpace(_r:stdgo.GoRune):Void {}
function scanWords(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):Void {}
@:invalid typedef Reader_asInterface = Dynamic;
@:invalid typedef Reader_static_extension = Dynamic;
@:invalid typedef Writer_asInterface = Dynamic;
@:invalid typedef Writer_static_extension = Dynamic;
@:invalid typedef ReadWriter_asInterface = Dynamic;
@:invalid typedef ReadWriter_static_extension = Dynamic;
@:invalid typedef Scanner_asInterface = Dynamic;
@:invalid typedef Scanner_static_extension = Dynamic;
