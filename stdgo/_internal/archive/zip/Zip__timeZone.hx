package stdgo._internal.archive.zip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.Path;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.encoding.binary.Binary;
function _timeZone(_offset:stdgo._internal.time.Time_Duration.Duration):stdgo.Ref<stdgo._internal.time.Time_Location.Location> {
        {};
        _offset = _offset.round((900000000000i64 : stdgo._internal.time.Time_Duration.Duration));
        if (((_offset < (-43200000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) || ((50400000000000i64 : stdgo._internal.time.Time_Duration.Duration) < _offset : Bool) : Bool)) {
            _offset = (0i64 : stdgo._internal.time.Time_Duration.Duration);
        };
        return stdgo._internal.time.Time_fixedZone.fixedZone(stdgo.Go.str()?.__copy__(), ((_offset / (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoInt));
    }
