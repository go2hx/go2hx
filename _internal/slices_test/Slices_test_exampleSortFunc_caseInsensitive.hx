package _internal.slices_test;
function exampleSortFunc_caseInsensitive():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("Bob" : stdgo.GoString), ("alice" : stdgo.GoString), ("VERA" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.slices.Slices_sortFunc.sortFunc(_names, function(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
            return stdgo._internal.cmp.Cmp_compare.compare(stdgo._internal.strings.Strings_toLower.toLower(_a?.__copy__())?.__copy__(), stdgo._internal.strings.Strings_toLower.toLower(_b?.__copy__())?.__copy__());
        });
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_names));
    }
