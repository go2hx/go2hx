package stdgo._internal.go.constant;
var _imagTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(12, 12, ...[
("1_234i = 1234i" : stdgo.GoString),
("1_234_567i = 1234567i" : stdgo.GoString),
("0.i = 0i" : stdgo.GoString),
("123.i = 123i" : stdgo.GoString),
("0123.i = 123i" : stdgo.GoString),
("0.e+1i = 0i" : stdgo.GoString),
("123.E-1_0i = 123e-10i" : stdgo.GoString),
("01_23.e123i = 123e123i" : stdgo.GoString),
("1e-1000000000i = 0i" : stdgo.GoString),
("1e+1000000000i = ?" : stdgo.GoString),
("6e5518446744i = ?" : stdgo.GoString),
("-6e5518446744i = ?" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
