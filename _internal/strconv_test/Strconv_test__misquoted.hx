package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
var _misquoted : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(28, 28, ...[
stdgo.Go.str()?.__copy__(),
("\"" : stdgo.GoString),
("\"a" : stdgo.GoString),
("\"\'" : stdgo.GoString),
("b\"" : stdgo.GoString),
("\"\\\"" : stdgo.GoString),
("\"\\9\"" : stdgo.GoString),
("\"\\19\"" : stdgo.GoString),
("\"\\129\"" : stdgo.GoString),
("\'\\\'" : stdgo.GoString),
("\'\\9\'" : stdgo.GoString),
("\'\\19\'" : stdgo.GoString),
("\'\\129\'" : stdgo.GoString),
("\'ab\'" : stdgo.GoString),
("\"\\x1!\"" : stdgo.GoString),
("\"\\U12345678\"" : stdgo.GoString),
("\"\\z\"" : stdgo.GoString),
("`" : stdgo.GoString),
("`xxx" : stdgo.GoString),
("``x\r" : stdgo.GoString),
("`\"" : stdgo.GoString),
("\"\\\'\"" : stdgo.GoString),
("\'\\\"\'" : stdgo.GoString),
("\"\n\"" : stdgo.GoString),
("\"\\n\n\"" : stdgo.GoString),
("\'\n\'" : stdgo.GoString),
("\"\\udead\"" : stdgo.GoString),
("\"\\ud83d\\ude4f\"" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
