package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function heapsort(_data:stdgo._internal.sort.Sort_Interface.Interface):Void {
        stdgo._internal.sort.Sort__heapSort._heapSort(_data, (0 : stdgo.GoInt), _data.len());
    }
