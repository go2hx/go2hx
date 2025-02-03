package stdgo.encoding.base64;
@:structInit @:using(stdgo.encoding.base64.Base64.Encoding_static_extension) abstract Encoding(stdgo._internal.encoding.base64.Base64_Encoding.Encoding) from stdgo._internal.encoding.base64.Base64_Encoding.Encoding to stdgo._internal.encoding.base64.Base64_Encoding.Encoding {
    public var _encode(get, set) : haxe.ds.Vector<std.UInt>;
    function get__encode():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._encode) i]);
    function set__encode(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._encode = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _decodeMap(get, set) : haxe.ds.Vector<std.UInt>;
    function get__decodeMap():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._decodeMap) i]);
    function set__decodeMap(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._decodeMap = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _padChar(get, set) : StdTypes.Int;
    function get__padChar():StdTypes.Int return this._padChar;
    function set__padChar(v:StdTypes.Int):StdTypes.Int {
        this._padChar = (v : stdgo.GoInt32);
        return v;
    }
    public var _strict(get, set) : Bool;
    function get__strict():Bool return this._strict;
    function set__strict(v:Bool):Bool {
        this._strict = v;
        return v;
    }
    public function new(?_encode:haxe.ds.Vector<std.UInt>, ?_decodeMap:haxe.ds.Vector<std.UInt>, ?_padChar:StdTypes.Int, ?_strict:Bool) this = new stdgo._internal.encoding.base64.Base64_Encoding.Encoding(([for (i in _encode) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _decodeMap) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_padChar : stdgo.GoInt32), _strict);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
