package stdgo._internal.net.http.internal;
@:keep @:allow(stdgo._internal.net.http.internal.Internal.FlushAfterChunkWriter_asInterface) class FlushAfterChunkWriter_static_extension {
    @:embedded
    public static function writeString( __self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _text:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeString(_text);
    @:embedded
    public static function writeRune( __self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeRune(_r);
    @:embedded
    public static function writeByte( __self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _delim:stdgo.GoUInt8):stdgo.Error return __self__.writeByte(_delim);
    @:embedded
    public static function write( __self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_p);
    @:embedded
    public static function size( __self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):stdgo.GoInt return __self__.size();
    @:embedded
    public static function reset( __self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _w:stdgo._internal.io.Io_Writer.Writer) __self__.reset(_w);
    @:embedded
    public static function readFrom( __self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.readFrom(_r);
    @:embedded
    public static function flush( __self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):stdgo.Error return __self__.flush();
    @:embedded
    public static function buffered( __self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):stdgo.GoInt return __self__.buffered();
    @:embedded
    public static function availableBuffer( __self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):stdgo.Slice<stdgo.GoUInt8> return __self__.availableBuffer();
    @:embedded
    public static function available( __self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):stdgo.GoInt return __self__.available();
}
