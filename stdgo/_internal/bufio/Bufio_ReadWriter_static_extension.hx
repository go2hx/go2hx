package stdgo._internal.bufio;
@:keep @:allow(stdgo._internal.bufio.Bufio.ReadWriter_asInterface) class ReadWriter_static_extension {
    @:embedded
    public static function _writeBuf( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__._writeBuf(_w);
    @:embedded
    public static function _reset( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo._internal.io.Io_Reader.Reader) __self__._reset(_buf, _r);
    @:embedded
    public static function _readErr( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):stdgo.Error return __self__._readErr();
    @:embedded
    public static function _fill( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter) __self__._fill();
    @:embedded
    public static function _collectFragments( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return __self__._collectFragments(_delim);
    @:embedded
    public static function writeTo( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.writeTo(_w);
    @:embedded
    public static function writeString( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _text:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeString(_text);
    @:embedded
    public static function writeRune( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeRune(_r);
    @:embedded
    public static function writeByte( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _delim:stdgo.GoUInt8):stdgo.Error return __self__.writeByte(_delim);
    @:embedded
    public static function write( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_p);
    @:embedded
    public static function unreadRune( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):stdgo.Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):stdgo.Error return __self__.unreadByte();
    @:embedded
    public static function readString( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _delim:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.readString(_delim);
    @:embedded
    public static function readSlice( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readSlice(_delim);
    @:embedded
    public static function readRune( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.readRune();
    @:embedded
    public static function readLine( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return __self__.readLine();
    @:embedded
    public static function readFrom( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.readFrom(_r);
    @:embedded
    public static function readBytes( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readBytes(_delim);
    @:embedded
    public static function readByte( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.readByte();
    @:embedded
    public static function read( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_p);
    @:embedded
    public static function peek( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, __0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.peek(__0);
    @:embedded
    public static function flush( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):stdgo.Error return __self__.flush();
    @:embedded
    public static function discard( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, __0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.discard(__0);
    @:embedded
    public static function availableBuffer( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):stdgo.Slice<stdgo.GoUInt8> return __self__.availableBuffer();
    @:embedded
    public static function available( __self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):stdgo.GoInt return __self__.available();
}