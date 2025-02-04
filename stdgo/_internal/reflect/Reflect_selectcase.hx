package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_selectcase_static_extension.SelectCase_static_extension) class SelectCase {
    public var dir : stdgo._internal.reflect.Reflect_selectdir.SelectDir = ((0 : stdgo.GoInt) : stdgo._internal.reflect.Reflect_selectdir.SelectDir);
    public var chan : stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
    public var send : stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
    public function new(?dir:stdgo._internal.reflect.Reflect_selectdir.SelectDir, ?chan:stdgo._internal.reflect.Reflect_value.Value, ?send:stdgo._internal.reflect.Reflect_value.Value) {
        if (dir != null) this.dir = dir;
        if (chan != null) this.chan = chan;
        if (send != null) this.send = send;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SelectCase(dir, chan, send);
    }
}
