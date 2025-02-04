package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_loop_static_extension.Loop_static_extension) class Loop {
    @:tag("`json:\",omitempty\"`")
    public var loop1 : stdgo.GoInt = 0;
    @:tag("`json:\",omitempty\"`")
    public var loop2 : stdgo.GoInt = 0;
    @:embedded
    public var loop : stdgo.Ref<stdgo._internal.encoding.json.Json_loop.Loop> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_loop.Loop>);
    public function new(?loop1:stdgo.GoInt, ?loop2:stdgo.GoInt, ?loop:stdgo.Ref<stdgo._internal.encoding.json.Json_loop.Loop>) {
        if (loop1 != null) this.loop1 = loop1;
        if (loop2 != null) this.loop2 = loop2;
        if (loop != null) this.loop = loop;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Loop(loop1, loop2, loop);
    }
}
