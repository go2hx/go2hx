package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer> {
        var _oldnew = new stdgo.Slice<stdgo.GoString>(_oldnew.length, 0, ..._oldnew);
        if (((_oldnew.length) % (2 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("strings.NewReplacer: odd argument count" : stdgo.GoString));
        };
        return (stdgo.Go.setRef(({ _oldnew : ((null : stdgo.Slice<stdgo.GoString>).__append__(...(_oldnew : Array<stdgo.GoString>))) } : stdgo._internal.strings.Strings_Replacer.Replacer)) : stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer>);
    }
