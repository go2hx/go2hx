package stdgo._internal.archive.tar;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.path.Path;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
function newReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader> {
        return (stdgo.Go.setRef(({ _r : _r, _curr : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader(_r, (0i64 : stdgo.GoInt64)) : stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader>)) } : stdgo._internal.archive.tar.Tar_Reader.Reader)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>);
    }
