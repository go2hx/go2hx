package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkCountByte(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _indexSizes = (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(10 : stdgo.GoInt), (32 : stdgo.GoInt), (4096 : stdgo.GoInt), (4194304 : stdgo.GoInt), (67108864 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _benchStr = (stdgo._internal.strings.Strings_repeat.repeat(("some_text=some☺value" : stdgo.GoString), ((((_indexSizes[((_indexSizes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + (("some_text=some☺value" : stdgo.GoString).length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (("some_text=some☺value" : stdgo.GoString).length) : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        var _benchFunc = function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _benchStr:stdgo.GoString):Void {
            _b.setBytes((_benchStr.length : stdgo.GoInt64));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    stdgo._internal.strings.Strings_count.count(_benchStr?.__copy__(), ("=" : stdgo.GoString));
                });
            };
        };
        for (__0 => _size in _indexSizes) {
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _benchFunc(_b, (_benchStr.__slice__(0, _size) : stdgo.GoString)?.__copy__());
            });
        };
    }
