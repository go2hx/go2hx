package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.StringTag_static_extension) abstract StringTag(stdgo._internal.encoding.json.Json_StringTag.StringTag) from stdgo._internal.encoding.json.Json_StringTag.StringTag to stdgo._internal.encoding.json.Json_StringTag.StringTag {
    public var boolStr(get, set) : Bool;
    function get_boolStr():Bool return this.boolStr;
    function set_boolStr(v:Bool):Bool {
        this.boolStr = v;
        return v;
    }
    public var intStr(get, set) : haxe.Int64;
    function get_intStr():haxe.Int64 return this.intStr;
    function set_intStr(v:haxe.Int64):haxe.Int64 {
        this.intStr = (v : stdgo.GoInt64);
        return v;
    }
    public var uintptrStr(get, set) : stdgo.GoUIntptr;
    function get_uintptrStr():stdgo.GoUIntptr return this.uintptrStr;
    function set_uintptrStr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.uintptrStr = (v : stdgo.GoUIntptr);
        return v;
    }
    public var strStr(get, set) : String;
    function get_strStr():String return this.strStr;
    function set_strStr(v:String):String {
        this.strStr = (v : stdgo.GoString);
        return v;
    }
    public var numberStr(get, set) : Number;
    function get_numberStr():Number return this.numberStr;
    function set_numberStr(v:Number):Number {
        this.numberStr = v;
        return v;
    }
    public function new(?boolStr:Bool, ?intStr:haxe.Int64, ?uintptrStr:stdgo.GoUIntptr, ?strStr:String, ?numberStr:Number) this = new stdgo._internal.encoding.json.Json_StringTag.StringTag(boolStr, (intStr : stdgo.GoInt64), (uintptrStr : stdgo.GoUIntptr), (strStr : stdgo.GoString), numberStr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
