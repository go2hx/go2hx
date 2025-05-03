package stdgo._internal.log;
function panicf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L438"
        stdgo._internal.log.Log__std._std.output((2 : stdgo.GoInt), _s?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L439"
        throw stdgo.Go.toInterface(_s);
    }
