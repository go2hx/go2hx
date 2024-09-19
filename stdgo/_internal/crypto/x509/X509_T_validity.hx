package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit class T_validity {
    public var notBefore : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var notAfter : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public function new(?notBefore:stdgo._internal.time.Time_Time.Time, ?notAfter:stdgo._internal.time.Time_Time.Time) {
        if (notBefore != null) this.notBefore = notBefore;
        if (notAfter != null) this.notAfter = notAfter;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_validity(notBefore, notAfter);
    }
}
