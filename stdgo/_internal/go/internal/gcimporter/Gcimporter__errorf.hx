package stdgo._internal.go.internal.gcimporter;
function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L24"
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)));
    }
