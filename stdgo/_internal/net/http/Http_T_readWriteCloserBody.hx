package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_readWriteCloserBody_static_extension.T_readWriteCloserBody_static_extension) class T_readWriteCloserBody {
    @:optional
    public var __90 : stdgo._internal.net.http.Http_T_incomparable.T_incomparable = new stdgo._internal.net.http.Http_T_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _br : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
    @:embedded
    public var readWriteCloser : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser = (null : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser);
    public function new(?__90:stdgo._internal.net.http.Http_T_incomparable.T_incomparable, ?_br:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, ?readWriteCloser:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser) {
        if (__90 != null) this.__90 = __90;
        if (_br != null) this._br = _br;
        if (readWriteCloser != null) this.readWriteCloser = readWriteCloser;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function close():stdgo.Error return this.readWriteCloser.close();
    @:embedded
    public function write(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.readWriteCloser.write(__0);
    public function __copy__() {
        return new T_readWriteCloserBody(__90, _br, readWriteCloser);
    }
}
