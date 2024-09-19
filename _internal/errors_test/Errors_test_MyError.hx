package _internal.errors_test;
@:structInit @:using(_internal.errors_test.Errors_test_MyError_static_extension.MyError_static_extension) class MyError {
    public var when : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var what : stdgo.GoString = "";
    public function new(?when:stdgo._internal.time.Time_Time.Time, ?what:stdgo.GoString) {
        if (when != null) this.when = when;
        if (what != null) this.what = what;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MyError(when, what);
    }
}
