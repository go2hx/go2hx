package stdgo._internal.mime;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function _clearSyncMap(_m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>):Void {
        @:check2r _m.range(function(_k:stdgo.AnyInterface, __4:stdgo.AnyInterface):Bool {
            @:check2r _m.delete(_k);
            return true;
        });
    }
