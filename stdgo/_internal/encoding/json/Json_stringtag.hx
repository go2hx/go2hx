package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_stringtag_static_extension.StringTag_static_extension) class StringTag {
    @:tag("`json:\",string\"`")
    public var boolStr : Bool = false;
    @:tag("`json:\",string\"`")
    public var intStr : stdgo.GoInt64 = 0;
    @:tag("`json:\",string\"`")
    public var uintptrStr : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    @:tag("`json:\",string\"`")
    public var strStr : stdgo.GoString = "";
    @:tag("`json:\",string\"`")
    public var numberStr : stdgo._internal.encoding.json.Json_number.Number = (("" : stdgo.GoString) : stdgo._internal.encoding.json.Json_number.Number);
    public function new(?boolStr:Bool, ?intStr:stdgo.GoInt64, ?uintptrStr:stdgo.GoUIntptr, ?strStr:stdgo.GoString, ?numberStr:stdgo._internal.encoding.json.Json_number.Number) {
        if (boolStr != null) this.boolStr = boolStr;
        if (intStr != null) this.intStr = intStr;
        if (uintptrStr != null) this.uintptrStr = uintptrStr;
        if (strStr != null) this.strStr = strStr;
        if (numberStr != null) this.numberStr = numberStr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringTag(boolStr, intStr, uintptrStr, strStr, numberStr);
    }
}
