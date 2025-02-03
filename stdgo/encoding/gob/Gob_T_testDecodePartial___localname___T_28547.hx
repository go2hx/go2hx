package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testDecodePartial___localname___T_28547_static_extension) abstract T_testDecodePartial___localname___T_28547(stdgo._internal.encoding.gob.Gob_T_testDecodePartial___localname___T_28547.T_testDecodePartial___localname___T_28547) from stdgo._internal.encoding.gob.Gob_T_testDecodePartial___localname___T_28547.T_testDecodePartial___localname___T_28547 to stdgo._internal.encoding.gob.Gob_T_testDecodePartial___localname___T_28547.T_testDecodePartial___localname___T_28547 {
    public var x(get, set) : Array<StdTypes.Int>;
    function get_x():Array<StdTypes.Int> return [for (i in this.x) i];
    function set_x(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.x = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var y(get, set) : String;
    function get_y():String return this.y;
    function set_y(v:String):String {
        this.y = (v : stdgo.GoString);
        return v;
    }
    public function new(?x:Array<StdTypes.Int>, ?y:String) this = new stdgo._internal.encoding.gob.Gob_T_testDecodePartial___localname___T_28547.T_testDecodePartial___localname___T_28547(([for (i in x) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), (y : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
