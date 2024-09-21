package _internal.slices_test;
function exampleCompactFunc():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("bob" : stdgo.GoString), ("Bob" : stdgo.GoString), ("alice" : stdgo.GoString), ("Vera" : stdgo.GoString), ("VERA" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        _names = stdgo._internal.slices.Slices_compactFunc.compactFunc(_names, function(_a:stdgo.GoString, _b:stdgo.GoString):Bool {
            return stdgo._internal.strings.Strings_toLower.toLower(_a?.__copy__()) == (stdgo._internal.strings.Strings_toLower.toLower(_b?.__copy__()));
        });
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_names));
    }
