package stdgo._internal.log;
function fatalf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        stdgo._internal.log.Log__std._std.output((2 : stdgo.GoInt), stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>))?.__copy__());
        Sys.exit((1 : stdgo.GoInt));
    }