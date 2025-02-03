package stdgo.sync.atomic_;
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Int32_static_extension) abstract Int32(stdgo._internal.sync.atomic_.Atomic__Int32.Int32) from stdgo._internal.sync.atomic_.Atomic__Int32.Int32 to stdgo._internal.sync.atomic_.Atomic__Int32.Int32 {
    public var __7(get, set) : T_noCopy;
    function get___7():T_noCopy return this.__7;
    function set___7(v:T_noCopy):T_noCopy {
        this.__7 = v;
        return v;
    }
    public var _v(get, set) : StdTypes.Int;
    function get__v():StdTypes.Int return this._v;
    function set__v(v:StdTypes.Int):StdTypes.Int {
        this._v = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?__7:T_noCopy, ?_v:StdTypes.Int) this = new stdgo._internal.sync.atomic_.Atomic__Int32.Int32(__7, (_v : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
