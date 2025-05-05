package stdgo._internal.encoding.gob;
function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/error.go#L24"
        stdgo._internal.encoding.gob.Gob__error_._error_(stdgo._internal.fmt.Fmt_errorf.errorf((("gob: " : stdgo.GoString) + _format?.__copy__() : stdgo.GoString)?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)));
    }
