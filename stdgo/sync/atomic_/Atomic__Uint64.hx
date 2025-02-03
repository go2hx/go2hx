package stdgo.sync.atomic_;
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Uint64_static_extension) abstract Uint64(stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64) from stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 to stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 {
    public var __15(get, set) : T_noCopy;
    function get___15():T_noCopy return this.__15;
    function set___15(v:T_noCopy):T_noCopy {
        this.__15 = v;
        return v;
    }
    public var __16(get, set) : T_align64;
    function get___16():T_align64 return this.__16;
    function set___16(v:T_align64):T_align64 {
        this.__16 = v;
        return v;
    }
    public var _v(get, set) : haxe.UInt64;
    function get__v():haxe.UInt64 return this._v;
    function set__v(v:haxe.UInt64):haxe.UInt64 {
        this._v = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?__15:T_noCopy, ?__16:T_align64, ?_v:haxe.UInt64) this = new stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64(__15, __16, (_v : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
