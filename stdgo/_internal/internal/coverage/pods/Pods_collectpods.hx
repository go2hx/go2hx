package stdgo._internal.internal.coverage.pods;
function collectPods(_dirs:stdgo.Slice<stdgo.GoString>, _warn:Bool):{ var _0 : stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_pod.Pod>; var _1 : stdgo.Error; } {
        var _files = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _dirIndices = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/pods/pods.go#L53"
        for (_k => _dir in _dirs) {
            var __tmp__ = stdgo._internal.os.Os_readdir.readDir(_dir?.__copy__()), _dents:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/pods/pods.go#L55"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/pods/pods.go#L56"
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_pod.Pod>), _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/pods/pods.go#L58"
            for (__0 => _e in _dents) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/pods/pods.go#L59"
                if (_e.isDir()) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/pods/pods.go#L60"
                    continue;
                };
                _files = (_files.__append__(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _e.name()?.__copy__())?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                _dirIndices = (_dirIndices.__append__(_k) : stdgo.Slice<stdgo.GoInt>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/pods/pods.go#L66"
        return { _0 : stdgo._internal.internal.coverage.pods.Pods__collectpodsimpl._collectPodsImpl(_files, _dirIndices, _warn), _1 : (null : stdgo.Error) };
    }
