package stdgo.internal.bisect;
@:structInit @:using(stdgo.internal.bisect.Bisect.T_dedup_static_extension) abstract T_dedup(stdgo._internal.internal.bisect.Bisect_T_dedup.T_dedup) from stdgo._internal.internal.bisect.Bisect_T_dedup.T_dedup to stdgo._internal.internal.bisect.Bisect_T_dedup.T_dedup {
    public var _recent(get, set) : haxe.ds.Vector<haxe.ds.Vector<haxe.UInt64>>;
    function get__recent():haxe.ds.Vector<haxe.ds.Vector<haxe.UInt64>> return haxe.ds.Vector.fromArrayCopy([for (i in this._recent) haxe.ds.Vector.fromArrayCopy([for (i in i) i])]);
    function set__recent(v:haxe.ds.Vector<haxe.ds.Vector<haxe.UInt64>>):haxe.ds.Vector<haxe.ds.Vector<haxe.UInt64>> {
        this._recent = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>)] : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>);
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _m(get, set) : stdgo.GoMap<stdgo.GoUInt64, Bool>;
    function get__m():stdgo.GoMap<stdgo.GoUInt64, Bool> return this._m;
    function set__m(v:stdgo.GoMap<stdgo.GoUInt64, Bool>):stdgo.GoMap<stdgo.GoUInt64, Bool> {
        this._m = (v : stdgo.GoMap<stdgo.GoUInt64, Bool>);
        return v;
    }
    public function new(?_recent:haxe.ds.Vector<haxe.ds.Vector<haxe.UInt64>>, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_m:stdgo.GoMap<stdgo.GoUInt64, Bool>) this = new stdgo._internal.internal.bisect.Bisect_T_dedup.T_dedup(([for (i in _recent) ([for (i in i) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>)] : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>), _mu, (_m : stdgo.GoMap<stdgo.GoUInt64, Bool>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
