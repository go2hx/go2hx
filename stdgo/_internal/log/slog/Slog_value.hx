package stdgo._internal.log.slog;
@:structInit @:using(stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension) class Value {
    @:optional
    public var __9 : stdgo.GoArray<() -> Void> = new stdgo.GoArray<() -> Void>(0, 0);
    public var _num : stdgo.GoUInt64 = 0;
    public var _any : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?__9:stdgo.GoArray<() -> Void>, ?_num:stdgo.GoUInt64, ?_any:stdgo.AnyInterface) {
        if (__9 != null) this.__9 = __9;
        if (_num != null) this._num = _num;
        if (_any != null) this._any = _any;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Value(__9, _num, _any);
    }
}
