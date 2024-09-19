package stdgo._internal.sort;
@:structInit @:using(stdgo._internal.sort.Sort_T_reverse_static_extension.T_reverse_static_extension) class T_reverse {
    @:embedded
    public var interface_ : stdgo._internal.sort.Sort_Interface.Interface = (null : stdgo._internal.sort.Sort_Interface.Interface);
    public function new(?interface_:stdgo._internal.sort.Sort_Interface.Interface) {
        if (interface_ != null) this.interface_ = interface_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function len():stdgo.GoInt return this.interface_.len();
    @:embedded
    public function swap(_i:stdgo.GoInt, _j:stdgo.GoInt) this.interface_.swap(_i, _j);
    public function __copy__() {
        return new T_reverse(interface_);
    }
}
