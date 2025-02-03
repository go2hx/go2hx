package stdgo.sync.atomic_;
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Bool__static_extension) abstract Bool_(stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_) from stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ to stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
    public var __1(get, set) : T_noCopy;
    function get___1():T_noCopy return this.__1;
    function set___1(v:T_noCopy):T_noCopy {
        this.__1 = v;
        return v;
    }
    public var _v(get, set) : std.UInt;
    function get__v():std.UInt return this._v;
    function set__v(v:std.UInt):std.UInt {
        this._v = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?__1:T_noCopy, ?_v:std.UInt) this = new stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_(__1, (_v : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
