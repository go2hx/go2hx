package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.GobTestIgnoreEncoder_static_extension) abstract GobTestIgnoreEncoder(stdgo._internal.encoding.gob.Gob_GobTestIgnoreEncoder.GobTestIgnoreEncoder) from stdgo._internal.encoding.gob.Gob_GobTestIgnoreEncoder.GobTestIgnoreEncoder to stdgo._internal.encoding.gob.Gob_GobTestIgnoreEncoder.GobTestIgnoreEncoder {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?x:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_GobTestIgnoreEncoder.GobTestIgnoreEncoder((x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
