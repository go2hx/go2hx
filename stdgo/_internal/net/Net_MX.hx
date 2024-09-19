package stdgo._internal.net;
@:structInit class MX {
    public var host : stdgo.GoString = "";
    public var pref : stdgo.GoUInt16 = 0;
    public function new(?host:stdgo.GoString, ?pref:stdgo.GoUInt16) {
        if (host != null) this.host = host;
        if (pref != null) this.pref = pref;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MX(host, pref);
    }
}