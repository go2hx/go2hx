package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.RevocationListEntry_static_extension) abstract RevocationListEntry(stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry) from stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry to stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry {
    public var raw(get, set) : Array<std.UInt>;
    function get_raw():Array<std.UInt> return [for (i in this.raw) i];
    function set_raw(v:Array<std.UInt>):Array<std.UInt> {
        this.raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var serialNumber(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_serialNumber():stdgo._internal.math.big.Big_Int_.Int_ return this.serialNumber;
    function set_serialNumber(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.serialNumber = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var revocationTime(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_revocationTime():stdgo._internal.time.Time_Time.Time return this.revocationTime;
    function set_revocationTime(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.revocationTime = v;
        return v;
    }
    public var reasonCode(get, set) : StdTypes.Int;
    function get_reasonCode():StdTypes.Int return this.reasonCode;
    function set_reasonCode(v:StdTypes.Int):StdTypes.Int {
        this.reasonCode = (v : stdgo.GoInt);
        return v;
    }
    public var extensions(get, set) : Array<Extension>;
    function get_extensions():Array<Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<Extension>):Array<Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public var extraExtensions(get, set) : Array<Extension>;
    function get_extraExtensions():Array<Extension> return [for (i in this.extraExtensions) i];
    function set_extraExtensions(v:Array<Extension>):Array<Extension> {
        this.extraExtensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public function new(?raw:Array<std.UInt>, ?serialNumber:stdgo._internal.math.big.Big_Int_.Int_, ?revocationTime:stdgo._internal.time.Time_Time.Time, ?reasonCode:StdTypes.Int, ?extensions:Array<Extension>, ?extraExtensions:Array<Extension>) this = new stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry(([for (i in raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (serialNumber : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), revocationTime, (reasonCode : stdgo.GoInt), ([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>), ([for (i in extraExtensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
