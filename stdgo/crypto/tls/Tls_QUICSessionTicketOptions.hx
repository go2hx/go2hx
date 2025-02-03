package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.QUICSessionTicketOptions_static_extension) abstract QUICSessionTicketOptions(stdgo._internal.crypto.tls.Tls_QUICSessionTicketOptions.QUICSessionTicketOptions) from stdgo._internal.crypto.tls.Tls_QUICSessionTicketOptions.QUICSessionTicketOptions to stdgo._internal.crypto.tls.Tls_QUICSessionTicketOptions.QUICSessionTicketOptions {
    public var earlyData(get, set) : Bool;
    function get_earlyData():Bool return this.earlyData;
    function set_earlyData(v:Bool):Bool {
        this.earlyData = v;
        return v;
    }
    public function new(?earlyData:Bool) this = new stdgo._internal.crypto.tls.Tls_QUICSessionTicketOptions.QUICSessionTicketOptions(earlyData);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
