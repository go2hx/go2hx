package stdgo.internal.coverage.stringtab;
@:structInit @:using(stdgo.internal.coverage.stringtab.Stringtab.Writer_static_extension) abstract Writer(stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer) from stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer to stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer {
    public var _stab(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>;
    function get__stab():stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32> return this._stab;
    function set__stab(v:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>):stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32> {
        this._stab = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>);
        return v;
    }
    public var _strs(get, set) : Array<String>;
    function get__strs():Array<String> return [for (i in this._strs) i];
    function set__strs(v:Array<String>):Array<String> {
        this._strs = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _tmp(get, set) : Array<std.UInt>;
    function get__tmp():Array<std.UInt> return [for (i in this._tmp) i];
    function set__tmp(v:Array<std.UInt>):Array<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _frozen(get, set) : Bool;
    function get__frozen():Bool return this._frozen;
    function set__frozen(v:Bool):Bool {
        this._frozen = v;
        return v;
    }
    public function new(?_stab:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>, ?_strs:Array<String>, ?_tmp:Array<std.UInt>, ?_frozen:Bool) this = new stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer((_stab : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>), ([for (i in _strs) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _frozen);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
