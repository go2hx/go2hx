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
function _newFlateReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2 stdgo._internal.archive.zip.Zip__flateReaderPool._flateReaderPool.get() : stdgo._internal.io.Io_ReadCloser.ReadCloser)) : stdgo._internal.io.Io_ReadCloser.ReadCloser), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_ReadCloser.ReadCloser), _1 : false };
        }, _fr = __tmp__._0, _ok = __tmp__._1;
        if (_ok) {
            (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fr) : stdgo._internal.compress.flate.Flate_Resetter.Resetter)) : stdgo._internal.compress.flate.Flate_Resetter.Resetter).reset(_r, (null : stdgo.Slice<stdgo.GoUInt8>));
        } else {
            _fr = stdgo._internal.compress.flate.Flate_newReader.newReader(_r);
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _fr : _fr } : stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader>));
    }
