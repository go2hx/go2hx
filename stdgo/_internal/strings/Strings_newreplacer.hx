package stdgo._internal.strings;
function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer> {
        var _oldnew = new stdgo.Slice<stdgo.GoString>(_oldnew.length, 0, ..._oldnew);
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L33"
        if (((_oldnew.length) % (2 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L34"
            throw stdgo.Go.toInterface(("strings.NewReplacer: odd argument count" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L36"
        return (stdgo.Go.setRef(({ _oldnew : ((null : stdgo.Slice<stdgo.GoString>).__append__(...(_oldnew : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.strings.Strings_replacer.Replacer)) : stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>);
    }
