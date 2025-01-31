package stdgo._internal.debug.macho;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.debug.macho.Macho_SymtabCmd_static_extension.SymtabCmd_static_extension) class SymtabCmd {
    public var cmd : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd);
    public var len : stdgo.GoUInt32 = 0;
    public var symoff : stdgo.GoUInt32 = 0;
    public var nsyms : stdgo.GoUInt32 = 0;
    public var stroff : stdgo.GoUInt32 = 0;
    public var strsize : stdgo.GoUInt32 = 0;
    public function new(?cmd:stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd, ?len:stdgo.GoUInt32, ?symoff:stdgo.GoUInt32, ?nsyms:stdgo.GoUInt32, ?stroff:stdgo.GoUInt32, ?strsize:stdgo.GoUInt32) {
        if (cmd != null) this.cmd = cmd;
        if (len != null) this.len = len;
        if (symoff != null) this.symoff = symoff;
        if (nsyms != null) this.nsyms = nsyms;
        if (stroff != null) this.stroff = stroff;
        if (strsize != null) this.strsize = strsize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SymtabCmd(cmd, len, symoff, nsyms, stroff, strsize);
    }
}
