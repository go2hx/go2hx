package stdgo._internal.internal.xcoff;
@:structInit class FileHeader {
    public var targetMachine : stdgo.GoUInt16 = 0;
    public function new(?targetMachine:stdgo.GoUInt16) {
        if (targetMachine != null) this.targetMachine = targetMachine;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FileHeader(targetMachine);
    }
}
