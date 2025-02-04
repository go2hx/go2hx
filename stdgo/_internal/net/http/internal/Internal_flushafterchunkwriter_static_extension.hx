package stdgo._internal.net.http.internal;
@:keep @:allow(stdgo._internal.net.http.internal.Internal.FlushAfterChunkWriter_asInterface) class FlushAfterChunkWriter_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function writeString( __self__:stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter, _0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.writeString(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function writeRune( __self__:stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter, _0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.writeRune(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function writeByte( __self__:stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter, _0:stdgo.GoUInt8):stdgo.Error return @:_5 __self__.writeByte(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter):stdgo.GoInt return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function reset( __self__:stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter, _0:stdgo._internal.io.Io_writer.Writer):Void return @:_5 __self__.reset(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readFrom( __self__:stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter, _0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__.readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function flush( __self__:stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter):stdgo.Error return @:_5 __self__.flush();
    @:embedded
    @:embeddededffieldsffun
    public static function buffered( __self__:stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter):stdgo.GoInt return @:_5 __self__.buffered();
    @:embedded
    @:embeddededffieldsffun
    public static function availableBuffer( __self__:stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.availableBuffer();
    @:embedded
    @:embeddededffieldsffun
    public static function available( __self__:stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter):stdgo.GoInt return @:_5 __self__.available();
}
