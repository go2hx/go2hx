package stdgo.sync.atomic_;
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Uint32_static_extension) abstract Uint32(stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32) from stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32 to stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32 {
    public var __12(get, set) : T_noCopy;
    function get___12():T_noCopy return this.__12;
    function set___12(v:T_noCopy):T_noCopy {
        this.__12 = v;
        return v;
    }
    public var _v(get, set) : std.UInt;
    function get__v():std.UInt return this._v;
    function set__v(v:std.UInt):std.UInt {
        this._v = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?__12:T_noCopy, ?_v:std.UInt) this = new stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32(__12, (_v : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
