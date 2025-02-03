package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.MemberHeader_static_extension) abstract MemberHeader(stdgo._internal.internal.xcoff.Xcoff_MemberHeader.MemberHeader) from stdgo._internal.internal.xcoff.Xcoff_MemberHeader.MemberHeader to stdgo._internal.internal.xcoff.Xcoff_MemberHeader.MemberHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?name:String, ?size:haxe.UInt64) this = new stdgo._internal.internal.xcoff.Xcoff_MemberHeader.MemberHeader((name : stdgo.GoString), (size : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
