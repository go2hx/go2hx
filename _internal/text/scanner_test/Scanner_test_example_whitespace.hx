package _internal.text.scanner_test;
function example_whitespace():Void {
        {};
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo._internal.text.scanner.Scanner_Scanner.Scanner = ({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner), __3:stdgo.GoArray<stdgo.GoArray<stdgo.GoString>> = new stdgo.GoArray<stdgo.GoArray<stdgo.GoString>>(4, 4, ...[for (i in 0 ... 4) new stdgo.GoArray<stdgo.GoString>(4, 4, ...[for (i in 0 ... 4) ("" : stdgo.GoString)])]);
var _tsv = __3, _s = __2, _row = __1, _col = __0;
        _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("aa\tab\tac\tad\nba\tbb\tbc\tbd\nca\tcb\tcc\tcd\nda\tdb\tdc\tdd" : stdgo.GoString))));
        _s.whitespace = (_s.whitespace ^ ((1536i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        {
            var _tok = (_s.scan() : stdgo.GoInt32);
            stdgo.Go.cfor(_tok != ((-1 : stdgo.GoInt32)), _tok = _s.scan(), {
                {
                    final __value__ = _tok;
                    if (__value__ == ((10 : stdgo.GoInt32))) {
                        _row++;
                        _col = (0 : stdgo.GoInt);
                    } else if (__value__ == ((9 : stdgo.GoInt32))) {
                        _col++;
                    } else {
                        _tsv[(_row : stdgo.GoInt)][(_col : stdgo.GoInt)] = _s.tokenText()?.__copy__();
                    };
                };
            });
        };
        stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(_tsv));
    }
