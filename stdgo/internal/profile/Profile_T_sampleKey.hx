package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.T_sampleKey_static_extension) abstract T_sampleKey(stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey) from stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey to stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey {
    public var _locations(get, set) : String;
    function get__locations():String return this._locations;
    function set__locations(v:String):String {
        this._locations = (v : stdgo.GoString);
        return v;
    }
    public var _labels(get, set) : String;
    function get__labels():String return this._labels;
    function set__labels(v:String):String {
        this._labels = (v : stdgo.GoString);
        return v;
    }
    public var _numlabels(get, set) : String;
    function get__numlabels():String return this._numlabels;
    function set__numlabels(v:String):String {
        this._numlabels = (v : stdgo.GoString);
        return v;
    }
    public function new(?_locations:String, ?_labels:String, ?_numlabels:String) this = new stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey((_locations : stdgo.GoString), (_labels : stdgo.GoString), (_numlabels : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
