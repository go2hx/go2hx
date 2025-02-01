package stdgo._internal.internal.coverage.pods;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function collectPodsFromFiles(_files:stdgo.Slice<stdgo.GoString>, _warn:Bool):stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_Pod.Pod> {
        return stdgo._internal.internal.coverage.pods.Pods__collectPodsImpl._collectPodsImpl(_files, (null : stdgo.Slice<stdgo.GoInt>), _warn);
    }
