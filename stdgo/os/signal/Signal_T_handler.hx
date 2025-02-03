package stdgo.os.signal;
@:structInit @:using(stdgo.os.signal.Signal.T_handler_static_extension) abstract T_handler(stdgo._internal.os.signal.Signal_T_handler.T_handler) from stdgo._internal.os.signal.Signal_T_handler.T_handler to stdgo._internal.os.signal.Signal_T_handler.T_handler {
    public var _mask(get, set) : haxe.ds.Vector<std.UInt>;
    function get__mask():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._mask) i]);
    function set__mask(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._mask = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public function new(?_mask:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.os.signal.Signal_T_handler.T_handler(([for (i in _mask) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
