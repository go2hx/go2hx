package _internal.internal.fmtsort_test;
function _chanMap():stdgo.GoMap<stdgo.Chan<stdgo.GoInt>, stdgo.GoString> {
        var _m = ({
            final x = new stdgo.GoMap.GoChanMap<stdgo.Chan<stdgo.GoInt>, stdgo.GoString>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Chan<stdgo.GoInt>, stdgo.GoString>);
        {
            var _i = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _m[_internal.internal.fmtsort_test.Fmtsort_test__chans._chans[(_i : stdgo.GoInt)]] = stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_i))?.__copy__();
            });
        };
        return _m;
    }
