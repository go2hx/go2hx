package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.V_static_extension) abstract V(stdgo._internal.text.template.Template_V.V) from stdgo._internal.text.template.Template_V.V to stdgo._internal.text.template.Template_V.V {
    public var _j(get, set) : StdTypes.Int;
    function get__j():StdTypes.Int return this._j;
    function set__j(v:StdTypes.Int):StdTypes.Int {
        this._j = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_j:StdTypes.Int) this = new stdgo._internal.text.template.Template_V.V((_j : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
