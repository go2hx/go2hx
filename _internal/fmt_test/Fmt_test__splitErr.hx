package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function _splitErr(_err:stdgo.Error):stdgo.Slice<stdgo.Error> {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : _internal.fmt_test.Fmt_test_T__interface_0.T__interface_0)) : _internal.fmt_test.Fmt_test_T__interface_0.T__interface_0), _1 : true };
            } catch(_) {
                { _0 : (null : _internal.fmt_test.Fmt_test_T__interface_0.T__interface_0), _1 : false };
            }, _e = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _e.unwrap();
            };
        };
        return (null : stdgo.Slice<stdgo.Error>);
    }
