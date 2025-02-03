package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.U_static_extension) abstract U(stdgo._internal.text.template.Template_U.U) from stdgo._internal.text.template.Template_U.U to stdgo._internal.text.template.Template_U.U {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.text.template.Template_U.U((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
