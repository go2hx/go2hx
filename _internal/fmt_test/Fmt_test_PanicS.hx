package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.fmt_test.Fmt_test_PanicS_static_extension.PanicS_static_extension) class PanicS {
    public var _message : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_message:stdgo.AnyInterface) {
        if (_message != null) this._message = _message;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PanicS(_message);
    }
}
