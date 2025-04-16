package stdgo.runtime.coverage;
class Coverage {
    /**
        * WriteMetaDir writes a coverage meta-data file for the currently
        * running program to the directory specified in 'dir'. An error will
        * be returned if the operation can't be completed successfully (for
        * example, if the currently running program was not built with
        * "-cover", or if the directory does not exist).
    **/
    static public inline function writeMetaDir(_dir:stdgo.GoString):stdgo.Error return stdgo._internal.runtime.coverage.Coverage_writemetadir.writeMetaDir(_dir);
    /**
        * WriteMeta writes the meta-data content (the payload that would
        * normally be emitted to a meta-data file) for the currently running
        * program to the writer 'w'. An error will be returned if the
        * operation can't be completed successfully (for example, if the
        * currently running program was not built with "-cover", or if a
        * write fails).
    **/
    static public inline function writeMeta(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return stdgo._internal.runtime.coverage.Coverage_writemeta.writeMeta(_w);
    /**
        * WriteCountersDir writes a coverage counter-data file for the
        * currently running program to the directory specified in 'dir'. An
        * error will be returned if the operation can't be completed
        * successfully (for example, if the currently running program was not
        * built with "-cover", or if the directory does not exist). The
        * counter data written will be a snapshot taken at the point of the
        * call.
    **/
    static public inline function writeCountersDir(_dir:stdgo.GoString):stdgo.Error return stdgo._internal.runtime.coverage.Coverage_writecountersdir.writeCountersDir(_dir);
    /**
        * WriteCounters writes coverage counter-data content for the
        * currently running program to the writer 'w'. An error will be
        * returned if the operation can't be completed successfully (for
        * example, if the currently running program was not built with
        * "-cover", or if a write fails). The counter data written will be a
        * snapshot taken at the point of the invocation.
    **/
    static public inline function writeCounters(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return stdgo._internal.runtime.coverage.Coverage_writecounters.writeCounters(_w);
    /**
        * ClearCounters clears/resets all coverage counter variables in the
        * currently running program. It returns an error if the program in
        * question was not built with the "-cover" flag. Clearing of coverage
        * counters is also not supported for programs not using atomic
        * counter mode (see more detailed comments below for the rationale
        * here).
    **/
    static public inline function clearCounters():stdgo.Error return stdgo._internal.runtime.coverage.Coverage_clearcounters.clearCounters();
}
