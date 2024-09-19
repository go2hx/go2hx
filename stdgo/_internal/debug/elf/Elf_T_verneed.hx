package stdgo._internal.debug.elf;
@:structInit class T_verneed {
    public var file : stdgo.GoString = "";
    public var name : stdgo.GoString = "";
    public function new(?file:stdgo.GoString, ?name:stdgo.GoString) {
        if (file != null) this.file = file;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_verneed(file, name);
    }
}
