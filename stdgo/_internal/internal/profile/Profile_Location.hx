package stdgo._internal.internal.profile;
@:structInit @:using(stdgo._internal.internal.profile.Profile_Location_static_extension.Location_static_extension) class Location {
    public var iD : stdgo.GoUInt64 = 0;
    public var mapping : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping> = (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>);
    public var address : stdgo.GoUInt64 = 0;
    public var line : stdgo.Slice<stdgo._internal.internal.profile.Profile_Line.Line> = (null : stdgo.Slice<stdgo._internal.internal.profile.Profile_Line.Line>);
    public var isFolded : Bool = false;
    public var _mappingIDX : stdgo.GoUInt64 = 0;
    public function new(?iD:stdgo.GoUInt64, ?mapping:stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>, ?address:stdgo.GoUInt64, ?line:stdgo.Slice<stdgo._internal.internal.profile.Profile_Line.Line>, ?isFolded:Bool, ?_mappingIDX:stdgo.GoUInt64) {
        if (iD != null) this.iD = iD;
        if (mapping != null) this.mapping = mapping;
        if (address != null) this.address = address;
        if (line != null) this.line = line;
        if (isFolded != null) this.isFolded = isFolded;
        if (_mappingIDX != null) this._mappingIDX = _mappingIDX;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Location(iD, mapping, address, line, isFolded, _mappingIDX);
    }
}
