package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Conn_asInterface) class Conn_static_extension {
    @:keep
    @:tdfield
    static public function cmd( _c:stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoUInt; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn> = _c;
        var _id = (0 : stdgo.GoUInt), _err = (null : stdgo.Error);
        _id = @:check2r _c.next();
        @:check2r _c.startRequest(_id);
        _err = @:check2r _c.printfLine(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        @:check2r _c.endRequest(_id);
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt; var _1 : stdgo.Error; } = { _0 : (0u32 : stdgo.GoUInt), _1 : _err };
                _id = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt; var _1 : stdgo.Error; } = { _0 : _id, _1 : (null : stdgo.Error) };
            _id = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._conn.close();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _upcomingHeaderKeys( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo.GoInt return @:_5 __self__._upcomingHeaderKeys();
    @:embedded
    @:embeddededffieldsffun
    public static function _skipSpace( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo.GoInt return @:_5 __self__._skipSpace();
    @:embedded
    @:embeddededffieldsffun
    public static function _readLineSlice( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__._readLineSlice();
    @:embedded
    @:embeddededffieldsffun
    public static function _readContinuedLineSlice( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__._readContinuedLineSlice(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _readCodeLine( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } return @:_5 __self__._readCodeLine(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function startResponse( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:stdgo.GoUInt):Void return @:_5 __self__.startResponse(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function startRequest( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:stdgo.GoUInt):Void return @:_5 __self__.startRequest(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readResponse( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:_5 __self__.readResponse(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readMIMEHeader( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn):{ var _0 : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader; var _1 : stdgo.Error; } return @:_5 __self__.readMIMEHeader();
    @:embedded
    @:embeddededffieldsffun
    public static function readLineBytes( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.readLineBytes();
    @:embedded
    @:embeddededffieldsffun
    public static function readLine( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_5 __self__.readLine();
    @:embedded
    @:embeddededffieldsffun
    public static function readDotLines( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__.readDotLines();
    @:embedded
    @:embeddededffieldsffun
    public static function readDotBytes( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.readDotBytes();
    @:embedded
    @:embeddededffieldsffun
    public static function readContinuedLineBytes( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.readContinuedLineBytes();
    @:embedded
    @:embeddededffieldsffun
    public static function readContinuedLine( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_5 __self__.readContinuedLine();
    @:embedded
    @:embeddededffieldsffun
    public static function readCodeLine( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:_5 __self__.readCodeLine(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function printfLine( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):stdgo.Error return @:_5 __self__.printfLine(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function next( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo.GoUInt return @:_5 __self__.next();
    @:embedded
    @:embeddededffieldsffun
    public static function endResponse( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:stdgo.GoUInt):Void return @:_5 __self__.endResponse(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function endRequest( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:stdgo.GoUInt):Void return @:_5 __self__.endRequest(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function dotWriter( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo._internal.io.Io_writecloser.WriteCloser return @:_5 __self__.dotWriter();
    @:embedded
    @:embeddededffieldsffun
    public static function dotReader( __self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo._internal.io.Io_reader.Reader return @:_5 __self__.dotReader();
}
