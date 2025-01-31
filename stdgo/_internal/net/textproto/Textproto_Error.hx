package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_Error_static_extension.Error_static_extension) class Error {
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
