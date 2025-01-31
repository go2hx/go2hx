package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
var _invalidRegexps : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(39, 39, ...[
("(" : stdgo.GoString),
(")" : stdgo.GoString),
("(a" : stdgo.GoString),
("a)" : stdgo.GoString),
("(a))" : stdgo.GoString),
("(a|b|" : stdgo.GoString),
("a|b|)" : stdgo.GoString),
("(a|b|))" : stdgo.GoString),
("(a|b" : stdgo.GoString),
("a|b)" : stdgo.GoString),
("(a|b))" : stdgo.GoString),
("[a-z" : stdgo.GoString),
("([a-z)" : stdgo.GoString),
("[a-z)" : stdgo.GoString),
("([a-z]))" : stdgo.GoString),
("x{1001}" : stdgo.GoString),
("x{9876543210}" : stdgo.GoString),
("x{2,1}" : stdgo.GoString),
("x{1,9876543210}" : stdgo.GoString),
stdgo.Go.str(255)?.__copy__(),
stdgo.Go.str("[", 255, "]")?.__copy__(),
stdgo.Go.str("[\\", 255, "]")?.__copy__(),
stdgo.Go.str("\\", 255)?.__copy__(),
("(?P<name>a" : stdgo.GoString),
("(?P<name>" : stdgo.GoString),
("(?P<name" : stdgo.GoString),
("(?P<x y>a)" : stdgo.GoString),
("(?P<>a)" : stdgo.GoString),
("[a-Z]" : stdgo.GoString),
("(?i)[a-Z]" : stdgo.GoString),
("\\Q\\E*" : stdgo.GoString),
("a{100000}" : stdgo.GoString),
("a{100000,}" : stdgo.GoString),
("((((((((((x{2}){2}){2}){2}){2}){2}){2}){2}){2}){2})" : stdgo.GoString),
(stdgo._internal.strings.Strings_repeat.repeat(("(" : stdgo.GoString), (1000 : stdgo.GoInt)) + stdgo._internal.strings.Strings_repeat.repeat((")" : stdgo.GoString), (1000 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(),
(stdgo._internal.strings.Strings_repeat.repeat(("(?:" : stdgo.GoString), (1000 : stdgo.GoInt)) + stdgo._internal.strings.Strings_repeat.repeat((")*" : stdgo.GoString), (1000 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(),
((("(" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("(xx?)" : stdgo.GoString), (1000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("){1000}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(),
stdgo._internal.strings.Strings_repeat.repeat(("(xx?){1000}" : stdgo.GoString), (1000 : stdgo.GoInt))?.__copy__(),
stdgo._internal.strings.Strings_repeat.repeat(("\\pL" : stdgo.GoString), (27000 : stdgo.GoInt))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
