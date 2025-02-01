package stdgo._internal.debug.buildinfo;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.debug.elf.Elf;
import stdgo._internal.debug.pe.Pe;
import stdgo._internal.debug.macho.Macho;
import stdgo._internal.internal.xcoff.Xcoff;
import stdgo._internal.debug.plan9obj.Plan9obj;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
function _hasPlan9Magic(_magic:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if (((_magic.length) >= (4 : stdgo.GoInt) : Bool)) {
            var _m = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32(_magic) : stdgo.GoUInt32);
            {
                final __value__ = _m;
                if (__value__ == ((491u32 : stdgo.GoUInt32)) || __value__ == ((35479u32 : stdgo.GoUInt32)) || __value__ == ((1607u32 : stdgo.GoUInt32))) {
                    return true;
                };
            };
        };
        return false;
    }
