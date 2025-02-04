package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_u_static_extension.U_static_extension) class U {
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new U(v);
    }
}
