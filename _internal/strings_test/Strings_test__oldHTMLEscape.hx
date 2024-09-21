package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function _oldHTMLEscape(_s:stdgo.GoString):stdgo.GoString {
        _s = stdgo._internal.strings.Strings_replace.replace(_s?.__copy__(), ("&" : stdgo.GoString), ("&amp;" : stdgo.GoString), (-1 : stdgo.GoInt))?.__copy__();
        _s = stdgo._internal.strings.Strings_replace.replace(_s?.__copy__(), ("<" : stdgo.GoString), ("&lt;" : stdgo.GoString), (-1 : stdgo.GoInt))?.__copy__();
        _s = stdgo._internal.strings.Strings_replace.replace(_s?.__copy__(), (">" : stdgo.GoString), ("&gt;" : stdgo.GoString), (-1 : stdgo.GoInt))?.__copy__();
        _s = stdgo._internal.strings.Strings_replace.replace(_s?.__copy__(), ("\"" : stdgo.GoString), ("&quot;" : stdgo.GoString), (-1 : stdgo.GoInt))?.__copy__();
        _s = stdgo._internal.strings.Strings_replace.replace(_s?.__copy__(), ("\'" : stdgo.GoString), ("&apos;" : stdgo.GoString), (-1 : stdgo.GoInt))?.__copy__();
        return _s?.__copy__();
    }
