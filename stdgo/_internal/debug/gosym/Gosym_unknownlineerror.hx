package stdgo._internal.debug.gosym;
@:structInit @:using(stdgo._internal.debug.gosym.Gosym_unknownlineerror_static_extension.UnknownLineError_static_extension) class UnknownLineError {
    public var file : stdgo.GoString = "";
    public var line : stdgo.GoInt = 0;
    public function new(?file:stdgo.GoString, ?line:stdgo.GoInt) {
        if (file != null) this.file = file;
        if (line != null) this.line = line;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnknownLineError(file, line);
    }
}
