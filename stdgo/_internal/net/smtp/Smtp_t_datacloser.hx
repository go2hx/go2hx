package stdgo._internal.net.smtp;
@:structInit @:using(stdgo._internal.net.smtp.Smtp_t_datacloser_static_extension.T_dataCloser_static_extension) class T_dataCloser {
    public var _c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = (null : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
    @:embedded
    public var writeCloser : stdgo._internal.io.Io_writecloser.WriteCloser = (null : stdgo._internal.io.Io_writecloser.WriteCloser);
    public function new(?_c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>, ?writeCloser:stdgo._internal.io.Io_writecloser.WriteCloser) {
        if (_c != null) this._c = _c;
        if (writeCloser != null) this.writeCloser = writeCloser;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.writeCloser ?? throw "null pointer dereference").write;
    public function __copy__() {
        return new T_dataCloser(_c, writeCloser);
    }
}
