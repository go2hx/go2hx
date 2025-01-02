package stdgo._internal.net.http.httputil;
@:structInit @:using(stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension) class T_dumpConn {
    @:embedded
    public var writer : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    @:embedded
    public var reader : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public function new(?writer:stdgo._internal.io.Io_Writer.Writer, ?reader:stdgo._internal.io.Io_Reader.Reader) {
        if (writer != null) this.writer = writer;
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.reader ?? throw "null pointer derefrence").read;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.writer ?? throw "null pointer derefrence").write;
    public function __copy__() {
        return new T_dumpConn(writer, reader);
    }
}
