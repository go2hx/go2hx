package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_fileheader_static_extension.FileHeader_static_extension) class FileHeader {
    public var targetMachine : stdgo.GoUInt16 = 0;
    public function new(?targetMachine:stdgo.GoUInt16) {
        if (targetMachine != null) this.targetMachine = targetMachine;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FileHeader(targetMachine);
    }
}
