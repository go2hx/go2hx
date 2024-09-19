package _internal.internal.profile;
@:structInit @:using(_internal.internal.profile.Profile_Location_static_extension.Location_static_extension) class Location {
    public var id : stdgo.GoUInt64 = 0;
    public var mapping : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping> = (null : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>);
    public var address : stdgo.GoUInt64 = 0;
    public var line : stdgo.Slice<_internal.internal.profile.Profile_Line.Line> = (null : stdgo.Slice<_internal.internal.profile.Profile_Line.Line>);
    public var isFolded : Bool = false;
    public var _mappingIDX : stdgo.GoUInt64 = 0;
    public function new(?id:stdgo.GoUInt64, ?mapping:stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>, ?address:stdgo.GoUInt64, ?line:stdgo.Slice<_internal.internal.profile.Profile_Line.Line>, ?isFolded:Bool, ?_mappingIDX:stdgo.GoUInt64) {
        if (id != null) this.id = id;
        if (mapping != null) this.mapping = mapping;
        if (address != null) this.address = address;
        if (line != null) this.line = line;
        if (isFolded != null) this.isFolded = isFolded;
        if (_mappingIDX != null) this._mappingIDX = _mappingIDX;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Location(id, mapping, address, line, isFolded, _mappingIDX);
    }
}
