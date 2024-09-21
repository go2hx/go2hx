package _internal.slices_test;
function exampleIsSortedFunc():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("VERA" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _isSortedInsensitive = (stdgo._internal.slices.Slices_isSortedFunc.isSortedFunc(_names, function(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
            return stdgo._internal.cmp.Cmp_compare.compare(stdgo._internal.strings.Strings_toLower.toLower(_a?.__copy__())?.__copy__(), stdgo._internal.strings.Strings_toLower.toLower(_b?.__copy__())?.__copy__());
        }) : Bool);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_isSortedInsensitive));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.slices.Slices_isSorted.isSorted(_names)));
    }
