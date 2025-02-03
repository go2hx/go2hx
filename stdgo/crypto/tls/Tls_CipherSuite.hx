package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.CipherSuite_static_extension) abstract CipherSuite(stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite) from stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite to stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite {
    public var iD(get, set) : std.UInt;
    function get_iD():std.UInt return this.iD;
    function set_iD(v:std.UInt):std.UInt {
        this.iD = (v : stdgo.GoUInt16);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var supportedVersions(get, set) : Array<std.UInt>;
    function get_supportedVersions():Array<std.UInt> return [for (i in this.supportedVersions) i];
    function set_supportedVersions(v:Array<std.UInt>):Array<std.UInt> {
        this.supportedVersions = ([for (i in v) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>);
        return v;
    }
    public var insecure(get, set) : Bool;
    function get_insecure():Bool return this.insecure;
    function set_insecure(v:Bool):Bool {
        this.insecure = v;
        return v;
    }
    public function new(?iD:std.UInt, ?name:String, ?supportedVersions:Array<std.UInt>, ?insecure:Bool) this = new stdgo._internal.crypto.tls.Tls_CipherSuite.CipherSuite((iD : stdgo.GoUInt16), (name : stdgo.GoString), ([for (i in supportedVersions) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>), insecure);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
