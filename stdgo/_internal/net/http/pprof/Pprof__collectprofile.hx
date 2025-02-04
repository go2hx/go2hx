package stdgo._internal.net.http.pprof;
function _collectProfile(_p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        {
            var _err = (@:check2r _p.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), (0 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _ts = (stdgo._internal.time.Time_now.now().unixNano() : stdgo.GoInt64);
        var __tmp__ = stdgo._internal.internal.profile.Profile_parse.parse(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))), _p0:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        (@:checkr _p0 ?? throw "null pointer dereference").timeNanos = _ts;
        return { _0 : _p0, _1 : (null : stdgo.Error) };
    }
