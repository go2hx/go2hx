package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function _iterateToString(_it:stdgo.Ref<stdgo._internal.reflect.Reflect_MapIter.MapIter>):stdgo.GoString {
        var _got:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        while (_it.next()) {
            var _line = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_it.key())), stdgo.Go.toInterface(stdgo.Go.asInterface(_it.value())))?.__copy__() : stdgo.GoString);
            _got = (_got.__append__(_line?.__copy__()));
        };
        stdgo._internal.sort.Sort_strings.strings(_got);
        return ((("[" : stdgo.GoString) + stdgo._internal.strings.Strings_join.join(_got, (", " : stdgo.GoString))?.__copy__() : stdgo.GoString) + ("]" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
