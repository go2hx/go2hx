package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_quicsessionticketoptions_static_extension.QUICSessionTicketOptions_static_extension) class QUICSessionTicketOptions {
    public var earlyData : Bool = false;
    public function new(?earlyData:Bool) {
        if (earlyData != null) this.earlyData = earlyData;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new QUICSessionTicketOptions(earlyData);
    }
}
