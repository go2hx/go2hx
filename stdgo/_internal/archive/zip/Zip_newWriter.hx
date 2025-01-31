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
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer> {
        return (stdgo.Go.setRef(({ _cw : (stdgo.Go.setRef(({ _w : stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newWriter.newWriter(_w)) } : stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>) } : stdgo._internal.archive.zip.Zip_Writer.Writer)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>);
    }
