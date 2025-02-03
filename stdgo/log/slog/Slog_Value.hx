package stdgo.log.slog;
@:structInit @:using(stdgo.log.slog.Slog.Value_static_extension) abstract Value(stdgo._internal.log.slog.Slog_Value.Value) from stdgo._internal.log.slog.Slog_Value.Value to stdgo._internal.log.slog.Slog_Value.Value {
    public var __9(get, set) : haxe.ds.Vector<() -> Void>;
    function get___9():haxe.ds.Vector<() -> Void> return haxe.ds.Vector.fromArrayCopy([for (i in this.__9) () -> i()]);
    function set___9(v:haxe.ds.Vector<() -> Void>):haxe.ds.Vector<() -> Void> {
        this.__9 = ([for (i in v) i] : stdgo.GoArray<() -> Void>);
        return v;
    }
    public var _num(get, set) : haxe.UInt64;
    function get__num():haxe.UInt64 return this._num;
    function set__num(v:haxe.UInt64):haxe.UInt64 {
        this._num = (v : stdgo.GoUInt64);
        return v;
    }
    public var _any(get, set) : stdgo.AnyInterface;
    function get__any():stdgo.AnyInterface return this._any;
    function set__any(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._any = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?__9:haxe.ds.Vector<() -> Void>, ?_num:haxe.UInt64, ?_any:stdgo.AnyInterface) this = new stdgo._internal.log.slog.Slog_Value.Value(([for (i in __9) i] : stdgo.GoArray<() -> Void>), (_num : stdgo.GoUInt64), (_any : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
