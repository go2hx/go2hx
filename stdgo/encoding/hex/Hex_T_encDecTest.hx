package stdgo.encoding.hex;
@:structInit @:using(stdgo.encoding.hex.Hex.T_encDecTest_static_extension) abstract T_encDecTest(stdgo._internal.encoding.hex.Hex_T_encDecTest.T_encDecTest) from stdgo._internal.encoding.hex.Hex_T_encDecTest.T_encDecTest to stdgo._internal.encoding.hex.Hex_T_encDecTest.T_encDecTest {
    public var _enc(get, set) : String;
    function get__enc():String return this._enc;
    function set__enc(v:String):String {
        this._enc = (v : stdgo.GoString);
        return v;
    }
    public var _dec(get, set) : Array<std.UInt>;
    function get__dec():Array<std.UInt> return [for (i in this._dec) i];
    function set__dec(v:Array<std.UInt>):Array<std.UInt> {
        this._dec = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_enc:String, ?_dec:Array<std.UInt>) this = new stdgo._internal.encoding.hex.Hex_T_encDecTest.T_encDecTest((_enc : stdgo.GoString), ([for (i in _dec) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
