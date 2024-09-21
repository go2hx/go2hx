package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testReadAtOffset(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _f = _internal.os_test.Os_test__newFile._newFile(("TestReadAtOffset" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            {};
            stdgo._internal.io.Io_writeString.writeString(stdgo.Go.asInterface(_f), ("hello, world\n" : stdgo.GoString));
            _f.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _f.readAt(_b, (7i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (_b.length)) : Bool)) {
                _t.fatalf(("ReadAt 7: %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
            if ((_b : stdgo.GoString) != (("world" : stdgo.GoString))) {
                _t.fatalf(("ReadAt 7: have %q want %q" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(("world" : stdgo.GoString)));
            };
            {
                var __tmp__ = _f.read(_b);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (((_err != null) || (_n != (_b.length)) : Bool)) {
                _t.fatalf(("Read: %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
            if ((_b : stdgo.GoString) != (("hello" : stdgo.GoString))) {
                _t.fatalf(("Read: have %q want %q" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(("hello" : stdgo.GoString)));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
