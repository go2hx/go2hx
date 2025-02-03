package stdgo.sync.atomic_;
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Value_static_extension) abstract Value(stdgo._internal.sync.atomic_.Atomic__Value.Value) from stdgo._internal.sync.atomic_.Atomic__Value.Value to stdgo._internal.sync.atomic_.Atomic__Value.Value {
    public var _v(get, set) : stdgo.AnyInterface;
    function get__v():stdgo.AnyInterface return this._v;
    function set__v(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._v = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_v:stdgo.AnyInterface) this = new stdgo._internal.sync.atomic_.Atomic__Value.Value((_v : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
