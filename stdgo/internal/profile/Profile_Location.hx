package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.Location_static_extension) abstract Location(stdgo._internal.internal.profile.Profile_Location.Location) from stdgo._internal.internal.profile.Profile_Location.Location to stdgo._internal.internal.profile.Profile_Location.Location {
    public var iD(get, set) : haxe.UInt64;
    function get_iD():haxe.UInt64 return this.iD;
    function set_iD(v:haxe.UInt64):haxe.UInt64 {
        this.iD = (v : stdgo.GoUInt64);
        return v;
    }
    public var mapping(get, set) : Mapping;
    function get_mapping():Mapping return this.mapping;
    function set_mapping(v:Mapping):Mapping {
        this.mapping = (v : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>);
        return v;
    }
    public var address(get, set) : haxe.UInt64;
    function get_address():haxe.UInt64 return this.address;
    function set_address(v:haxe.UInt64):haxe.UInt64 {
        this.address = (v : stdgo.GoUInt64);
        return v;
    }
    public var line(get, set) : Array<Line>;
    function get_line():Array<Line> return [for (i in this.line) i];
    function set_line(v:Array<Line>):Array<Line> {
        this.line = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.profile.Profile_Line.Line>);
        return v;
    }
    public var isFolded(get, set) : Bool;
    function get_isFolded():Bool return this.isFolded;
    function set_isFolded(v:Bool):Bool {
        this.isFolded = v;
        return v;
    }
    public var _mappingIDX(get, set) : haxe.UInt64;
    function get__mappingIDX():haxe.UInt64 return this._mappingIDX;
    function set__mappingIDX(v:haxe.UInt64):haxe.UInt64 {
        this._mappingIDX = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?iD:haxe.UInt64, ?mapping:Mapping, ?address:haxe.UInt64, ?line:Array<Line>, ?isFolded:Bool, ?_mappingIDX:haxe.UInt64) this = new stdgo._internal.internal.profile.Profile_Location.Location((iD : stdgo.GoUInt64), (mapping : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>), (address : stdgo.GoUInt64), ([for (i in line) i] : stdgo.Slice<stdgo._internal.internal.profile.Profile_Line.Line>), isFolded, (_mappingIDX : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
