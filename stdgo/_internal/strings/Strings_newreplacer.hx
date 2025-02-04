package stdgo._internal.strings;
function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer> {
        var _oldnew = new stdgo.Slice<stdgo.GoString>(_oldnew.length, 0, ..._oldnew);
        if (((_oldnew.length) % (2 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("strings.NewReplacer: odd argument count" : stdgo.GoString));
        };
        return (stdgo.Go.setRef(({ _oldnew : ((null : stdgo.Slice<stdgo.GoString>).__append__(...(_oldnew : Array<stdgo.GoString>))) } : stdgo._internal.strings.Strings_replacer.Replacer)) : stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>);
    }
