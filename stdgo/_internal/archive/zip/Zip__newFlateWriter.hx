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
function _newFlateWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2 stdgo._internal.archive.zip.Zip__flateWriterPool._flateWriterPool.get() : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>)) : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>), _1 : false };
        }, _fw = __tmp__._0, _ok = __tmp__._1;
        if (_ok) {
            @:check2r _fw.reset(_w);
        } else {
            {
                var __tmp__ = stdgo._internal.compress.flate.Flate_newWriter.newWriter(_w, (5 : stdgo.GoInt));
                _fw = @:tmpset0 __tmp__._0;
            };
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _fw : _fw } : stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter>));
    }
