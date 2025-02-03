package stdgo.time;
@:structInit @:using(stdgo.time.Time.T_dataIO_static_extension) abstract T_dataIO(stdgo._internal.time.Time_T_dataIO.T_dataIO) from stdgo._internal.time.Time_T_dataIO.T_dataIO to stdgo._internal.time.Time_T_dataIO.T_dataIO {
    public var _p(get, set) : Array<std.UInt>;
    function get__p():Array<std.UInt> return [for (i in this._p) i];
    function set__p(v:Array<std.UInt>):Array<std.UInt> {
        this._p = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _error(get, set) : Bool;
    function get__error():Bool return this._error;
    function set__error(v:Bool):Bool {
        this._error = v;
        return v;
    }
    public function new(?_p:Array<std.UInt>, ?_error:Bool) this = new stdgo._internal.time.Time_T_dataIO.T_dataIO(([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _error);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
