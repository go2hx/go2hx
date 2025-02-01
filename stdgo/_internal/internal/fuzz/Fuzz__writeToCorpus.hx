package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
function _writeToCorpus(_entry:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry>, _dir:stdgo.GoString):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _sum = ((stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.crypto.sha256.Sha256_sum256.sum256((@:checkr _entry ?? throw "null pointer dereference").data))).__slice__(0, (16 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        (@:checkr _entry ?? throw "null pointer dereference").path = stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _sum?.__copy__())?.__copy__();
        {
            var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(_dir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (stdgo._internal.os.Os_writeFile.writeFile((@:checkr _entry ?? throw "null pointer dereference").path?.__copy__(), (@:checkr _entry ?? throw "null pointer dereference").data, (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.os.Os_remove.remove((@:checkr _entry ?? throw "null pointer dereference").path?.__copy__());
                return _err;
            };
        };
        return _err = (null : stdgo.Error);
    }
