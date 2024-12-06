package stdgo._internal.net.http.pprof;
function _collectProfile(_p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>):{ var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        {
            var _err = (_p.writeTo(stdgo.Go.asInterface(_buf__pointer__), (0 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _ts = (stdgo._internal.time.Time_now.now().unixNano() : stdgo.GoInt64);
        var __tmp__ = _internal.internal.profile.Profile_parse.parse(stdgo.Go.asInterface(_buf__pointer__)), _p0:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _p0.timeNanos = _ts;
        return { _0 : _p0, _1 : (null : stdgo.Error) };
    }
