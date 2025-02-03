package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.T_buffer_static_extension) abstract T_buffer(stdgo._internal.internal.profile.Profile_T_buffer.T_buffer) from stdgo._internal.internal.profile.Profile_T_buffer.T_buffer to stdgo._internal.internal.profile.Profile_T_buffer.T_buffer {
    public var _field(get, set) : StdTypes.Int;
    function get__field():StdTypes.Int return this._field;
    function set__field(v:StdTypes.Int):StdTypes.Int {
        this._field = (v : stdgo.GoInt);
        return v;
    }
    public var _typ(get, set) : StdTypes.Int;
    function get__typ():StdTypes.Int return this._typ;
    function set__typ(v:StdTypes.Int):StdTypes.Int {
        this._typ = (v : stdgo.GoInt);
        return v;
    }
    public var _u64(get, set) : haxe.UInt64;
    function get__u64():haxe.UInt64 return this._u64;
    function set__u64(v:haxe.UInt64):haxe.UInt64 {
        this._u64 = (v : stdgo.GoUInt64);
        return v;
    }
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _tmp(get, set) : haxe.ds.Vector<std.UInt>;
    function get__tmp():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._tmp) i]);
    function set__tmp(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_field:StdTypes.Int, ?_typ:StdTypes.Int, ?_u64:haxe.UInt64, ?_data:Array<std.UInt>, ?_tmp:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.profile.Profile_T_buffer.T_buffer((_field : stdgo.GoInt), (_typ : stdgo.GoInt), (_u64 : stdgo.GoUInt64), ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
