package stdgo.sort;
@:structInit @:using(stdgo.sort.Sort.T_reverse_static_extension) abstract T_reverse(stdgo._internal.sort.Sort_T_reverse.T_reverse) from stdgo._internal.sort.Sort_T_reverse.T_reverse to stdgo._internal.sort.Sort_T_reverse.T_reverse {
    public var interface_(get, set) : Interface;
    function get_interface_():Interface return this.interface_;
    function set_interface_(v:Interface):Interface {
        this.interface_ = v;
        return v;
    }
    public function new(?interface_:Interface) this = new stdgo._internal.sort.Sort_T_reverse.T_reverse(interface_);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
