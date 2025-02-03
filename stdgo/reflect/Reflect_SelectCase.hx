package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.SelectCase_static_extension) abstract SelectCase(stdgo._internal.reflect.Reflect_SelectCase.SelectCase) from stdgo._internal.reflect.Reflect_SelectCase.SelectCase to stdgo._internal.reflect.Reflect_SelectCase.SelectCase {
    public var dir(get, set) : SelectDir;
    function get_dir():SelectDir return this.dir;
    function set_dir(v:SelectDir):SelectDir {
        this.dir = v;
        return v;
    }
    public var chan(get, set) : Value;
    function get_chan():Value return this.chan;
    function set_chan(v:Value):Value {
        this.chan = v;
        return v;
    }
    public var send(get, set) : Value;
    function get_send():Value return this.send;
    function set_send(v:Value):Value {
        this.send = v;
        return v;
    }
    public function new(?dir:SelectDir, ?chan:Value, ?send:Value) this = new stdgo._internal.reflect.Reflect_SelectCase.SelectCase(dir, chan, send);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
