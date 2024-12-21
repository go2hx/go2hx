package stdgo._internal.os;
function getwd():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return #if (sys || hxnodejs) {
            try {
                return { _0 : std.Sys.getCwd(), _1 : null };
            } catch(e) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(e.details()) };
            };
        } #else null #end;
    }
