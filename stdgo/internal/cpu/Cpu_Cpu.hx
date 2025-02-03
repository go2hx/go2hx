package stdgo.internal.cpu;
/**
    Package cpu implements processor feature detection
    used by the Go standard library.
**/
class Cpu {
    /**
        Initialize examines the processor and sets the relevant variables above.
        This is called by the runtime package early in program initialization,
        before normal init functions are run. env is set by runtime if the OS supports
        cpu feature options in GODEBUG.
    **/
    static public inline function initialize(_env:String):Void {
        final _env = (_env : stdgo.GoString);
        stdgo._internal.internal.cpu.Cpu_initialize.initialize(_env);
    }
    /**
        Name returns the CPU name given by the vendor
        if it can be read directly from memory or by CPU instructions.
        If the CPU name can not be determined an empty string is returned.
        
        Implementations that use the Operating System (e.g. sysctl or /sys/)
        to gather CPU information for display should be placed in internal/sysinfo.
    **/
    static public inline function name():String {
        return stdgo._internal.internal.cpu.Cpu_name.name();
    }
}
