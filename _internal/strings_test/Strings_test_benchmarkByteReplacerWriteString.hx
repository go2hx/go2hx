package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkByteReplacerWriteString(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _str = (stdgo._internal.strings.Strings_repeat.repeat(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _internal.strings_test.Strings_test__capitalLetters._capitalLetters.writeString(stdgo.Go.asInterface(_buf), _str?.__copy__());
                _buf.reset();
            });
        };
    }
