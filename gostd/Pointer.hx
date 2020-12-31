package tink.core;

abstract Ref<T>(haxe.ds.Vector<T>) {
  public var _value(get, set):T;
  
  inline function new() this = new haxe.ds.Vector(1);
  
  @:to inline function get__value():T return this[0];
  inline function set__value(param:T) return this[0] = param;
  
  public function toString():String return '@[' + Std.string(_value)+']';
  
  @:noUsing @:from static inline public function to<A>(v:A):Ref<A> {
    var ret = new Ref();
    ret._value = v;
    return ret;
  }
}