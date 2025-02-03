package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_validity_static_extension) abstract T_validity(stdgo._internal.crypto.x509.X509_T_validity.T_validity) from stdgo._internal.crypto.x509.X509_T_validity.T_validity to stdgo._internal.crypto.x509.X509_T_validity.T_validity {
    public var notBefore(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_notBefore():stdgo._internal.time.Time_Time.Time return this.notBefore;
    function set_notBefore(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.notBefore = v;
        return v;
    }
    public var notAfter(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_notAfter():stdgo._internal.time.Time_Time.Time return this.notAfter;
    function set_notAfter(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.notAfter = v;
        return v;
    }
    public function new(?notBefore:stdgo._internal.time.Time_Time.Time, ?notAfter:stdgo._internal.time.Time_Time.Time) this = new stdgo._internal.crypto.x509.X509_T_validity.T_validity(notBefore, notAfter);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
