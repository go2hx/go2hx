package stdgo._internal.sort;
@:structInit @:using(stdgo._internal.sort.Sort_t_reverse_static_extension.T_reverse_static_extension) class T_reverse {
    @:embedded
    public var interface_ : stdgo._internal.sort.Sort_interface.Interface = (null : stdgo._internal.sort.Sort_interface.Interface);
    public function new(?interface_:stdgo._internal.sort.Sort_interface.Interface) {
        if (interface_ != null) this.interface_ = interface_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_len():() -> stdgo.GoInt return @:check31 (this.interface_ ?? throw "null pointer dereference").len;
    public var swap(get, never) : (stdgo.GoInt, stdgo.GoInt) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_swap():(stdgo.GoInt, stdgo.GoInt) -> Void return @:check31 (this.interface_ ?? throw "null pointer dereference").swap;
    public function __copy__() {
        return new T_reverse(interface_);
    }
}
