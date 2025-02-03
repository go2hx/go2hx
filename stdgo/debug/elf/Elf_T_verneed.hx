package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.T_verneed_static_extension) abstract T_verneed(stdgo._internal.debug.elf.Elf_T_verneed.T_verneed) from stdgo._internal.debug.elf.Elf_T_verneed.T_verneed to stdgo._internal.debug.elf.Elf_T_verneed.T_verneed {
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = (v : stdgo.GoString);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?file:String, ?name:String) this = new stdgo._internal.debug.elf.Elf_T_verneed.T_verneed((file : stdgo.GoString), (name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
