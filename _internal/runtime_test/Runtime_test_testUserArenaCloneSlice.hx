package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testUserArenaCloneSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a = stdgo._internal.runtime.Runtime_newUserArena.newUserArena();
        var _s:stdgo.GoString = ("klmnopqrstuv" : stdgo.GoString);
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        _a.slice(stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)), (_s.length));
        stdgo.Go.copySlice(_b, _s);
        var _bCopy = stdgo._internal.runtime.Runtime_userArenaClone.userArenaClone(_b);
        if ((stdgo.Go.toInterface(stdgo.Go.pointer(_b[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer) == ((stdgo.Go.toInterface(stdgo.Go.pointer(_bCopy[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
            _t.errorf(("Clone did not make a copy: %#v -> %#v" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_bCopy));
        };
        if ((_b.length) != ((_bCopy.length))) {
            _t.errorf(("Clone made an incorrect copy (bad length): %d -> %d" : stdgo.GoString), stdgo.Go.toInterface((_b.length)), stdgo.Go.toInterface((_bCopy.length)));
        } else {
            for (_i => _ in _b) {
                if (_b[(_i : stdgo.GoInt)] != (_bCopy[(_i : stdgo.GoInt)])) {
                    _t.errorf(("Clone made an incorrect copy (data at index %d): %d -> %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_bCopy[(_i : stdgo.GoInt)]));
                };
            };
        };
        var _bSub = (_b.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _bSubCopy = stdgo._internal.runtime.Runtime_userArenaClone.userArenaClone(_bSub);
        if ((stdgo.Go.toInterface(stdgo.Go.pointer(_bSub[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer) == ((stdgo.Go.toInterface(stdgo.Go.pointer(_bSubCopy[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
            _t.errorf(("Clone did not make a copy: %#v -> %#v" : stdgo.GoString), stdgo.Go.toInterface(_bSub), stdgo.Go.toInterface(_bSubCopy));
        };
        if ((_bSub.length) != ((_bSubCopy.length))) {
            _t.errorf(("Clone made an incorrect copy (bad length): %d -> %d" : stdgo.GoString), stdgo.Go.toInterface((_bSub.length)), stdgo.Go.toInterface((_bSubCopy.length)));
        } else {
            for (_i => _ in _bSub) {
                if (_bSub[(_i : stdgo.GoInt)] != (_bSubCopy[(_i : stdgo.GoInt)])) {
                    _t.errorf(("Clone made an incorrect copy (data at index %d): %d -> %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_bSub[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_bSubCopy[(_i : stdgo.GoInt)]));
                };
            };
        };
        var _bNotArena = (new stdgo.Slice<stdgo.GoUInt8>((_s.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice(_bNotArena, _s);
        var _bNotArenaCopy = stdgo._internal.runtime.Runtime_userArenaClone.userArenaClone(_bNotArena);
        if ((stdgo.Go.toInterface(stdgo.Go.pointer(_bNotArena[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer) != ((stdgo.Go.toInterface(stdgo.Go.pointer(_bNotArenaCopy[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
            _t.error(stdgo.Go.toInterface(("Clone should not have made a copy" : stdgo.GoString)));
        };
        _a.free();
    }
