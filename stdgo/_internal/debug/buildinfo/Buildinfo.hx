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
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.debug.buildinfo.Buildinfo__errUnrecognizedFormat._errUnrecognizedFormat, __tmp__1 = stdgo._internal.debug.buildinfo.Buildinfo__errNotGoExe._errNotGoExe, __tmp__2 = stdgo._internal.debug.buildinfo.Buildinfo__buildInfoMagic._buildInfoMagic;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
