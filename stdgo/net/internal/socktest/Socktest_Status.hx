package stdgo.net.internal.socktest;
@:structInit @:using(stdgo.net.internal.socktest.Socktest.Status_static_extension) abstract Status(stdgo._internal.net.internal.socktest.Socktest_Status.Status) from stdgo._internal.net.internal.socktest.Socktest_Status.Status to stdgo._internal.net.internal.socktest.Socktest_Status.Status {
    public var cookie(get, set) : Cookie;
    function get_cookie():Cookie return this.cookie;
    function set_cookie(v:Cookie):Cookie {
        this.cookie = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public var socketErr(get, set) : stdgo.Error;
    function get_socketErr():stdgo.Error return this.socketErr;
    function set_socketErr(v:stdgo.Error):stdgo.Error {
        this.socketErr = (v : stdgo.Error);
        return v;
    }
    public function new(?cookie:Cookie, ?err:stdgo.Error, ?socketErr:stdgo.Error) this = new stdgo._internal.net.internal.socktest.Socktest_Status.Status(cookie, (err : stdgo.Error), (socketErr : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
