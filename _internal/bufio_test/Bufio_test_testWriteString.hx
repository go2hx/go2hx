package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriteString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _b = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(_buf), (8 : stdgo.GoInt));
        _b.writeString(("0" : stdgo.GoString));
        _b.writeString(("123456" : stdgo.GoString));
        _b.writeString(("7890" : stdgo.GoString));
        _b.writeString(("abcdefghijklmnopqrstuvwxy" : stdgo.GoString));
        _b.writeString(("z" : stdgo.GoString));
        {
            var _err = (_b.flush() : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(("WriteString" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _s = ("01234567890abcdefghijklmnopqrstuvwxyz" : stdgo.GoString);
        if ((_buf.string() : stdgo.GoString) != (_s)) {
            _t.errorf(("WriteString wants %q gets %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)));
        };
    }
