package _internal.internal.poll_test;
import stdgo._internal.internal.poll.Poll;
function _parseReadError(_nestedErr:stdgo.Error, _verify:stdgo.Error -> { var _0 : stdgo.GoString; var _1 : Bool; }):stdgo.Error {
        var _err = (_nestedErr : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>), _1 : false };
            }, _nerr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _err = _nerr.err;
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
            }, _nerr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _err = _nerr.err;
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.Os_SyscallError.SyscallError>)) : stdgo.Ref<stdgo._internal.os.Os_SyscallError.SyscallError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.os.Os_SyscallError.SyscallError>), _1 : false };
            }, _nerr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _err = _nerr.err;
            };
        };
        {
            var __tmp__ = _verify(_err), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("got %v; want %s" : stdgo.GoString), stdgo.Go.toInterface(_nestedErr), stdgo.Go.toInterface(_s));
            };
        };
        return (null : stdgo.Error);
    }
