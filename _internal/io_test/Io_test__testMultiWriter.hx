package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function _testMultiWriter(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _sink:_internal.io_test.Io_test_T__interface_0.T__interface_0):Void {
        var _sha1 = (stdgo._internal.crypto.sha1.Sha1_new_.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        var _mw = (stdgo._internal.io.Io_multiWriter.multiWriter(_sha1, _sink) : stdgo._internal.io.Io_Writer.Writer);
        var _sourceString = ("My input text." : stdgo.GoString);
        var _source = stdgo._internal.strings.Strings_newReader.newReader(_sourceString?.__copy__());
        var __tmp__ = stdgo._internal.io.Io_copy.copy(_mw, stdgo.Go.asInterface(_source)), _written:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_written != ((_sourceString.length : stdgo.GoInt64))) {
            _t.errorf(("short write of %d, not %d" : stdgo.GoString), stdgo.Go.toInterface(_written), stdgo.Go.toInterface((_sourceString.length)));
        };
        if (_err != null) {
            _t.errorf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _sha1hex = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_sha1.sum((null : stdgo.Slice<stdgo.GoUInt8>))))?.__copy__() : stdgo.GoString);
        if (_sha1hex != (("01cb303fa8c30a64123067c5aa6284ba7ec2d31b" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("incorrect sha1 value" : stdgo.GoString)));
        };
        if ((_sink.string() : stdgo.GoString) != (_sourceString)) {
            _t.errorf(("expected %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_sourceString), stdgo.Go.toInterface((_sink.string() : stdgo.GoString)));
        };
    }
