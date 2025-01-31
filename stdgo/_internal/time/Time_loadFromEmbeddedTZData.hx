package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function loadFromEmbeddedTZData(_zone:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return stdgo._internal.time.Time__loadFromEmbeddedTZData._loadFromEmbeddedTZData(_zone?.__copy__());
    }
