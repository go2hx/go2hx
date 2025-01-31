package stdgo._internal.debug.elf;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.debug.dwarf.Dwarf;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.internal.zstd.Zstd;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.debug.elf.Elf__versionStrings._versionStrings, __tmp__1 = stdgo._internal.debug.elf.Elf__classStrings._classStrings, __tmp__2 = stdgo._internal.debug.elf.Elf__dataStrings._dataStrings, __tmp__3 = stdgo._internal.debug.elf.Elf__osabiStrings._osabiStrings, __tmp__4 = stdgo._internal.debug.elf.Elf__typeStrings._typeStrings, __tmp__5 = stdgo._internal.debug.elf.Elf__machineStrings._machineStrings, __tmp__6 = stdgo._internal.debug.elf.Elf__shnStrings._shnStrings, __tmp__7 = stdgo._internal.debug.elf.Elf__shtStrings._shtStrings, __tmp__8 = stdgo._internal.debug.elf.Elf__shfStrings._shfStrings, __tmp__9 = stdgo._internal.debug.elf.Elf__compressionStrings._compressionStrings, __tmp__10 = stdgo._internal.debug.elf.Elf__ptStrings._ptStrings, __tmp__11 = stdgo._internal.debug.elf.Elf__pfStrings._pfStrings, __tmp__12 = stdgo._internal.debug.elf.Elf__dtStrings._dtStrings, __tmp__13 = stdgo._internal.debug.elf.Elf__dflagStrings._dflagStrings, __tmp__14 = stdgo._internal.debug.elf.Elf__dflag1Strings._dflag1Strings, __tmp__15 = stdgo._internal.debug.elf.Elf__ntypeStrings._ntypeStrings, __tmp__16 = stdgo._internal.debug.elf.Elf__stbStrings._stbStrings, __tmp__17 = stdgo._internal.debug.elf.Elf__sttStrings._sttStrings, __tmp__18 = stdgo._internal.debug.elf.Elf__stvStrings._stvStrings, __tmp__19 = stdgo._internal.debug.elf.Elf__rx86_64Strings._rx86_64Strings, __tmp__20 = stdgo._internal.debug.elf.Elf__raarch64Strings._raarch64Strings, __tmp__21 = stdgo._internal.debug.elf.Elf__ralphaStrings._ralphaStrings, __tmp__22 = stdgo._internal.debug.elf.Elf__rarmStrings._rarmStrings, __tmp__23 = stdgo._internal.debug.elf.Elf__r386Strings._r386Strings, __tmp__24 = stdgo._internal.debug.elf.Elf__rmipsStrings._rmipsStrings, __tmp__25 = stdgo._internal.debug.elf.Elf__rlarchStrings._rlarchStrings, __tmp__26 = stdgo._internal.debug.elf.Elf__rppcStrings._rppcStrings, __tmp__27 = stdgo._internal.debug.elf.Elf__rppc64Strings._rppc64Strings, __tmp__28 = stdgo._internal.debug.elf.Elf__rriscvStrings._rriscvStrings, __tmp__29 = stdgo._internal.debug.elf.Elf__r390Strings._r390Strings, __tmp__30 = stdgo._internal.debug.elf.Elf__rsparcStrings._rsparcStrings, __tmp__31 = stdgo._internal.debug.elf.Elf_errNoSymbols.errNoSymbols;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
