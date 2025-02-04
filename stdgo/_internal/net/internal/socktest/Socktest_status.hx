package stdgo._internal.net.internal.socktest;
@:structInit @:using(stdgo._internal.net.internal.socktest.Socktest_status_static_extension.Status_static_extension) class Status {
    public var cookie : stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie = ((0 : stdgo.GoUInt64) : stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie);
    public var err : stdgo.Error = (null : stdgo.Error);
    public var socketErr : stdgo.Error = (null : stdgo.Error);
    public function new(?cookie:stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie, ?err:stdgo.Error, ?socketErr:stdgo.Error) {
        if (cookie != null) this.cookie = cookie;
        if (err != null) this.err = err;
        if (socketErr != null) this.socketErr = socketErr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Status(cookie, err, socketErr);
    }
}
