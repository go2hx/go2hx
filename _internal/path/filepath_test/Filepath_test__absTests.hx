package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
var _absTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(12, 12, ...[
("." : stdgo.GoString),
("b" : stdgo.GoString),
("b/" : stdgo.GoString),
("../a" : stdgo.GoString),
("../a/b" : stdgo.GoString),
("../a/b/./c/../../.././a" : stdgo.GoString),
("../a/b/./c/../../.././a/" : stdgo.GoString),
("$" : stdgo.GoString),
("$/." : stdgo.GoString),
("$/a/../a/b" : stdgo.GoString),
("$/a/b/c/../../.././a" : stdgo.GoString),
("$/a/b/c/../../.././a/" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
