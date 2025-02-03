package stdgo.net.http.fcgi;
class T_bufWriter_static_extension {
    static public function close(_w:T_bufWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter>);
        return stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.close(_w);
    }
    public static function writeString(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.writeString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeRune(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.writeRune(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeByte(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _0:std.UInt):stdgo.Error {
        final _0 = (_0 : stdgo.GoUInt8);
        return stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.writeByte(__self__, _0);
    }
    public static function write(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function size(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):StdTypes.Int {
        return stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.size(__self__);
    }
    public static function reset(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _0:stdgo._internal.io.Io_Writer.Writer):Void {
        stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.reset(__self__, _0);
    }
    public static function readFrom(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _0:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.readFrom(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function flush(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):stdgo.Error {
        return stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.flush(__self__);
    }
    public static function buffered(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):StdTypes.Int {
        return stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.buffered(__self__);
    }
    public static function availableBuffer(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.availableBuffer(__self__)) i];
    }
    public static function available(__self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):StdTypes.Int {
        return stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter_static_extension.T_bufWriter_static_extension.available(__self__);
    }
}
