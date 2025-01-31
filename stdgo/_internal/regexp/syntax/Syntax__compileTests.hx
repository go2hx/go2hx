package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
var _compileTests : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1> = (new stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1>(16, 16, ...[
({ regexp : ("a" : stdgo.GoString), prog : ("  0\tfail\n  1*\trune1 \"a\" -> 2\n  2\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : ("[A-M][n-z]" : stdgo.GoString), prog : ("  0\tfail\n  1*\trune \"AM\" -> 2\n  2\trune \"nz\" -> 3\n  3\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : stdgo.Go.str()?.__copy__(), prog : ("  0\tfail\n  1*\tnop -> 2\n  2\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : ("a?" : stdgo.GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 3\n  2*\talt -> 1, 3\n  3\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : ("a??" : stdgo.GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 3\n  2*\talt -> 3, 1\n  3\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : ("a+" : stdgo.GoString), prog : ("  0\tfail\n  1*\trune1 \"a\" -> 2\n  2\talt -> 1, 3\n  3\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : ("a+?" : stdgo.GoString), prog : ("  0\tfail\n  1*\trune1 \"a\" -> 2\n  2\talt -> 3, 1\n  3\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : ("a*" : stdgo.GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 2\n  2*\talt -> 1, 3\n  3\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : ("a*?" : stdgo.GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 2\n  2*\talt -> 3, 1\n  3\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : ("a+b+" : stdgo.GoString), prog : ("  0\tfail\n  1*\trune1 \"a\" -> 2\n  2\talt -> 1, 3\n  3\trune1 \"b\" -> 4\n  4\talt -> 3, 5\n  5\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : ("(a+)(b+)" : stdgo.GoString), prog : ("  0\tfail\n  1*\tcap 2 -> 2\n  2\trune1 \"a\" -> 3\n  3\talt -> 2, 4\n  4\tcap 3 -> 5\n  5\tcap 4 -> 6\n  6\trune1 \"b\" -> 7\n  7\talt -> 6, 8\n  8\tcap 5 -> 9\n  9\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : ("a+|b+" : stdgo.GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 2\n  2\talt -> 1, 6\n  3\trune1 \"b\" -> 4\n  4\talt -> 3, 6\n  5*\talt -> 1, 3\n  6\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : ("A[Aa]" : stdgo.GoString), prog : ("  0\tfail\n  1*\trune1 \"A\" -> 2\n  2\trune \"A\"/i -> 3\n  3\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : ("(?:(?:^).)" : stdgo.GoString), prog : ("  0\tfail\n  1*\tempty 4 -> 2\n  2\tanynotnl -> 3\n  3\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : ("(?:|a)+" : stdgo.GoString), prog : ("  0\tfail\n  1\tnop -> 4\n  2\trune1 \"a\" -> 4\n  3*\talt -> 1, 2\n  4\talt -> 3, 5\n  5\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1),
({ regexp : ("(?:|a)*" : stdgo.GoString), prog : ("  0\tfail\n  1\tnop -> 4\n  2\trune1 \"a\" -> 4\n  3\talt -> 1, 2\n  4\talt -> 3, 6\n  5*\talt -> 3, 6\n  6\tmatch\n" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({ regexp : ("" : stdgo.GoString), prog : ("" : stdgo.GoString) } : stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1)])) : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1>);
