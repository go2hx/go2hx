package stdgo.bufio;
class ReadWriter_static_extension {
    public static function _writeBuf(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension._writeBuf(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _reset(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:Array<std.UInt>, _1:stdgo._internal.io.Io_Reader.Reader):Void {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension._reset(__self__, _0, _1);
    }
    public static function _readErr(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):stdgo.Error {
        return stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension._readErr(__self__);
    }
    public static function _fill(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):Void {
        stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension._fill(__self__);
    }
    public static function _collectFragments(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:std.UInt):stdgo.Tuple.Tuple4<Array<Array<std.UInt>>, Array<std.UInt>, StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension._collectFragments(__self__, _0);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : [for (i in obj._1) i], _2 : obj._2, _3 : obj._3 };
        };
    }
    public static function writeTo(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.writeTo(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeString(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.writeString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeRune(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.writeRune(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeByte(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:std.UInt):stdgo.Error {
        final _0 = (_0 : stdgo.GoUInt8);
        return stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.writeByte(__self__, _0);
    }
    public static function write(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unreadRune(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):stdgo.Error {
        return stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.unreadRune(__self__);
    }
    public static function unreadByte(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):stdgo.Error {
        return stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.unreadByte(__self__);
    }
    public static function readString(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:std.UInt):stdgo.Tuple<String, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.readString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readSlice(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.readSlice(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readRune(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.readRune(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function readLine(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):stdgo.Tuple.Tuple3<Array<std.UInt>, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.readLine(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function readFrom(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.readFrom(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readBytes(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.readBytes(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readByte(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.readByte(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function peek(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:StdTypes.Int):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.peek(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function flush(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):stdgo.Error {
        return stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.flush(__self__);
    }
    public static function discard(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.discard(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function availableBuffer(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):Array<std.UInt> {
        return [for (i in stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.availableBuffer(__self__)) i];
    }
    public static function available(__self__:stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter):StdTypes.Int {
        return stdgo._internal.bufio.Bufio_ReadWriter_static_extension.ReadWriter_static_extension.available(__self__);
    }
}
