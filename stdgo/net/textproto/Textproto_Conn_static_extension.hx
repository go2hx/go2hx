package stdgo.net.textproto;
class Conn_static_extension {
    static public function cmd(_c:Conn, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Conn.Conn>);
        final _format = (_format : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.cmd(_c, _format, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_c:Conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Conn.Conn>);
        return stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.close(_c);
    }
    public static function _upcomingHeaderKeys(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):StdTypes.Int {
        return stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension._upcomingHeaderKeys(__self__);
    }
    public static function _skipSpace(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):StdTypes.Int {
        return stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension._skipSpace(__self__);
    }
    public static function _readLineSlice(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension._readLineSlice(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function _readContinuedLineSlice(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _0:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = _0;
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension._readContinuedLineSlice(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function _readCodeLine(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _0:StdTypes.Int):stdgo.Tuple.Tuple4<StdTypes.Int, Bool, String, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension._readCodeLine(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    public static function startResponse(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt);
        stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.startResponse(__self__, _0);
    }
    public static function startRequest(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt);
        stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.startRequest(__self__, _0);
    }
    public static function readResponse(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _0:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.readResponse(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function readMIMEHeader(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo.Tuple<MIMEHeader, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.readMIMEHeader(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readLineBytes(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.readLineBytes(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readLine(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.readLine(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readDotLines(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.readDotLines(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readDotBytes(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.readDotBytes(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readContinuedLineBytes(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.readContinuedLineBytes(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readContinuedLine(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.readContinuedLine(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readCodeLine(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _0:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.readCodeLine(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function printfLine(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.printfLine(__self__, _0, ...[for (i in _1) i]);
    }
    public static function next(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):std.UInt {
        return stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.next(__self__);
    }
    public static function endResponse(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt);
        stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.endResponse(__self__, _0);
    }
    public static function endRequest(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt);
        stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.endRequest(__self__, _0);
    }
    public static function dotWriter(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.dotWriter(__self__);
    }
    public static function dotReader(__self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.net.textproto.Textproto_Conn_static_extension.Conn_static_extension.dotReader(__self__);
    }
}
