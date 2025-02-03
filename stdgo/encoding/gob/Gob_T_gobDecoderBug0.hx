package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_gobDecoderBug0_static_extension) abstract T_gobDecoderBug0(stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0) from stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0 to stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0 {
    public var _foo(get, set) : String;
    function get__foo():String return this._foo;
    function set__foo(v:String):String {
        this._foo = (v : stdgo.GoString);
        return v;
    }
    public var _bar(get, set) : String;
    function get__bar():String return this._bar;
    function set__bar(v:String):String {
        this._bar = (v : stdgo.GoString);
        return v;
    }
    public function new(?_foo:String, ?_bar:String) this = new stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0((_foo : stdgo.GoString), (_bar : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
