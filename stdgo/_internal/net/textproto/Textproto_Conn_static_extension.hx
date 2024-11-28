package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Conn_asInterface) class Conn_static_extension {
    @:keep
    static public function cmd( _c:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Conn.Conn>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoUInt; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Conn.Conn> = _c;
        var _id = (0 : stdgo.GoUInt), _err = (null : stdgo.Error);
        _id = _c.next();
        _c.startRequest(_id);
        _err = _c.printfLine(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        _c.endRequest(_id);
        if (_err != null) {
            return { _0 : _id = (0u32 : stdgo.GoUInt), _1 : _err };
        };
        return { _0 : _id, _1 : _err = (null : stdgo.Error) };
    }
    @:keep
    static public function close( _c:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Conn.Conn> = _c;
        return _c._conn.close();
    }
    @:embedded
    public static function _upcomingHeaderKeys( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo.GoInt return __self__._upcomingHeaderKeys();
    @:embedded
    public static function _skipSpace( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo.GoInt return __self__._skipSpace();
    @:embedded
    public static function _readLineSlice( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__._readLineSlice();
    @:embedded
    public static function _readContinuedLineSlice( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _validateFirstLine:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__._readContinuedLineSlice(_validateFirstLine);
    @:embedded
    public static function _readCodeLine( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } return __self__._readCodeLine(_expectCode);
    @:embedded
    public static function startResponse( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _id:stdgo.GoUInt) __self__.startResponse(_id);
    @:embedded
    public static function startRequest( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _id:stdgo.GoUInt) __self__.startRequest(_id);
    @:embedded
    public static function readResponse( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.readResponse(_expectCode);
    @:embedded
    public static function readMIMEHeader( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):{ var _0 : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader; var _1 : stdgo.Error; } return __self__.readMIMEHeader();
    @:embedded
    public static function readLineBytes( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readLineBytes();
    @:embedded
    public static function readLine( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.readLine();
    @:embedded
    public static function readDotLines( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.readDotLines();
    @:embedded
    public static function readDotBytes( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readDotBytes();
    @:embedded
    public static function readContinuedLineBytes( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readContinuedLineBytes();
    @:embedded
    public static function readContinuedLine( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.readContinuedLine();
    @:embedded
    public static function readCodeLine( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.readCodeLine(_expectCode);
    @:embedded
    public static function printfLine( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error return __self__.printfLine(_format, ...[for (i in _a) i]);
    @:embedded
    public static function next( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo.GoUInt return __self__.next();
    @:embedded
    public static function endResponse( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _id:stdgo.GoUInt) __self__.endResponse(_id);
    @:embedded
    public static function endRequest( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn, _id:stdgo.GoUInt) __self__.endRequest(_id);
    @:embedded
    public static function dotWriter( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo._internal.io.Io_WriteCloser.WriteCloser return __self__.dotWriter();
    @:embedded
    public static function dotReader( __self__:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo._internal.io.Io_Reader.Reader return __self__.dotReader();
}
