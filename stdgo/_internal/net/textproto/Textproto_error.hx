package stdgo._internal.net.textproto;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_error_static_extension.Error_static_extension) class Error {
    public var code : stdgo.GoInt = 0;
    public var msg : stdgo.GoString = "";
    public function new(?code:stdgo.GoInt, ?msg:stdgo.GoString) {
        if (code != null) this.code = code;
        if (msg != null) this.msg = msg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Error(code, msg);
    }
}
