package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_queueOnePass_static_extension) abstract T_queueOnePass(stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass) from stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass to stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass {
    public var _sparse(get, set) : Array<std.UInt>;
    function get__sparse():Array<std.UInt> return [for (i in this._sparse) i];
    function set__sparse(v:Array<std.UInt>):Array<std.UInt> {
        this._sparse = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _dense(get, set) : Array<std.UInt>;
    function get__dense():Array<std.UInt> return [for (i in this._dense) i];
    function set__dense(v:Array<std.UInt>):Array<std.UInt> {
        this._dense = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _size(get, set) : std.UInt;
    function get__size():std.UInt return this._size;
    function set__size(v:std.UInt):std.UInt {
        this._size = (v : stdgo.GoUInt32);
        return v;
    }
    public var _nextIndex(get, set) : std.UInt;
    function get__nextIndex():std.UInt return this._nextIndex;
    function set__nextIndex(v:std.UInt):std.UInt {
        this._nextIndex = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_sparse:Array<std.UInt>, ?_dense:Array<std.UInt>, ?_size:std.UInt, ?_nextIndex:std.UInt) this = new stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass(([for (i in _sparse) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>), ([for (i in _dense) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>), (_size : stdgo.GoUInt32), (_nextIndex : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
