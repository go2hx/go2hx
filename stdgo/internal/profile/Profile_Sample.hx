package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.Sample_static_extension) abstract Sample(stdgo._internal.internal.profile.Profile_Sample.Sample) from stdgo._internal.internal.profile.Profile_Sample.Sample to stdgo._internal.internal.profile.Profile_Sample.Sample {
    public var location(get, set) : Array<Location>;
    function get_location():Array<Location> return [for (i in this.location) i];
    function set_location(v:Array<Location>):Array<Location> {
        this.location = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>);
        return v;
    }
    public var value(get, set) : Array<haxe.Int64>;
    function get_value():Array<haxe.Int64> return [for (i in this.value) i];
    function set_value(v:Array<haxe.Int64>):Array<haxe.Int64> {
        this.value = ([for (i in v) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>);
        return v;
    }
    public var label(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>;
    function get_label():stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>> return this.label;
    function set_label(v:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>):stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>> {
        this.label = (v : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
        return v;
    }
    public var numLabel(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>;
    function get_numLabel():stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>> return this.numLabel;
    function set_numLabel(v:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>):stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>> {
        this.numLabel = (v : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>);
        return v;
    }
    public var numUnit(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>;
    function get_numUnit():stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>> return this.numUnit;
    function set_numUnit(v:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>):stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>> {
        this.numUnit = (v : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
        return v;
    }
    public var _locationIDX(get, set) : Array<haxe.UInt64>;
    function get__locationIDX():Array<haxe.UInt64> return [for (i in this._locationIDX) i];
    function set__locationIDX(v:Array<haxe.UInt64>):Array<haxe.UInt64> {
        this._locationIDX = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        return v;
    }
    public var _labelX(get, set) : Array<Label>;
    function get__labelX():Array<Label> return [for (i in this._labelX) i];
    function set__labelX(v:Array<Label>):Array<Label> {
        this._labelX = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.profile.Profile_Label.Label>);
        return v;
    }
    public function new(?location:Array<Location>, ?value:Array<haxe.Int64>, ?label:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>, ?numLabel:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>, ?numUnit:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>, ?_locationIDX:Array<haxe.UInt64>, ?_labelX:Array<Label>) this = new stdgo._internal.internal.profile.Profile_Sample.Sample(([for (i in location) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>), ([for (i in value) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>), (label : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>), (numLabel : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>), (numUnit : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>), ([for (i in _locationIDX) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>), ([for (i in _labelX) i] : stdgo.Slice<stdgo._internal.internal.profile.Profile_Label.Label>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
