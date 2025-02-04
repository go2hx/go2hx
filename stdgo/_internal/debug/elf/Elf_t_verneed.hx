package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_t_verneed_static_extension.T_verneed_static_extension) class T_verneed {
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
