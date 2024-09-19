package stdgo._internal.net.smtp;
@:structInit @:using(stdgo._internal.net.smtp.Smtp_T_dataCloser_static_extension.T_dataCloser_static_extension) class T_dataCloser {
    public var _c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = (null : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
    @:embedded
    public var writeCloser : stdgo._internal.io.Io_WriteCloser.WriteCloser = (null : stdgo._internal.io.Io_WriteCloser.WriteCloser);
    public function new(?_c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>, ?writeCloser:stdgo._internal.io.Io_WriteCloser.WriteCloser) {
        if (_c != null) this._c = _c;
        if (writeCloser != null) this.writeCloser = writeCloser;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.writeCloser.write(_b);
    public function __copy__() {
        return new T_dataCloser(_c, writeCloser);
    }
}