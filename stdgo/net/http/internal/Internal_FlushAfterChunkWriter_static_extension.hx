package stdgo.net.http.internal;
class FlushAfterChunkWriter_static_extension {
    public static function writeString(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.writeString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeRune(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.writeRune(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeByte(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _0:std.UInt):stdgo.Error {
        final _0 = (_0 : stdgo.GoUInt8);
        return stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.writeByte(__self__, _0);
    }
    public static function write(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function size(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):StdTypes.Int {
        return stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.size(__self__);
    }
    public static function reset(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _0:stdgo._internal.io.Io_Writer.Writer):Void {
        stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.reset(__self__, _0);
    }
    public static function readFrom(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter, _0:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.readFrom(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function flush(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):stdgo.Error {
        return stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.flush(__self__);
    }
    public static function buffered(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):StdTypes.Int {
        return stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.buffered(__self__);
    }
    public static function availableBuffer(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.availableBuffer(__self__)) i];
    }
    public static function available(__self__:stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter):StdTypes.Int {
        return stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter_static_extension.FlushAfterChunkWriter_static_extension.available(__self__);
    }
}
