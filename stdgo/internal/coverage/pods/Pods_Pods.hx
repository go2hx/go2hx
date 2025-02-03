package stdgo.internal.coverage.pods;
class Pods {
    /**
        CollectPods visits the files contained within the directories in
        the list 'dirs', collects any coverage-related files, partitions
        them into pods, and returns a list of the pods to the caller, along
        with an error if something went wrong during directory/file
        reading.
        
        CollectPods skips over any file that is not related to coverage
        (e.g. avoids looking at things that are not meta-data files or
        counter-data files). CollectPods also skips over 'orphaned' counter
        data files (e.g. counter data files for which we can't find the
        corresponding meta-data file). If "warn" is true, CollectPods will
        issue warnings to stderr when it encounters non-fatal problems (for
        orphans or a directory with no meta-data files).
    **/
    static public inline function collectPods(_dirs:Array<String>, _warn:Bool):stdgo.Tuple<Array<Pod>, stdgo.Error> {
        final _dirs = ([for (i in _dirs) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.internal.coverage.pods.Pods_collectPods.collectPods(_dirs, _warn);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        CollectPodsFromFiles functions the same as "CollectPods" but
        operates on an explicit list of files instead of a directory.
    **/
    static public inline function collectPodsFromFiles(_files:Array<String>, _warn:Bool):Array<Pod> {
        final _files = ([for (i in _files) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return [for (i in stdgo._internal.internal.coverage.pods.Pods_collectPodsFromFiles.collectPodsFromFiles(_files, _warn)) i];
    }
}
