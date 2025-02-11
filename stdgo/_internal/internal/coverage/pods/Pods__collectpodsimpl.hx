package stdgo._internal.internal.coverage.pods;
function _collectPodsImpl(_files:stdgo.Slice<stdgo.GoString>, _dirIndices:stdgo.Slice<stdgo.GoInt>, _warn:Bool):stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_pod.Pod> {
        var _metaRE = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(stdgo._internal.fmt.Fmt_sprintf.sprintf(("^%s\\.(\\S+)$" : stdgo.GoString), stdgo.Go.toInterface(("covmeta" : stdgo.GoString)))?.__copy__());
        var _mm = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.internal.coverage.pods.Pods_t_protopod.T_protoPod>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.internal.coverage.pods.Pods_t_protopod.T_protoPod);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.coverage.pods.Pods_t_protopod.T_protoPod>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.coverage.pods.Pods_t_protopod.T_protoPod>);
        for (__0 => _f in _files) {
            var _base = (stdgo._internal.path.filepath.Filepath_base.base(_f?.__copy__())?.__copy__() : stdgo.GoString);
            {
                var _m = @:check2r _metaRE.findStringSubmatch(_base?.__copy__());
                if (_m != null) {
                    var _tag = (_m[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
                    {
                        var __tmp__ = (_mm != null && _mm.__exists__(_tag?.__copy__()) ? { _0 : _mm[_tag?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.internal.coverage.pods.Pods_t_protopod.T_protoPod), _1 : false }), __1:stdgo._internal.internal.coverage.pods.Pods_t_protopod.T_protoPod = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            _mm[_tag] = ({ _mf : _f?.__copy__() } : stdgo._internal.internal.coverage.pods.Pods_t_protopod.T_protoPod);
                        };
                    };
                };
            };
        };
        var _counterRE = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(stdgo._internal.fmt.Fmt_sprintf.sprintf(("^%s\\.(\\S+)\\.(\\d+)\\.(\\d+)+$" : stdgo.GoString), stdgo.Go.toInterface(("covcounters" : stdgo.GoString)))?.__copy__());
        for (_k => _f in _files) {
            var _base = (stdgo._internal.path.filepath.Filepath_base.base(_f?.__copy__())?.__copy__() : stdgo.GoString);
            {
                var _m = @:check2r _counterRE.findStringSubmatch(_base?.__copy__());
                if (_m != null) {
                    var _tag = (_m[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
                    var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_m[(2 : stdgo.GoInt)]?.__copy__()), _pid:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        continue;
                    };
                    {
                        var __tmp__ = (_mm != null && _mm.__exists__(_tag?.__copy__()) ? { _0 : _mm[_tag?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.internal.coverage.pods.Pods_t_protopod.T_protoPod), _1 : false }), _v:stdgo._internal.internal.coverage.pods.Pods_t_protopod.T_protoPod = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            var _idx = (-1 : stdgo.GoInt);
                            if (_dirIndices != null) {
                                _idx = _dirIndices[(_k : stdgo.GoInt)];
                            };
                            var _fo = ({ _file : _f?.__copy__(), _origin : _idx, _pid : _pid } : stdgo._internal.internal.coverage.pods.Pods_t_filewithannotations.T_fileWithAnnotations);
                            _v._elements = (_v._elements.__append__(_fo?.__copy__()));
                            _mm[_tag] = _v?.__copy__();
                        } else {
                            if (_warn) {
                                stdgo._internal.internal.coverage.pods.Pods__warning._warning(("skipping orphaned counter file: %s" : stdgo.GoString), stdgo.Go.toInterface(_f));
                            };
                        };
                    };
                };
            };
        };
        if ((_mm.length) == ((0 : stdgo.GoInt))) {
            if (_warn) {
                stdgo._internal.internal.coverage.pods.Pods__warning._warning(("no coverage data files found" : stdgo.GoString));
            };
            return (null : stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_pod.Pod>);
        };
        var _pods = (new stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_pod.Pod>((0 : stdgo.GoInt).toBasic(), (_mm.length), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (_mm.length) ? (0 : stdgo.GoInt).toBasic() : (_mm.length) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.coverage.pods.Pods_pod.Pod)]) : stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_pod.Pod>);
        for (__1 => _p in _mm) {
            stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_p._elements), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                if (_p._elements[(_i : stdgo.GoInt)]._origin != (_p._elements[(_j : stdgo.GoInt)]._origin)) {
                    return (_p._elements[(_i : stdgo.GoInt)]._origin < _p._elements[(_j : stdgo.GoInt)]._origin : Bool);
                };
                return (_p._elements[(_i : stdgo.GoInt)]._file < _p._elements[(_j : stdgo.GoInt)]._file : Bool);
            });
            var _pod = ({ metaFile : _p._mf?.__copy__(), counterDataFiles : (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_p._elements.length)).__setString__() : stdgo.Slice<stdgo.GoString>), origins : (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (_p._elements.length)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), processIDs : (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (_p._elements.length)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.internal.coverage.pods.Pods_pod.Pod);
            for (__2 => _e in _p._elements) {
                _pod.counterDataFiles = (_pod.counterDataFiles.__append__(_e._file?.__copy__()));
                _pod.origins = (_pod.origins.__append__(_e._origin));
                _pod.processIDs = (_pod.processIDs.__append__(_e._pid));
            };
            _pods = (_pods.__append__(_pod?.__copy__()));
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_pods), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_pods[(_i : stdgo.GoInt)].metaFile < _pods[(_j : stdgo.GoInt)].metaFile : Bool);
        });
        return _pods;
    }
