package stdgo.internal.coverage.pods;
typedef Pod = stdgo._internal.internal.coverage.pods.Pods_pod.Pod;
typedef PodPointer = stdgo._internal.internal.coverage.pods.Pods_podpointer.PodPointer;
class Pods {
    /**
        * CollectPods visits the files contained within the directories in
        * the list 'dirs', collects any coverage-related files, partitions
        * them into pods, and returns a list of the pods to the caller, along
        * with an error if something went wrong during directory/file
        * reading.
        * 
        * CollectPods skips over any file that is not related to coverage
        * (e.g. avoids looking at things that are not meta-data files or
        * counter-data files). CollectPods also skips over 'orphaned' counter
        * data files (e.g. counter data files for which we can't find the
        * corresponding meta-data file). If "warn" is true, CollectPods will
        * issue warnings to stderr when it encounters non-fatal problems (for
        * orphans or a directory with no meta-data files).
    **/
    static public inline function collectPods(_dirs:stdgo.Slice<stdgo.GoString>, _warn:Bool):{ var _0 : stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_pod.Pod>; var _1 : stdgo.Error; } return stdgo._internal.internal.coverage.pods.Pods_collectpods.collectPods(_dirs, _warn);
    /**
        * CollectPodsFromFiles functions the same as "CollectPods" but
        * operates on an explicit list of files instead of a directory.
    **/
    static public inline function collectPodsFromFiles(_files:stdgo.Slice<stdgo.GoString>, _warn:Bool):stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_pod.Pod> return stdgo._internal.internal.coverage.pods.Pods_collectpodsfromfiles.collectPodsFromFiles(_files, _warn);
}
