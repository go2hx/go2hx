package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _makeSingleStringReplacer(_pattern:stdgo.GoString, _value:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer> {
        return (stdgo.Go.setRef(({ _finder : stdgo._internal.strings.Strings__makeStringFinder._makeStringFinder(_pattern?.__copy__()), _value : _value?.__copy__() } : stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer)) : stdgo.Ref<stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer>);
    }
