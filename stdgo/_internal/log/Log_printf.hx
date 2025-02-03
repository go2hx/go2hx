package stdgo._internal.log;
function printf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:check2r stdgo._internal.log.Log__std._std._output((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr), (2 : stdgo.GoInt), function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
            return stdgo._internal.fmt.Fmt_appendf.appendf(_b, _format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>));
        });
    }
