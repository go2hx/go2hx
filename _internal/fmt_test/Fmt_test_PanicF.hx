package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.fmt_test.Fmt_test_PanicF_static_extension.PanicF_static_extension) class PanicF {
    public var _message : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_message:stdgo.AnyInterface) {
        if (_message != null) this._message = _message;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PanicF(_message);
    }
}
