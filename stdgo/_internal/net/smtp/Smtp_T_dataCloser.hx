package stdgo._internal.net.smtp;
import stdgo._internal.net.Net;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.encoding.base64.Base64;
@:structInit @:using(stdgo._internal.net.smtp.Smtp_T_dataCloser_static_extension.T_dataCloser_static_extension) class T_dataCloser {
    public var _c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = (null : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>);
    @:embedded
    public var writeCloser : stdgo._internal.io.Io_WriteCloser.WriteCloser = (null : stdgo._internal.io.Io_WriteCloser.WriteCloser);
    public function new(?_c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>, ?writeCloser:stdgo._internal.io.Io_WriteCloser.WriteCloser) {
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
