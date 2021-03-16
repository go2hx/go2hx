package stdgo.runtime;
#if hl
import hl.Gc;
#elseif cpp
import cpp.vm.Gc;
#elseif eval
import eval.vm.Gc;
#elseif java
import java.vm.Gc;
#end

import stdgo.StdGoTypes.GoUInt64;

class MemStats {
    public var alloc(get, null):GoUInt64;
    
    function get_alloc():GoUInt64 {
        return 0;   
    }
    public var totalAlloc(get, null):GoUInt64;
    
    function get_totalAlloc():GoUInt64 {
        return 0;   
    }
    public var sys(get, null):GoUInt64;
    
    function get_sys():GoUInt64 {
        return 0;   
    }
    public var mallocs(get, null):GoUInt64;
    
    function get_mallocs():GoUInt64 {
        return 0;   
    }

    public var frees(get, null):GoUInt64;
    
    function get_frees():GoUInt64 {
        return 0;   
    }

    public var heapAlloc(get, null):GoUInt64;
    
    function get_heapAlloc():GoUInt64 {
        return 0;   
    }

    public var heapSys(get, null):GoUInt64;
    
    function get_heapSys():GoUInt64 {
        
        return 0;   
    }
}