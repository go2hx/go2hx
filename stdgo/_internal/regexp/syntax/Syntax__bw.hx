package stdgo._internal.regexp.syntax;
function _bw(_b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L291"
        for (__1 => _s in _args) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L292"
            _b.writeString(_s?.__copy__());
        };
    }
