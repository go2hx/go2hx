package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testReadClosed(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _path = (((_internal.os_test.Os_test__sfdir._sfdir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.os_test.Os_test__sfname._sfname?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.os.Os_open.open(_path?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("open failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _file.close();
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _file.read(_b);
            _err = __tmp__._1;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
        }, _e = __tmp__._0, _ok = __tmp__._1;
        if ((!_ok || (stdgo.Go.toInterface(_e.err) != stdgo.Go.toInterface(stdgo._internal.os.Os_errClosed.errClosed)) : Bool)) {
            _t.fatalf(("Read: got %T(%v), want %T(%v)" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)), stdgo.Go.toInterface(stdgo._internal.os.Os_errClosed.errClosed));
        };
    }
