package stdgo._internal.go.constant;
var _opTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(105, 105, ...[
("+ 0 = 0" : stdgo.GoString),
("+ ? = ?" : stdgo.GoString),
("- 1 = -1" : stdgo.GoString),
("- ? = ?" : stdgo.GoString),
("^ 0 = -1" : stdgo.GoString),
("^ ? = ?" : stdgo.GoString),
("! true = false" : stdgo.GoString),
("! false = true" : stdgo.GoString),
("! ? = ?" : stdgo.GoString),
("\"\" + \"\" = \"\"" : stdgo.GoString),
("\"foo\" + \"\" = \"foo\"" : stdgo.GoString),
("\"\" + \"bar\" = \"bar\"" : stdgo.GoString),
("\"foo\" + \"bar\" = \"foobar\"" : stdgo.GoString),
("0 + 0 = 0" : stdgo.GoString),
("0 + 0.1 = 0.1" : stdgo.GoString),
("0 + 0.1i = 0.1i" : stdgo.GoString),
("0.1 + 0.9 = 1" : stdgo.GoString),
("1e100 + 1e100 = 2e100" : stdgo.GoString),
("? + 0 = ?" : stdgo.GoString),
("0 + ? = ?" : stdgo.GoString),
("0 - 0 = 0" : stdgo.GoString),
("0 - 0.1 = -0.1" : stdgo.GoString),
("0 - 0.1i = -0.1i" : stdgo.GoString),
("1e100 - 1e100 = 0" : stdgo.GoString),
("? - 0 = ?" : stdgo.GoString),
("0 - ? = ?" : stdgo.GoString),
("0 * 0 = 0" : stdgo.GoString),
("1 * 0.1 = 0.1" : stdgo.GoString),
("1 * 0.1i = 0.1i" : stdgo.GoString),
("1i * 1i = -1" : stdgo.GoString),
("? * 0 = ?" : stdgo.GoString),
("0 * ? = ?" : stdgo.GoString),
("0 * 1e+1000000000 = ?" : stdgo.GoString),
("0 / 0 = \"division_by_zero\"" : stdgo.GoString),
("10 / 2 = 5" : stdgo.GoString),
("5 / 3 = 5/3" : stdgo.GoString),
("5i / 3i = 5/3" : stdgo.GoString),
("? / 0 = ?" : stdgo.GoString),
("0 / ? = ?" : stdgo.GoString),
("0 * 1e+1000000000i = ?" : stdgo.GoString),
("0 % 0 = \"runtime_error:_integer_divide_by_zero\"" : stdgo.GoString),
("10 % 3 = 1" : stdgo.GoString),
("? % 0 = ?" : stdgo.GoString),
("0 % ? = ?" : stdgo.GoString),
("0 & 0 = 0" : stdgo.GoString),
("12345 & 0 = 0" : stdgo.GoString),
("0xff & 0xf = 0xf" : stdgo.GoString),
("? & 0 = ?" : stdgo.GoString),
("0 & ? = ?" : stdgo.GoString),
("0 | 0 = 0" : stdgo.GoString),
("12345 | 0 = 12345" : stdgo.GoString),
("0xb | 0xa0 = 0xab" : stdgo.GoString),
("? | 0 = ?" : stdgo.GoString),
("0 | ? = ?" : stdgo.GoString),
("0 ^ 0 = 0" : stdgo.GoString),
("1 ^ -1 = -2" : stdgo.GoString),
("? ^ 0 = ?" : stdgo.GoString),
("0 ^ ? = ?" : stdgo.GoString),
("0 &^ 0 = 0" : stdgo.GoString),
("0xf &^ 1 = 0xe" : stdgo.GoString),
("1 &^ 0xf = 0" : stdgo.GoString),
("0 << 0 = 0" : stdgo.GoString),
("1 << 10 = 1024" : stdgo.GoString),
("0 >> 0 = 0" : stdgo.GoString),
("1024 >> 10 == 1" : stdgo.GoString),
("? << 0 == ?" : stdgo.GoString),
("? >> 10 == ?" : stdgo.GoString),
("false == false = true" : stdgo.GoString),
("false == true = false" : stdgo.GoString),
("true == false = false" : stdgo.GoString),
("true == true = true" : stdgo.GoString),
("false != false = false" : stdgo.GoString),
("false != true = true" : stdgo.GoString),
("true != false = true" : stdgo.GoString),
("true != true = false" : stdgo.GoString),
("\"foo\" == \"bar\" = false" : stdgo.GoString),
("\"foo\" != \"bar\" = true" : stdgo.GoString),
("\"foo\" < \"bar\" = false" : stdgo.GoString),
("\"foo\" <= \"bar\" = false" : stdgo.GoString),
("\"foo\" > \"bar\" = true" : stdgo.GoString),
("\"foo\" >= \"bar\" = true" : stdgo.GoString),
("0 == 0 = true" : stdgo.GoString),
("0 != 0 = false" : stdgo.GoString),
("0 < 10 = true" : stdgo.GoString),
("10 <= 10 = true" : stdgo.GoString),
("0 > 10 = false" : stdgo.GoString),
("10 >= 10 = true" : stdgo.GoString),
("1/123456789 == 1/123456789 == true" : stdgo.GoString),
("1/123456789 != 1/123456789 == false" : stdgo.GoString),
("1/123456789 < 1/123456788 == true" : stdgo.GoString),
("1/123456788 <= 1/123456789 == false" : stdgo.GoString),
("0.11 > 0.11 = false" : stdgo.GoString),
("0.11 >= 0.11 = true" : stdgo.GoString),
("? == 0 = false" : stdgo.GoString),
("? != 0 = false" : stdgo.GoString),
("? < 10 = false" : stdgo.GoString),
("? <= 10 = false" : stdgo.GoString),
("? > 10 = false" : stdgo.GoString),
("? >= 10 = false" : stdgo.GoString),
("0 == ? = false" : stdgo.GoString),
("0 != ? = false" : stdgo.GoString),
("0 < ? = false" : stdgo.GoString),
("10 <= ? = false" : stdgo.GoString),
("0 > ? = false" : stdgo.GoString),
("10 >= ? = false" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
