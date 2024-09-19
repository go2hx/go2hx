package _internal.internal.profile;
@:structInit @:using(_internal.internal.profile.Profile_Sample_static_extension.Sample_static_extension) class Sample {
    public var location : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>> = (null : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
    public var value : stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
    public var label : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
    public var numLabel : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>);
    public var numUnit : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
    public var _locationIDX : stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
    public var _labelX : stdgo.Slice<_internal.internal.profile.Profile_Label.Label> = (null : stdgo.Slice<_internal.internal.profile.Profile_Label.Label>);
    public function new(?location:stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>, ?value:stdgo.Slice<stdgo.GoInt64>, ?label:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>, ?numLabel:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>, ?numUnit:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>, ?_locationIDX:stdgo.Slice<stdgo.GoUInt64>, ?_labelX:stdgo.Slice<_internal.internal.profile.Profile_Label.Label>) {
        if (location != null) this.location = location;
        if (value != null) this.value = value;
        if (label != null) this.label = label;
        if (numLabel != null) this.numLabel = numLabel;
        if (numUnit != null) this.numUnit = numUnit;
        if (_locationIDX != null) this._locationIDX = _locationIDX;
        if (_labelX != null) this._labelX = _labelX;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Sample(location, value, label, numLabel, numUnit, _locationIDX, _labelX);
    }
}