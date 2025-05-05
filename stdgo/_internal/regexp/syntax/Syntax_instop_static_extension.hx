package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.InstOp_asInterface) class InstOp_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.regexp.syntax.Syntax_instop.InstOp):stdgo.GoString {
        @:recv var _i:stdgo._internal.regexp.syntax.Syntax_instop.InstOp = _i;
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L56"
        if (((_i : stdgo.GoUInt) >= (stdgo._internal.regexp.syntax.Syntax__instopnames._instOpNames.length : stdgo.GoUInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L57"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L59"
        return stdgo._internal.regexp.syntax.Syntax__instopnames._instOpNames[(_i : stdgo.GoInt)]?.__copy__();
    }
}
