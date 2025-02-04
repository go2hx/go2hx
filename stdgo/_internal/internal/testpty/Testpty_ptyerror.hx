package stdgo._internal.internal.testpty;
@:structInit @:using(stdgo._internal.internal.testpty.Testpty_ptyerror_static_extension.PtyError_static_extension) class PtyError {
    public var funcName : stdgo.GoString = "";
    public var errorString : stdgo.GoString = "";
    public var errno : stdgo.Error = (null : stdgo.Error);
    public function new(?funcName:stdgo.GoString, ?errorString:stdgo.GoString, ?errno:stdgo.Error) {
        if (funcName != null) this.funcName = funcName;
        if (errorString != null) this.errorString = errorString;
        if (errno != null) this.errno = errno;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PtyError(funcName, errorString, errno);
    }
}
