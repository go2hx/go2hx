package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkJoin(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _vals = (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("red" : stdgo.GoString), ("yellow" : stdgo.GoString), ("pink" : stdgo.GoString), ("green" : stdgo.GoString), ("purple" : stdgo.GoString), ("orange" : stdgo.GoString), ("blue" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _l = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_l <= (_vals.length) : Bool), _l++, {
                _b.run(stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _b.reportAllocs();
                    var _vals = (_vals.__slice__(0, _l) : stdgo.Slice<stdgo.GoString>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            stdgo._internal.strings.Strings_join.join(_vals, (" and " : stdgo.GoString));
                        });
                    };
                });
            });
        };
    }
