package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.AuxiliaryFcn_static_extension) abstract AuxiliaryFcn(stdgo._internal.internal.xcoff.Xcoff_AuxiliaryFcn.AuxiliaryFcn) from stdgo._internal.internal.xcoff.Xcoff_AuxiliaryFcn.AuxiliaryFcn to stdgo._internal.internal.xcoff.Xcoff_AuxiliaryFcn.AuxiliaryFcn {
    public var size(get, set) : haxe.Int64;
    function get_size():haxe.Int64 return this.size;
    function set_size(v:haxe.Int64):haxe.Int64 {
        this.size = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?size:haxe.Int64) this = new stdgo._internal.internal.xcoff.Xcoff_AuxiliaryFcn.AuxiliaryFcn((size : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
