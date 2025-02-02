package stdgo._internal.strings;
function _makeSingleStringReplacer(_pattern:stdgo.GoString, _value:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer> {
        return (stdgo.Go.setRef(({ _finder : stdgo._internal.strings.Strings__makeStringFinder._makeStringFinder(_pattern?.__copy__()), _value : _value?.__copy__() } : stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer)) : stdgo.Ref<stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer>);
    }
