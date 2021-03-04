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

import stdgo.StdTypes.UInt64;

class MemStats {
    public var alloc(get, null):UInt64;
    
    function get_alloc():UInt64 {
        return 0;   
    }
    public var totalAlloc(get, null):UInt64;
    
    function get_totalAlloc():UInt64 {
        return 0;   
    }
    public var sys(get, null):UInt64;
    
    function get_sys():UInt64 {
        return 0;   
    }
    public var mallocs(get, null):UInt64;
    
    function get_mallocs():UInt64 {
        return 0;   
    }

    public var frees(get, null):UInt64;
    
    function get_frees():UInt64 {
        return 0;   
    }

    public var heapAlloc(get, null):UInt64;
    
    function get_heapAlloc():UInt64 {
        return 0;   
    }

    public var heapSys(get, null):UInt64;
    
    function get_heapSys():UInt64 {
        
        return 0;   
    }
}