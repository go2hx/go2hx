package stdgo.os;
@:structInit @:using(stdgo.os.Os.T_dirInfo_static_extension) abstract T_dirInfo(stdgo._internal.os.Os_T_dirInfo.T_dirInfo) from stdgo._internal.os.Os_T_dirInfo.T_dirInfo to stdgo._internal.os.Os_T_dirInfo.T_dirInfo {
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return this._buf;
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = (v : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = (v : stdgo.GoInt);
        return v;
    }
    public var _bufp(get, set) : StdTypes.Int;
    function get__bufp():StdTypes.Int return this._bufp;
    function set__bufp(v:StdTypes.Int):StdTypes.Int {
        this._bufp = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_buf:Array<std.UInt>, ?_nbuf:StdTypes.Int, ?_bufp:StdTypes.Int) this = new stdgo._internal.os.Os_T_dirInfo.T_dirInfo((_buf : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (_nbuf : stdgo.GoInt), (_bufp : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
