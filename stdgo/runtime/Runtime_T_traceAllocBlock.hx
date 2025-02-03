package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_traceAllocBlock_static_extension) abstract T_traceAllocBlock(stdgo._internal.runtime.Runtime_T_traceAllocBlock.T_traceAllocBlock) from stdgo._internal.runtime.Runtime_T_traceAllocBlock.T_traceAllocBlock to stdgo._internal.runtime.Runtime_T_traceAllocBlock.T_traceAllocBlock {
    public function new() this = new stdgo._internal.runtime.Runtime_T_traceAllocBlock.T_traceAllocBlock();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
