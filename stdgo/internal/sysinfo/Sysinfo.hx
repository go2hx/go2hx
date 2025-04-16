package stdgo.internal.sysinfo;
var cPU(get, set) : stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo.T_cpuInfo;
private function get_cPU():stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo.T_cpuInfo return stdgo._internal.internal.sysinfo.Sysinfo_cpu.cPU;
private function set_cPU(v:stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo.T_cpuInfo):stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo.T_cpuInfo {
        stdgo._internal.internal.sysinfo.Sysinfo_cpu.cPU = v;
        return v;
    }
/**
    * Package sysinfo implements high level hardware information gathering
    * that can be used for debugging or information purposes.
**/
class Sysinfo {

}
