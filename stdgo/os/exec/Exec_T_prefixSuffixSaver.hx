package stdgo.os.exec;
@:structInit @:using(stdgo.os.exec.Exec.T_prefixSuffixSaver_static_extension) abstract T_prefixSuffixSaver(stdgo._internal.os.exec.Exec_T_prefixSuffixSaver.T_prefixSuffixSaver) from stdgo._internal.os.exec.Exec_T_prefixSuffixSaver.T_prefixSuffixSaver to stdgo._internal.os.exec.Exec_T_prefixSuffixSaver.T_prefixSuffixSaver {
    public var n(get, set) : StdTypes.Int;
    function get_n():StdTypes.Int return this.n;
    function set_n(v:StdTypes.Int):StdTypes.Int {
        this.n = (v : stdgo.GoInt);
        return v;
    }
    public var _prefix(get, set) : Array<std.UInt>;
    function get__prefix():Array<std.UInt> return [for (i in this._prefix) i];
    function set__prefix(v:Array<std.UInt>):Array<std.UInt> {
        this._prefix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _suffix(get, set) : Array<std.UInt>;
    function get__suffix():Array<std.UInt> return [for (i in this._suffix) i];
    function set__suffix(v:Array<std.UInt>):Array<std.UInt> {
        this._suffix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _suffixOff(get, set) : StdTypes.Int;
    function get__suffixOff():StdTypes.Int return this._suffixOff;
    function set__suffixOff(v:StdTypes.Int):StdTypes.Int {
        this._suffixOff = (v : stdgo.GoInt);
        return v;
    }
    public var _skipped(get, set) : haxe.Int64;
    function get__skipped():haxe.Int64 return this._skipped;
    function set__skipped(v:haxe.Int64):haxe.Int64 {
        this._skipped = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?n:StdTypes.Int, ?_prefix:Array<std.UInt>, ?_suffix:Array<std.UInt>, ?_suffixOff:StdTypes.Int, ?_skipped:haxe.Int64) this = new stdgo._internal.os.exec.Exec_T_prefixSuffixSaver.T_prefixSuffixSaver((n : stdgo.GoInt), ([for (i in _prefix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _suffix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_suffixOff : stdgo.GoInt), (_skipped : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
