package stdgo._internal.testing.slogtest;
import stdgo._internal.log.slog.Slog;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.testing.slogtest.Slogtest_T_replace_static_extension.T_replace_static_extension) class T_replace {
    public var _v : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_v:stdgo.AnyInterface) {
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_replace(_v);
    }
}
