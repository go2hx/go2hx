package stdgo._internal.internal.pkgbits;
function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/support.go#L16"
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)));
    }
