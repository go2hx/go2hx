package stdgo._internal.math.big;
var _setStringTests : stdgo.Slice<stdgo._internal.math.big.Big_stringtest.StringTest> = (new stdgo.Slice<stdgo._internal.math.big.Big_stringtest.StringTest>(36, 36, ...[
({ _in : ("1e" : stdgo.GoString) } : stdgo._internal.math.big.Big_stringtest.StringTest),
({ _in : ("1.e" : stdgo.GoString) } : stdgo._internal.math.big.Big_stringtest.StringTest),
({ _in : ("1e+14e-5" : stdgo.GoString) } : stdgo._internal.math.big.Big_stringtest.StringTest),
({ _in : ("1e4.5" : stdgo.GoString) } : stdgo._internal.math.big.Big_stringtest.StringTest),
({ _in : ("r" : stdgo.GoString) } : stdgo._internal.math.big.Big_stringtest.StringTest),
({ _in : ("a/b" : stdgo.GoString) } : stdgo._internal.math.big.Big_stringtest.StringTest),
({ _in : ("a.b" : stdgo.GoString) } : stdgo._internal.math.big.Big_stringtest.StringTest),
({ _in : ("1/0" : stdgo.GoString) } : stdgo._internal.math.big.Big_stringtest.StringTest),
({ _in : ("4/3/2" : stdgo.GoString) } : stdgo._internal.math.big.Big_stringtest.StringTest),
({ _in : ("4/3/" : stdgo.GoString) } : stdgo._internal.math.big.Big_stringtest.StringTest),
({ _in : ("4/3." : stdgo.GoString) } : stdgo._internal.math.big.Big_stringtest.StringTest),
({ _in : ("4/" : stdgo.GoString) } : stdgo._internal.math.big.Big_stringtest.StringTest),
({ _in : ("13e-9223372036854775808" : stdgo.GoString) } : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("0" : stdgo.GoString), ("0" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("-0" : stdgo.GoString), ("0" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("1" : stdgo.GoString), ("1" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("-1" : stdgo.GoString), ("-1" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("1." : stdgo.GoString), ("1" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("1e0" : stdgo.GoString), ("1" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("1.e1" : stdgo.GoString), ("10" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("-0.1" : stdgo.GoString), ("-1/10" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("-.1" : stdgo.GoString), ("-1/10" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("2/4" : stdgo.GoString), ("1/2" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest((".25" : stdgo.GoString), ("1/4" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("-1/5" : stdgo.GoString), ("-1/5" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("8129567.7690E14" : stdgo.GoString), ("812956776900000000000" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("78189e+4" : stdgo.GoString), ("781890000" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("553019.8935e+8" : stdgo.GoString), ("55301989350000" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("98765432109876543210987654321e-10" : stdgo.GoString), ("98765432109876543210987654321/10000000000" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("9877861857500000E-7" : stdgo.GoString), ("3951144743/4" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("2169378.417e-3" : stdgo.GoString), ("2169378417/1000000" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("884243222337379604041632732738665534" : stdgo.GoString), ("884243222337379604041632732738665534" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("53/70893980658822810696" : stdgo.GoString), ("53/70893980658822810696" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("106/141787961317645621392" : stdgo.GoString), ("53/70893980658822810696" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("204211327800791583.81095" : stdgo.GoString), ("4084226556015831676219/20000" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest),
(new stdgo._internal.math.big.Big_stringtest.StringTest(("0e9999999999" : stdgo.GoString), ("0" : stdgo.GoString), true) : stdgo._internal.math.big.Big_stringtest.StringTest)].concat([for (i in 36 ... (36 > 36 ? 36 : 36 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math.big.Big_stringtest.StringTest)])) : stdgo.Slice<stdgo._internal.math.big.Big_stringtest.StringTest>);
