package stdgo.sync.atomic_;
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Int64__static_extension) abstract Int64_(stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_) from stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_ to stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_ {
    public var __10(get, set) : T_noCopy;
    function get___10():T_noCopy return this.__10;
    function set___10(v:T_noCopy):T_noCopy {
        this.__10 = v;
        return v;
    }
    public var __11(get, set) : T_align64;
    function get___11():T_align64 return this.__11;
    function set___11(v:T_align64):T_align64 {
        this.__11 = v;
        return v;
    }
    public var _v(get, set) : haxe.Int64;
    function get__v():haxe.Int64 return this._v;
    function set__v(v:haxe.Int64):haxe.Int64 {
        this._v = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?__10:T_noCopy, ?__11:T_align64, ?_v:haxe.Int64) this = new stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_(__10, __11, (_v : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
