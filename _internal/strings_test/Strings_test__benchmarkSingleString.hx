package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function _benchmarkSingleString(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _pattern:stdgo.GoString, _text:stdgo.GoString):Void {
        var _r = stdgo._internal.strings.Strings_newReplacer.newReplacer(_pattern?.__copy__(), ("[match]" : stdgo.GoString));
        _b.setBytes((_text.length : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _r.replace(_text?.__copy__());
            });
        };
    }
