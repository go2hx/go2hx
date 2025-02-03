package stdgo.os;
@:structInit @:using(stdgo.os.Os.T_fileWithoutReadFrom_static_extension) abstract T_fileWithoutReadFrom(stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom) from stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom to stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom {
    public var file(get, set) : File;
    function get_file():File return this.file;
    function set_file(v:File):File {
        this.file = (v : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return v;
    }
    public function new(?file:File) this = new stdgo._internal.os.Os_T_fileWithoutReadFrom.T_fileWithoutReadFrom((file : stdgo.Ref<stdgo._internal.os.Os_File.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
