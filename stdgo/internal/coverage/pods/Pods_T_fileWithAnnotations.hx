package stdgo.internal.coverage.pods;
@:structInit @:using(stdgo.internal.coverage.pods.Pods.T_fileWithAnnotations_static_extension) abstract T_fileWithAnnotations(stdgo._internal.internal.coverage.pods.Pods_T_fileWithAnnotations.T_fileWithAnnotations) from stdgo._internal.internal.coverage.pods.Pods_T_fileWithAnnotations.T_fileWithAnnotations to stdgo._internal.internal.coverage.pods.Pods_T_fileWithAnnotations.T_fileWithAnnotations {
    public var _file(get, set) : String;
    function get__file():String return this._file;
    function set__file(v:String):String {
        this._file = (v : stdgo.GoString);
        return v;
    }
    public var _origin(get, set) : StdTypes.Int;
    function get__origin():StdTypes.Int return this._origin;
    function set__origin(v:StdTypes.Int):StdTypes.Int {
        this._origin = (v : stdgo.GoInt);
        return v;
    }
    public var _pid(get, set) : StdTypes.Int;
    function get__pid():StdTypes.Int return this._pid;
    function set__pid(v:StdTypes.Int):StdTypes.Int {
        this._pid = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_file:String, ?_origin:StdTypes.Int, ?_pid:StdTypes.Int) this = new stdgo._internal.internal.coverage.pods.Pods_T_fileWithAnnotations.T_fileWithAnnotations((_file : stdgo.GoString), (_origin : stdgo.GoInt), (_pid : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
