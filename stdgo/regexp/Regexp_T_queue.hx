package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_queue_static_extension) abstract T_queue(stdgo._internal.regexp.Regexp_T_queue.T_queue) from stdgo._internal.regexp.Regexp_T_queue.T_queue to stdgo._internal.regexp.Regexp_T_queue.T_queue {
    public var _sparse(get, set) : Array<std.UInt>;
    function get__sparse():Array<std.UInt> return [for (i in this._sparse) i];
    function set__sparse(v:Array<std.UInt>):Array<std.UInt> {
        this._sparse = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _dense(get, set) : Array<T_entry>;
    function get__dense():Array<T_entry> return [for (i in this._dense) i];
    function set__dense(v:Array<T_entry>):Array<T_entry> {
        this._dense = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>);
        return v;
    }
    public function new(?_sparse:Array<std.UInt>, ?_dense:Array<T_entry>) this = new stdgo._internal.regexp.Regexp_T_queue.T_queue(([for (i in _sparse) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>), ([for (i in _dense) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
