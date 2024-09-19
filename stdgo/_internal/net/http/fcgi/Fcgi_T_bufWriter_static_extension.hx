package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_bufWriter_asInterface) class T_bufWriter_static_extension {
    @:keep
    static public function close( _w:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter> = _w;
        {
            var _err = (_w.writer.flush() : stdgo.Error);
            if (_err != null) {
                _w._closer.close();
                return _err;
            };
        };
        return _w._closer.close();
    }
    @:embedded
    public static function writeString( __self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, __0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _new:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeRune(_new);
    @:embedded
    public static function writeByte( __self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _c:stdgo.GoUInt8):stdgo.Error return __self__.writeByte(_c);
    @:embedded
    public static function write( __self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_data);
    @:embedded
    public static function size( __self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):stdgo.GoInt return __self__.size();
    @:embedded
    public static function reset( __self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _w:stdgo._internal.io.Io_Writer.Writer) __self__.reset(_w);
    @:embedded
    public static function readFrom( __self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.readFrom(_r);
    @:embedded
    public static function flush( __self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):stdgo.Error return __self__.flush();
    @:embedded
    public static function buffered( __self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):stdgo.GoInt return __self__.buffered();
    @:embedded
    public static function availableBuffer( __self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):stdgo.Slice<stdgo.GoUInt8> return __self__.availableBuffer();
    @:embedded
    public static function available( __self__:stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter):stdgo.GoInt return __self__.available();
}
