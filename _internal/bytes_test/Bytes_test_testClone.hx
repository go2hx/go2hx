package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testClone(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testClone" + " skip function");
        return;
        var _cloneTests:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(7, 7, ...[(null : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.bytes.Bytes_clone.clone((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), ((stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (("short" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (__0 => _input in _cloneTests) {
            var _clone = stdgo._internal.bytes.Bytes_clone.clone(_input);
            if (!stdgo._internal.bytes.Bytes_equal.equal(_clone, _input)) {
                _t.errorf(("Clone(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_clone), stdgo.Go.toInterface(_input));
            };
            if (((_input == null) && (_clone != null) : Bool)) {
                _t.errorf(("Clone(%#v) return value should be equal to nil slice." : stdgo.GoString), stdgo.Go.toInterface(_input));
            };
            if (((_input != null) && (_clone == null) : Bool)) {
                _t.errorf(("Clone(%#v) return value should not be equal to nil slice." : stdgo.GoString), stdgo.Go.toInterface(_input));
            };
            if (((_input.capacity != (0 : stdgo.GoInt)) && (stdgo._internal.unsafe.Unsafe_sliceData.sliceData(_input) == stdgo._internal.unsafe.Unsafe_sliceData.sliceData(_clone)) : Bool)) {
                _t.errorf(("Clone(%q) return value should not reference inputs backing memory." : stdgo.GoString), stdgo.Go.toInterface(_input));
            };
        };
    }
