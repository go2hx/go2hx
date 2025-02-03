package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Bug2_static_extension) abstract Bug2(stdgo._internal.encoding.gob.Gob_Bug2.Bug2) from stdgo._internal.encoding.gob.Gob_Bug2.Bug2 to stdgo._internal.encoding.gob.Gob_Bug2.Bug2 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var c(get, set) : stdgo.Chan<stdgo.GoInt>;
    function get_c():stdgo.Chan<stdgo.GoInt> return this.c;
    function set_c(v:stdgo.Chan<stdgo.GoInt>):stdgo.Chan<stdgo.GoInt> {
        this.c = (v : stdgo.Chan<stdgo.GoInt>);
        return v;
    }
    public var cP(get, set) : stdgo.Chan<stdgo.GoInt>;
    function get_cP():stdgo.Chan<stdgo.GoInt> return this.cP;
    function set_cP(v:stdgo.Chan<stdgo.GoInt>):stdgo.Chan<stdgo.GoInt> {
        this.cP = (v : stdgo.Ref<stdgo.Chan<stdgo.GoInt>>);
        return v;
    }
    public var f(get, set) : () -> Void;
    function get_f():() -> Void return () -> this.f();
    function set_f(v:() -> Void):() -> Void {
        this.f = v;
        return v;
    }
    public var fPP(get, set) : stdgo.Pointer<stdgo.Pointer<() -> Void>>;
    function get_fPP():stdgo.Pointer<stdgo.Pointer<() -> Void>> return () -> this.fPP();
    function set_fPP(v:stdgo.Pointer<stdgo.Pointer<() -> Void>>):stdgo.Pointer<stdgo.Pointer<() -> Void>> {
        this.fPP = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?c:stdgo.Chan<stdgo.GoInt>, ?cP:stdgo.Chan<stdgo.GoInt>, ?f:() -> Void, ?fPP:stdgo.Pointer<stdgo.Pointer<() -> Void>>) this = new stdgo._internal.encoding.gob.Gob_Bug2.Bug2((a : stdgo.GoInt), (c : stdgo.Chan<stdgo.GoInt>), (cP : stdgo.Ref<stdgo.Chan<stdgo.GoInt>>), f, fPP);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
