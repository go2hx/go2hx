package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_readWriteCloserBody_static_extension.T_readWriteCloserBody_static_extension) class T_readWriteCloserBody {
    @:optional
    public var __79 : stdgo._internal.net.http.Http_T_incomparable.T_incomparable = new stdgo._internal.net.http.Http_T_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _br : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
    @:embedded
    public var readWriteCloser : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser = (null : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser);
    public function new(?__79:stdgo._internal.net.http.Http_T_incomparable.T_incomparable, ?_br:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, ?readWriteCloser:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser) {
        if (__79 != null) this.__79 = __79;
        if (_br != null) this._br = _br;
        if (readWriteCloser != null) this.readWriteCloser = readWriteCloser;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check31 (this.readWriteCloser ?? throw "null pointer derefrence").close;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.readWriteCloser ?? throw "null pointer derefrence").write;
    public function __copy__() {
        return new T_readWriteCloserBody(__79, _br, readWriteCloser);
    }
}
