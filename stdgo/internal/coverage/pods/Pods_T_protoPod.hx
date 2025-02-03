package stdgo.internal.coverage.pods;
@:structInit @:using(stdgo.internal.coverage.pods.Pods.T_protoPod_static_extension) abstract T_protoPod(stdgo._internal.internal.coverage.pods.Pods_T_protoPod.T_protoPod) from stdgo._internal.internal.coverage.pods.Pods_T_protoPod.T_protoPod to stdgo._internal.internal.coverage.pods.Pods_T_protoPod.T_protoPod {
    public var _mf(get, set) : String;
    function get__mf():String return this._mf;
    function set__mf(v:String):String {
        this._mf = (v : stdgo.GoString);
        return v;
    }
    public var _elements(get, set) : Array<T_fileWithAnnotations>;
    function get__elements():Array<T_fileWithAnnotations> return [for (i in this._elements) i];
    function set__elements(v:Array<T_fileWithAnnotations>):Array<T_fileWithAnnotations> {
        this._elements = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_T_fileWithAnnotations.T_fileWithAnnotations>);
        return v;
    }
    public function new(?_mf:String, ?_elements:Array<T_fileWithAnnotations>) this = new stdgo._internal.internal.coverage.pods.Pods_T_protoPod.T_protoPod((_mf : stdgo.GoString), ([for (i in _elements) i] : stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_T_fileWithAnnotations.T_fileWithAnnotations>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
