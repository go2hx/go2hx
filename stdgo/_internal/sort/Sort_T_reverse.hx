package stdgo._internal.sort;
@:structInit @:using(stdgo._internal.sort.Sort_T_reverse_static_extension.T_reverse_static_extension) class T_reverse {
    @:embedded
    public var interface_ : stdgo._internal.sort.Sort_Interface.Interface = (null : stdgo._internal.sort.Sort_Interface.Interface);
    public function new(?interface_:stdgo._internal.sort.Sort_Interface.Interface) {
        if (interface_ != null) this.interface_ = interface_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_len():() -> stdgo.GoInt return @:check3 (this.interface_ ?? throw "null pointer derefrence").len;
    public var swap(get, never) : (stdgo.GoInt, stdgo.GoInt) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_swap():(stdgo.GoInt, stdgo.GoInt) -> Void return @:check3 (this.interface_ ?? throw "null pointer derefrence").swap;
    public function __copy__() {
        return new T_reverse(interface_);
    }
}
