package stdgo._internal.bufio;
@:keep @:allow(stdgo._internal.bufio.Bufio.ReadWriter_asInterface) class ReadWriter_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _writeBuf( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__._writeBuf(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _reset( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo._internal.io.Io_reader.Reader):Void return @:_5 __self__._reset(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _readErr( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):stdgo.Error return @:_5 __self__._readErr();
    @:embedded
    @:embeddededffieldsffun
    public static function _fill( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):Void return @:_5 __self__._fill();
    @:embedded
    @:embeddededffieldsffun
    public static function _collectFragments( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:_5 __self__._collectFragments(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function writeTo( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__.writeTo(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function writeString( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.writeString(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function writeRune( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.writeRune(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function writeByte( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo.GoUInt8):stdgo.Error return @:_5 __self__.writeByte(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function unreadRune( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):stdgo.Error return @:_5 __self__.unreadRune();
    @:embedded
    @:embeddededffieldsffun
    public static function unreadByte( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):stdgo.Error return @:_5 __self__.unreadByte();
    @:embedded
    @:embeddededffieldsffun
    public static function readString( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_5 __self__.readString(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readSlice( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.readSlice(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readRune( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_5 __self__.readRune();
    @:embedded
    @:embeddededffieldsffun
    public static function readLine( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return @:_5 __self__.readLine();
    @:embedded
    @:embeddededffieldsffun
    public static function readFrom( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__.readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readBytes( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.readBytes(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readByte( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:_5 __self__.readByte();
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function peek( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.peek(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function flush( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):stdgo.Error return @:_5 __self__.flush();
    @:embedded
    @:embeddededffieldsffun
    public static function discard( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.discard(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function availableBuffer( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.availableBuffer();
    @:embedded
    @:embeddededffieldsffun
    public static function available( __self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):stdgo.GoInt return @:_5 __self__.available();
}
