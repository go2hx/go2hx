package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__value_static_extension.Value_static_extension) class Value {
    public var _v : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_v:stdgo.AnyInterface) {
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Value(_v);
    }
}
