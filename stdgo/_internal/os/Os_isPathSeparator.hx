package stdgo._internal.os;
function isPathSeparator(_c:stdgo.GoUInt8):Bool {
        #if js return _c == "/".code #else null #end;
        #if (sys || hxnodejs) {
            final sep = switch Sys.systemName() {
                case "Windows":
                    "\\".code;
                default:
                    "/".code;
            };
            return _c == sep;
        } #else null #end;
    }
