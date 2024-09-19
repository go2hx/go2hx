package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testReadByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testStrings = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[stdgo.Go.str()?.__copy__(), _internal.strings_test.Strings_test__abcd._abcd?.__copy__(), _internal.strings_test.Strings_test__faces._faces?.__copy__(), _internal.strings_test.Strings_test__commas._commas?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _s in _testStrings) {
            var _reader = stdgo._internal.strings.Strings_newReader.newReader(_s?.__copy__());
            {
                var _e = (_reader.unreadByte() : stdgo.Error);
                if (_e == null) {
                    _t.errorf(("Unreading %q at beginning: expected error" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            var _res:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
            while (true) {
                var __tmp__ = _reader.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_e) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    break;
                };
                if (_e != null) {
                    _t.errorf(("Reading %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                _res.writeByte(_b);
                _e = _reader.unreadByte();
                if (_e != null) {
                    _t.errorf(("Unreading %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                var __tmp__ = _reader.readByte(), _b1:stdgo.GoUInt8 = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if (_e != null) {
                    _t.errorf(("Reading %q after unreading: %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                if (_b1 != (_b)) {
                    _t.errorf(("Reading %q after unreading: want byte %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_b1));
                    break;
                };
            };
            if ((_res.string() : stdgo.GoString) != (_s)) {
                _t.errorf(("Reader(%q).ReadByte() produced %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface((_res.string() : stdgo.GoString)));
            };
        };
    }
