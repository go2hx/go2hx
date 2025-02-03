package stdgo.os;
private function set_atime(v:stdgo._internal.io.fs.Fs_FileInfo.FileInfo -> stdgo._internal.time.Time_Time.Time):stdgo._internal.io.fs.Fs_FileInfo.FileInfo -> stdgo._internal.time.Time_Time.Time {
        stdgo._internal.os.Os_atime.atime = v;
        return v;
    }
