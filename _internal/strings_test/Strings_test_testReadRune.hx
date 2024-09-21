package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testReadRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testStrings = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[stdgo.Go.str()?.__copy__(), _internal.strings_test.Strings_test__abcd._abcd?.__copy__(), _internal.strings_test.Strings_test__faces._faces?.__copy__(), _internal.strings_test.Strings_test__commas._commas?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _s in _testStrings) {
            var _reader = stdgo._internal.strings.Strings_newReader.newReader(_s?.__copy__());
            {
                var _e = (_reader.unreadRune() : stdgo.Error);
                if (_e == null) {
                    _t.errorf(("Unreading %q at beginning: expected error" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            var _res = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
            while (true) {
                var __tmp__ = _reader.readRune(), _r:stdgo.GoInt32 = __tmp__._0, _z:stdgo.GoInt = __tmp__._1, _e:stdgo.Error = __tmp__._2;
                if (stdgo.Go.toInterface(_e) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    break;
                };
                if (_e != null) {
                    _t.errorf(("Reading %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                _res = (_res + ((_r : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _e = _reader.unreadRune();
                if (_e != null) {
                    _t.errorf(("Unreading %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                var __tmp__ = _reader.readRune(), _r1:stdgo.GoInt32 = __tmp__._0, _z1:stdgo.GoInt = __tmp__._1, _e:stdgo.Error = __tmp__._2;
                if (_e != null) {
                    _t.errorf(("Reading %q after unreading: %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                if (_r1 != (_r)) {
                    _t.errorf(("Reading %q after unreading: want rune %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r1));
                    break;
                };
                if (_z1 != (_z)) {
                    _t.errorf(("Reading %q after unreading: want size %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_z1));
                    break;
                };
            };
            if (_res != (_s)) {
                _t.errorf(("Reader(%q).ReadRune() produced %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_res));
            };
        };
    }
