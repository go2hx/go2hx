package stdgo._internal.reflect;
@:structInit class SelectCase {
    public var dir : stdgo._internal.reflect.Reflect_SelectDir.SelectDir = ((0 : stdgo.GoInt) : stdgo._internal.reflect.Reflect_SelectDir.SelectDir);
    public var chan : stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
    public var send : stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
    public function new(?dir:stdgo._internal.reflect.Reflect_SelectDir.SelectDir, ?chan:stdgo._internal.reflect.Reflect_Value.Value, ?send:stdgo._internal.reflect.Reflect_Value.Value) {
        if (dir != null) this.dir = dir;
        if (chan != null) this.chan = chan;
        if (send != null) this.send = send;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SelectCase(dir, chan, send);
    }
}
