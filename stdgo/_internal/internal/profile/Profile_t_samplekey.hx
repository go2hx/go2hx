package stdgo._internal.internal.profile;
@:structInit @:using(stdgo._internal.internal.profile.Profile_t_samplekey_static_extension.T_sampleKey_static_extension) class T_sampleKey {
    public var _locations : stdgo.GoString = "";
    public var _labels : stdgo.GoString = "";
    public var _numlabels : stdgo.GoString = "";
    public function new(?_locations:stdgo.GoString, ?_labels:stdgo.GoString, ?_numlabels:stdgo.GoString) {
        if (_locations != null) this._locations = _locations;
        if (_labels != null) this._labels = _labels;
        if (_numlabels != null) this._numlabels = _numlabels;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sampleKey(_locations, _labels, _numlabels);
    }
}
