package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.W_static_extension) abstract W(stdgo._internal.text.template.Template_W.W) from stdgo._internal.text.template.Template_W.W to stdgo._internal.text.template.Template_W.W {
    public var _k(get, set) : StdTypes.Int;
    function get__k():StdTypes.Int return this._k;
    function set__k(v:StdTypes.Int):StdTypes.Int {
        this._k = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_k:StdTypes.Int) this = new stdgo._internal.text.template.Template_W.W((_k : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
