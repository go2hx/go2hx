package stdgo._internal.go.internal.gccgoimporter;
function _elfFromAr(_member:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>):{ var _0 : stdgo._internal.io.Io_readseeker.ReadSeeker; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.debug.elf.Elf_newfile.newFile(stdgo.Go.asInterface(_member)), _ef:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L120"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L121"
            return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : _err };
        };
        var _sec = _ef.section((".go_export" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L124"
        if (({
            final value = _sec;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L125"
            return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/ar.go#L127"
        return { _0 : _sec.open(), _1 : (null : stdgo.Error) };
    }
