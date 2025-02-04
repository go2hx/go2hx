package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_validity_static_extension.T_validity_static_extension) class T_validity {
    public var notBefore : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var notAfter : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public function new(?notBefore:stdgo._internal.time.Time_time.Time, ?notAfter:stdgo._internal.time.Time_time.Time) {
        if (notBefore != null) this.notBefore = notBefore;
        if (notAfter != null) this.notAfter = notAfter;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_validity(notBefore, notAfter);
    }
}
