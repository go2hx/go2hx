package stdgo._internal.regexp;
var _findTests : stdgo.Slice<stdgo._internal.regexp.Regexp_FindTest.FindTest> = (new stdgo.Slice<stdgo._internal.regexp.Regexp_FindTest.FindTest>(85, 85, ...[
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("^abcdefg" : stdgo.GoString), ("abcdefg" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (7 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("a+" : stdgo.GoString), ("baaab" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("abcd.." : stdgo.GoString), ("abcdef" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("a" : stdgo.GoString), ("a" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("x" : stdgo.GoString), ("y" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("b" : stdgo.GoString), ("abc" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("." : stdgo.GoString), ("a" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest((".*" : stdgo.GoString), ("abcdef" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("^" : stdgo.GoString), ("abcde" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("$" : stdgo.GoString), ("abcde" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (5 : stdgo.GoInt), (5 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("^abcd$" : stdgo.GoString), ("abcd" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("^bcd\'" : stdgo.GoString), ("abcdef" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("^abcd$" : stdgo.GoString), ("abcde" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("a+" : stdgo.GoString), ("baaab" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("a*" : stdgo.GoString), ("baaab" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((3 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (5 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[a-z]+" : stdgo.GoString), ("abcd" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[^a-z]+" : stdgo.GoString), ("ab1234cd" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (2 : stdgo.GoInt), (6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[a\\-\\]z]+" : stdgo.GoString), ("az]-bcz" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((2 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[^\\n]+" : stdgo.GoString), ("abcd\n" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[日本語]+" : stdgo.GoString), ("日本語日本語" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (18 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("日本語+" : stdgo.GoString), ("日本語" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (9 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("日本語+" : stdgo.GoString), ("日本語語語語" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (18 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("()" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(a)" : stdgo.GoString), ("a" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(.)(.)" : stdgo.GoString), ("日a" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(.*)" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(.*)" : stdgo.GoString), ("abcd" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(..)(..)" : stdgo.GoString), ("abcd" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(([^xyz]*)(d))" : stdgo.GoString), ("abcd" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("((a|b|c)*(d))" : stdgo.GoString), ("abcd" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(((a|b|c)*)(d))" : stdgo.GoString), ("abcd" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt),
(0 : stdgo.GoInt),
(4 : stdgo.GoInt),
(0 : stdgo.GoInt),
(4 : stdgo.GoInt),
(0 : stdgo.GoInt),
(3 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("\\a\\f\\n\\r\\t\\v" : stdgo.GoString), ("\x07\x0C\n\r\t\x0B" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[\\a\\f\\n\\r\\t\\v]+" : stdgo.GoString), ("\x07\x0C\n\r\t\x0B" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("a*(|(b))c*" : stdgo.GoString), ("aacc" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (-1 : stdgo.GoInt), (-1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(.*).*" : stdgo.GoString), ("ab" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[.]" : stdgo.GoString), ("." : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("/$" : stdgo.GoString), ("/abc/" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("/$" : stdgo.GoString), ("/abc" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("." : stdgo.GoString), ("abc" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((3 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(.)" : stdgo.GoString), ("abc" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((3 : stdgo.GoInt),
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest((".(.)" : stdgo.GoString), ("abcd" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((2 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("ab*" : stdgo.GoString), ("abbaab" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((3 : stdgo.GoInt), (0 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (4 : stdgo.GoInt), (6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("a(b*)" : stdgo.GoString), ("abbaab" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((3 : stdgo.GoInt),
(0 : stdgo.GoInt),
(3 : stdgo.GoInt),
(1 : stdgo.GoInt),
(3 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(4 : stdgo.GoInt),
(4 : stdgo.GoInt),
(4 : stdgo.GoInt),
(6 : stdgo.GoInt),
(5 : stdgo.GoInt),
(6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("ab$" : stdgo.GoString), ("cab" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("axxb$" : stdgo.GoString), ("axxcb" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("data" : stdgo.GoString), ("daXY data" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (5 : stdgo.GoInt), (9 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("da(.)a$" : stdgo.GoString), ("daXY data" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (5 : stdgo.GoInt), (9 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("zx+" : stdgo.GoString), ("zzx" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("ab$" : stdgo.GoString), ("abcab" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (3 : stdgo.GoInt), (5 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(aa)*$" : stdgo.GoString), ("a" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (-1 : stdgo.GoInt), (-1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(?:.|(?:.a))" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(?:A(?:A|a))" : stdgo.GoString), ("Aa" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(?:A|(?:A|a))" : stdgo.GoString), ("a" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(a){0}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (-1 : stdgo.GoInt), (-1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(?-s)(?:(?:^).)" : stdgo.GoString), ("\n" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(?s)(?:(?:^).)" : stdgo.GoString), ("\n" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(?:(?:^).)" : stdgo.GoString), ("\n" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("\\b" : stdgo.GoString), ("x" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((2 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("\\b" : stdgo.GoString), ("xx" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((2 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("\\b" : stdgo.GoString), ("x y" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((4 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("\\b" : stdgo.GoString), ("xx yy" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((4 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (5 : stdgo.GoInt), (5 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("\\B" : stdgo.GoString), ("x" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("\\B" : stdgo.GoString), ("xx" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("\\B" : stdgo.GoString), ("x y" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("\\B" : stdgo.GoString), ("xx yy" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((2 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(|a)*" : stdgo.GoString), ("aa" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((3 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(1 : stdgo.GoInt),
(1 : stdgo.GoInt),
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(2 : stdgo.GoInt),
(2 : stdgo.GoInt),
(2 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[^\\S\\s]" : stdgo.GoString), ("abcd" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[^\\S[:space:]]" : stdgo.GoString), ("abcd" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[^\\D\\d]" : stdgo.GoString), ("abcd" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[^\\D[:digit:]]" : stdgo.GoString), ("abcd" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(?i)\\W" : stdgo.GoString), ("x" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(?i)\\W" : stdgo.GoString), ("k" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("(?i)\\W" : stdgo.GoString), ("s" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("\\!\\\"\\#\\$\\%\\&\\\'\\(\\)\\*\\+\\,\\-\\.\\/\\:\\;\\<\\=\\>\\?\\@\\[\\\\\\]\\^\\_\\{\\|\\}\\~" : stdgo.GoString), ("!\"#$%&\'()*+,-./:;<=>?@[\\]^_{|}~" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (31 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[\\!\\\"\\#\\$\\%\\&\\\'\\(\\)\\*\\+\\,\\-\\.\\/\\:\\;\\<\\=\\>\\?\\@\\[\\\\\\]\\^\\_\\{\\|\\}\\~]+" : stdgo.GoString), ("!\"#$%&\'()*+,-./:;<=>?@[\\]^_{|}~" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (31 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("\\`" : stdgo.GoString), ("`" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[\\`]+" : stdgo.GoString), ("`" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("�" : stdgo.GoString), stdgo.Go.str(255)?.__copy__(), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("�" : stdgo.GoString), stdgo.Go.str("hello", 255, "world")?.__copy__(), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest((".*" : stdgo.GoString), stdgo.Go.str("hello", 255, "world")?.__copy__(), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (11 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("\\x{fffd}" : stdgo.GoString), stdgo.Go.str(194, 0)?.__copy__(), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[�]" : stdgo.GoString), stdgo.Go.str(255)?.__copy__(), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("[\\x{fffd}]" : stdgo.GoString), stdgo.Go.str(194, 0)?.__copy__(), stdgo._internal.regexp.Regexp__build._build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest),
(new stdgo._internal.regexp.Regexp_FindTest.FindTest(("." : stdgo.GoString), ("qwertyuiopasdfghjklzxcvbnm1234567890" : stdgo.GoString), stdgo._internal.regexp.Regexp__build._build((36 : stdgo.GoInt),
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(4 : stdgo.GoInt),
(5 : stdgo.GoInt),
(5 : stdgo.GoInt),
(6 : stdgo.GoInt),
(6 : stdgo.GoInt),
(7 : stdgo.GoInt),
(7 : stdgo.GoInt),
(8 : stdgo.GoInt),
(8 : stdgo.GoInt),
(9 : stdgo.GoInt),
(9 : stdgo.GoInt),
(10 : stdgo.GoInt),
(10 : stdgo.GoInt),
(11 : stdgo.GoInt),
(11 : stdgo.GoInt),
(12 : stdgo.GoInt),
(12 : stdgo.GoInt),
(13 : stdgo.GoInt),
(13 : stdgo.GoInt),
(14 : stdgo.GoInt),
(14 : stdgo.GoInt),
(15 : stdgo.GoInt),
(15 : stdgo.GoInt),
(16 : stdgo.GoInt),
(16 : stdgo.GoInt),
(17 : stdgo.GoInt),
(17 : stdgo.GoInt),
(18 : stdgo.GoInt),
(18 : stdgo.GoInt),
(19 : stdgo.GoInt),
(19 : stdgo.GoInt),
(20 : stdgo.GoInt),
(20 : stdgo.GoInt),
(21 : stdgo.GoInt),
(21 : stdgo.GoInt),
(22 : stdgo.GoInt),
(22 : stdgo.GoInt),
(23 : stdgo.GoInt),
(23 : stdgo.GoInt),
(24 : stdgo.GoInt),
(24 : stdgo.GoInt),
(25 : stdgo.GoInt),
(25 : stdgo.GoInt),
(26 : stdgo.GoInt),
(26 : stdgo.GoInt),
(27 : stdgo.GoInt),
(27 : stdgo.GoInt),
(28 : stdgo.GoInt),
(28 : stdgo.GoInt),
(29 : stdgo.GoInt),
(29 : stdgo.GoInt),
(30 : stdgo.GoInt),
(30 : stdgo.GoInt),
(31 : stdgo.GoInt),
(31 : stdgo.GoInt),
(32 : stdgo.GoInt),
(32 : stdgo.GoInt),
(33 : stdgo.GoInt),
(33 : stdgo.GoInt),
(34 : stdgo.GoInt),
(34 : stdgo.GoInt),
(35 : stdgo.GoInt),
(35 : stdgo.GoInt),
(36 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp_FindTest.FindTest)].concat([for (i in 85 ... (85 > 85 ? 85 : 85 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_FindTest.FindTest)])) : stdgo.Slice<stdgo._internal.regexp.Regexp_FindTest.FindTest>);
