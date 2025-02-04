package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_readwritecloserbody_static_extension.T_readWriteCloserBody_static_extension) class T_readWriteCloserBody {
    @:embedded
    public var readWriteCloser : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser = (null : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser);
    public function new(?readWriteCloser:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser) {
        if (readWriteCloser != null) this.readWriteCloser = readWriteCloser;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check31 (this.__underlying__ ?? throw "null pointer dereference").close;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.__underlying__ ?? throw "null pointer dereference").write;
    public function __copy__() {
        return new T_readWriteCloserBody(readWriteCloser);
    }
}
