package stdgo;
import haxe.rtti.Meta;
import haxe.ds.Vector;
import haxe.Rest;

@:forward 
abstract GoArray<T>(ArrayData<T>) {
    public inline function new() {
        trace("length: " + Meta.getType(ArrayData).length);
        var length = 10;
        this = new ArrayData(length,length);
    }
    @:op([]) inline function get(index:Int):T {
        return this.vector[index];
    }
    @:op([]) inline function set(index:Int,value:T):T {
        return this.vector[index] = value;
    }
}


@:generic
class ArrayData<T> {
    public var vector:Vector<T>;
    public var cap:Int = 0;
    public var length:Int = 0;
    public function new(length:Int,cap:Int=0) {
        this.length = length;
        if (cap == 0)
            setCap();
        vector = new Vector<T>(cap);
    }
    private function setCap() {
        this.cap = length > 1000 ? Std.int(length * 1.2) : length * 2;
    }
    public function resize(increase:Int):ArrayData<T> {
        length += increase;
        if (cap > length)
            return this;
        setCap();
        var tmp = new Vector<T>(cap);
        Vector.blit(vector,0,tmp,0,vector.length);
        vector = tmp;
        return this;
    }
    public function toArray():Array<T> {
        return vector.toArray();
    }
    public function toVector():Vector<T> {
        return vector;
    }
    public function iterator() {
        return vector.toArray().iterator();
    }
    public function toString() {
        return vector.toArray().toString();
    }
}