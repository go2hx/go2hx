package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testClone(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testClone" + " skip function");
        return;
        var _cloneTests:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[stdgo.Go.str()?.__copy__(), stdgo._internal.strings.Strings_clone.clone(stdgo.Go.str()?.__copy__())?.__copy__(), (stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (42 : stdgo.GoInt)).__slice__(0, (0 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("short" : stdgo.GoString), stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (42 : stdgo.GoInt))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _input in _cloneTests) {
            var _clone = (stdgo._internal.strings.Strings_clone.clone(_input?.__copy__())?.__copy__() : stdgo.GoString);
            if (_clone != (_input)) {
                _t.errorf(("Clone(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_clone), stdgo.Go.toInterface(_input));
            };
            if (((_input.length != (0 : stdgo.GoInt)) && (stdgo._internal.unsafe.Unsafe_stringData.stringData(_clone?.__copy__()) == stdgo._internal.unsafe.Unsafe_stringData.stringData(_input?.__copy__())) : Bool)) {
                _t.errorf(("Clone(%q) return value should not reference inputs backing memory." : stdgo.GoString), stdgo.Go.toInterface(_input));
            };
            if (((_input.length == (0 : stdgo.GoInt)) && (stdgo._internal.unsafe.Unsafe_stringData.stringData(_clone?.__copy__()) != stdgo._internal.unsafe.Unsafe_stringData.stringData(_internal.strings_test.Strings_test__emptyString._emptyString?.__copy__())) : Bool)) {
                _t.errorf(("Clone(%#v) return value should be equal to empty string." : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unsafe.Unsafe_stringData.stringData(_input?.__copy__())));
            };
        };
    }
