package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_bufWriter_asInterface) class T_bufWriter_static_extension {
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter> = _w;
        {
            var _err = (@:check2r (@:checkr _w ?? throw "null pointer dereference").writer.flush() : stdgo.Error);
            if (_err != null) {
                (@:checkr _w ?? throw "null pointer dereference")._closer.close();
                return _err;
            };
        };
        return (@:checkr _w ?? throw "null pointer dereference")._closer.close();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function writeString( __self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter, _0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.writeString(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function writeRune( __self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter, _0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.writeRune(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function writeByte( __self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter, _0:stdgo.GoUInt8):stdgo.Error return @:_5 __self__.writeByte(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter):stdgo.GoInt return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function reset( __self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter, _0:stdgo._internal.io.Io_writer.Writer):Void return @:_5 __self__.reset(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readFrom( __self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter, _0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__.readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function flush( __self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter):stdgo.Error return @:_5 __self__.flush();
    @:embedded
    @:embeddededffieldsffun
    public static function buffered( __self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter):stdgo.GoInt return @:_5 __self__.buffered();
    @:embedded
    @:embeddededffieldsffun
    public static function availableBuffer( __self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.availableBuffer();
    @:embedded
    @:embeddededffieldsffun
    public static function available( __self__:stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter):stdgo.GoInt return @:_5 __self__.available();
}
