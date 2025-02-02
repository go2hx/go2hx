package stdgo._internal.runtime.pprof;
function _newProfileBuilder(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> {
        var __tmp__ = stdgo._internal.compress.gzip.Gzip_newWriterLevel.newWriterLevel(_w, (1 : stdgo.GoInt)), _zw:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        var _b = (stdgo.Go.setRef(({ _w : _w, _zw : _zw, _start : stdgo._internal.time.Time_now.now()?.__copy__(), _strings : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _stringMap : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((stdgo.Go.str() : stdgo.GoString), (0 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), _locs : ({
            final x = new stdgo.GoMap.GoUIntptrMap<stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo>), _funcs : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) } : stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder)) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        @:check2r _b._readMapping();
        return _b;
    }
